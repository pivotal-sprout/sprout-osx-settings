execute 'Enabling Screen Sharing for All Users' do
  kickstart_bin = '/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart'
  kickstart_args = '-activate -configure -access -off -restart -agent -privs -all -allowAccessFor -allUsers'
  command "#{kickstart_bin} #{kickstart_args}"
end

ruby_block 'test to see if screen-sharing is enabled' do
  block do
    require 'socket'
    vnc_port = 5900
    begin
      s = TCPSocket.open('localhost', vnc_port)
    rescue => e
      raise "Couldn't connect to screen-sharing: " << e
    end
    s.close
  end
end
