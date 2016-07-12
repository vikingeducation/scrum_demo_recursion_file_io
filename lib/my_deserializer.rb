require 'yaml'
require 'json'


class MyDeserializer
  def unyamlize(object)
    YAML.load(object)
  end


  def unjsonify(object)
    JSON.parse(object)
  end
end




