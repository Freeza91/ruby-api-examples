db_conf = YAML.load_file(File.expand_path('../config/database.yml', __FILE__))
ActiveRecord::Tasks::DatabaseTasks.database_configuration = db_conf