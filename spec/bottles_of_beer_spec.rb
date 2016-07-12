require 'spec_helper'
require 'bottles_of_beer'


describe '#bottles_of_beer' do
  before do
    allow($stdout).to receive(:puts)
  end


  it 'takes a number as input' do
    expect { bottles_of_beer(3) }.to_not raise_error
  end


  it 'throws an ArgumentError if the parameter is not a number' do
    expect { bottles_of_beer('asdf') }.to raise_error(ArgumentError)
  end


  it 'outputs a song when given a number above 0' do
    expect($stdout).to receive(:puts).at_least(1).times
    bottles_of_beer(1)
  end


  it 'does nothing when given 0' do
    expect($stdout).to_not receive(:puts)
    bottles_of_beer(0)
  end


  it 'does nothing when given a number below 0' do
    expect($stdout).to_not receive(:puts)
    bottles_of_beer(-1)
  end
end


describe 'Array#dive' do
  it 'makes a cool recursive array with depth' do
    expect([].dive(6)).to eq([[[[[[[]]]]]]])
  end
end






