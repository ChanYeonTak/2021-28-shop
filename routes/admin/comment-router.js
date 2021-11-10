const path = require('path')
const express = require('express')
const router = express.Router()
const queries = require('../../middlewares/query-mw')
const createError = require('http-errors')
const { BoardComment } = require('../../models')

router.post('/', queries('body'), async (req, res, next) => {
	try {
    await BoardComment.create({ ...req.body });
    res.redirect('/admin/board/'+req.body.board_id+'?'+res.locals.goQuery);
	}
	catch(err) {
		next(createError(err))
	}
})

module.exports = { router, name: '/comment' }