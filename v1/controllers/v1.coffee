TasksController =
	options: {}
	routes:
		getAllTasks: 
			method: "GET"
			path: []

		getTask:
			method: "GET"
			path: ["*identifier"]

	
	actions:
		getAllTasks: (req, res, params) ->
			envi = process.env.DEVO_GROUPNAME
			@responses.respond res, envi
			

		getTask: (req, res, params) ->
			envi = process.env.DEVO_GROUPNAME
			@responses.respond res, envi	

	helpers: 
		isValidID: (id) ->
			id.match /^[0-9a-fA-F]{24}$/

module.exports = exports = TasksController
