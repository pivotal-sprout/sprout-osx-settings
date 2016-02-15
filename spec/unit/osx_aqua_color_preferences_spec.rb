require 'unit/spec_helper'

describe 'sprout-osx-settings::osx_aqua_color_preferences' do
  let(:runner) { ChefSpec::SoloRunner.new }

  let(:global_domain) { '/Users/fauxhai/Library/Preferences/.GlobalPreferences' }

  it 'sets AppleAquaColorVariant to the default color' do
    graphite = 6
    runner.converge(described_recipe)
    expect(runner).to write_osx_defaults(global_domain, 'AppleAquaColorVariant').with(integer: graphite)
  end

  it 'allows the color to be configured' do
    blue = 1
    runner.node.set['sprout']['settings']['aqua_color'] = 'blue'
    runner.converge(described_recipe)
    expect(runner).to write_osx_defaults(global_domain, 'AppleAquaColorVariant').with(integer: blue)
  end
end