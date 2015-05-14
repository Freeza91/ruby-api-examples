YML_CONFIG = YAML::load_file (File.expand_path('../../database.yml', __FILE__))
DB_CONFIG = YML_CONFIG[ENV["RACK_ENV"]] # must be divied, ca

ActiveRecord::Base.establish_connection DB_CONFIG
ActiveSupport.on_load :active_record do
  self.include_root_in_json = false
  self.default_timezone = :local
  self.time_zone_aware_attributes = false
end