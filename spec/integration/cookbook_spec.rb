require 'spec_helper'

RSpec.describe 'sprout-osx-settings' do
  it 'can succesfully run' do
    expect(system('soloist')).to eq(true)
  end
end
