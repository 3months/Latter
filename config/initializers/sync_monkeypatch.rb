module Sync
  class << self
    # Loads the configuration from a given YAML file and environment (such as production)
    def load_config(filename, environment)
      reset_config
      yaml = YAML.load(ERB.new(File.read(filename)).result)[environment.to_s]
      raise ArgumentError, "The #{environment} environment does not exist in #{filename}" if yaml.nil?
      yaml.each{|key, value| config[key.to_sym] = value }
      setup_client
    end
  end
end