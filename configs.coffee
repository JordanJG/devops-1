# If no env, set to local
if not process.env?.application_env
	process.env.application_env = "local"

configs = {
	name: "SimpleToDo"
}


switch process.env.application_env
	when "local"
		configs.mongoURL = "mongodb://localhost/simpledb"
		configs.host = "0.0.0.0"
		configs.port = "80"
		configs.url = "http://0.0.0.0:80"

module.exports = exports = configs
