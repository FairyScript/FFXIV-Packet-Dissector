const fs = require('fs')
const path = require('path')
const readCsv = require('./read-csv')

const dbRoot = '../../library/5.0_all/'
const output = '../src/'
const langs = ['chs', 'en', 'ja', 'de', 'fr']

const dbStore = {}
const db = function (name) {
  if (!dbStore[name]) {
    dbStore[name] = readCsv(fs.readFileSync(path.join(dbRoot, name + '.csv'), 'utf-8'))
    dbStore[name].findById = function (id) {
      return this.find(item => item['#'] == id)
    }
    dbStore[name].kvmap = function () {
      return this.map(item => ({ key: item['#'], value: item.Name }))
    }
  }

  return dbStore[name]
}

const generateLuaTable = function (output) {
  return `-- This file is generated by tools/db2lua.js
  
return {${Object.keys(output).map(key => `
  ${key} = {${output[key].filter(({ key, value }) => key && value).map(({ key, value }) => `
    [${key}] = '${value.replace(/'/g, '\\\'').replace(/\r/g, '').replace(/\n/g, '\\n')}'`).join(',')}
  }`).join(',')}
}`
}

langs.forEach(lang => {
  const obj = {}

  obj.ContentType = db(`ContentType.${lang}`).kvmap()
  obj.ContentRoulette = db(`ContentRoulette.${lang}`).kvmap()
  obj.Fate = db(`Fate.${lang}`).kvmap()
  obj.InstanceContent = db(`InstanceContent.${lang}`).kvmap()
  obj.Item = db(`Item.${lang}`).kvmap()
  obj.TerritoryType = db('TerritoryType').filter(({ PlaceName }) => +PlaceName).map(item => {
    return {
      key: item['#'],
      value: db(`PlaceName.${lang}`).findById(item.PlaceName).Name
    }
  })
  obj.World = db('World').kvmap()

  fs.writeFileSync(`${output}ffxiv_db_${lang}.lua`, generateLuaTable(obj))
})
