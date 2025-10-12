require 'json'

# load data.json
class ConfigData
  CONFIG_PATH = File.expand_path('../../../config/data.json', __FILE__)

  def self.load
    JSON.parse(File.read(CONFIG_PATH))
  end
end
