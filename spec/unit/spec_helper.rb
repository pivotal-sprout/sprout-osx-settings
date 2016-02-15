require 'spec_helper'
require 'chefspec'
require 'chefspec/librarian'

RSpec.configure do |config|
  config.platform = 'mac_os_x'
  config.version = '10.11.1'
  # see https://github.com/customink/fauxhai/tree/master/lib/fauxhai/platforms/mac_os_x
  config.before { stub_const('ENV', 'SUDO_USER' => 'fauxhai') }
  config.after(:suite)  { FileUtils.rm_r('.librarian') }
end