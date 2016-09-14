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
			@responses.respond res, ""
			

		getTask: (req, res, params) ->
			envi = process.env.DEVO_GROUPNAME
			resultat =
                          status: "success" 
                          data: groupname: envi
			jSonText = JSON.stringify(resultat)
			if params.identifier == "Argon"
				@responses.respond res, jSonText	
			else
				@responses.respond res, ""

	helpers: 
		isValidID: (id) ->
			id.match /^[0-9a-fA-F]{24}$/

module.exports = exports = TasksController

