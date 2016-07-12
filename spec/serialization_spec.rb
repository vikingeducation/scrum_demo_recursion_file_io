require 'spec_helper'
require 'my_serializer'
require 'my_deserializer'
require 'alien'

describe 'Serialization Classes' do
  let(:alien_hash) { Alien.new.to_h }


  describe MySerializer do

    let(:alien_instance) do
      Alien.new
    end

    let(:my_serializer) { MySerializer.new }


    it 'serializes a hash to yaml' do
      expect(my_serializer.yamlize(alien_hash)).to eq(nil)
    end


    it 'serializes a hash to json' do
      expect(my_serializer.jsonify(alien_hash)).to eq(nil)
    end


    it 'serializes an object instance to yaml' do
      expect(my_serializer.yamlize(alien_instance)).to eq(nil)
    end


    it 'serializes an object instance to json' do
      # expect(my_serializer.jsonify(alien_instance)).to eq(nil)
      expect(my_serializer.jsonify(alien_instance, [:x, :y, :name])).to eq(nil)
    end
  end


  describe MyDeserializer do
    let(:yaml) { "---\n:x: 0\n:y: 0\n:name: Alien\n" }
    let(:json) { "{\"x\":0,\"y\":0,\"name\":\"Alien\"}" }
    let(:my_deserializer) { MyDeserializer.new }


    it 'deserializes yaml into a hash' do
      expect(my_deserializer.unyamlize(yaml)).to eq(alien_hash)
    end


    it 'deserializes json into a hash' do
      expect(my_deserializer.unjsonify(json)).to eq(alien_hash)

      # Uncomment to map to JSON friendly hash
      # mapped = alien_hash.map { |k, v| [k.to_s, v] }.to_h
      # expect(my_deserializer.unjsonify(json)).to eq(mapped)
    end
  end
end




