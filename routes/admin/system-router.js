const path = require('path')
const express = require('express')
const router = express.Router()
const { error } = require('../../modules/util')

router.get('/', (req, res, next) => {
  res.send('/admin/system')
});

router.post('/', (req, res, next) => {
  res.send('/admin/system:POST')
});

router.put('/', (req, res, next) => {
  res.send('/admin/system:PUT')
});

router.delete('/', (req, res, next) => {
  res.send('/admin/system:DELETE')
});


module.exports = { name: '/system', router };