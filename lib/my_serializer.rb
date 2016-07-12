require 'yaml'
require 'json'


class MySerializer
  def yamlize(object)
    YAML.dump(object)
  end


  def jsonify(object, attributes=[])
    # JSON.dump(object)

    # Uncomment for JSON object instance serialization

    if object.is_a?(Hash)
      JSON.dump(object)
    else
      serialized = {}
      attributes.each do |attribute|
        serialized[attribute] = object.send(attribute)
      end
      JSON.dump(serialized)
    end
  end
end






