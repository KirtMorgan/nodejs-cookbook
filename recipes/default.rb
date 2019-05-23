#
# Cookbook:: nodejs8
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
apt_update 'update' do
  action :update
end

apt_repository "nodejs" do
  uri "https://deb.nodesource.com/node_8.x"
  distribution node["lsb"]["codename"]
  components ["main"]
  key "https://deb.nodesource.com/gpgkey/nodesource.gpg.key"
end

package 'nodejs' do
  action [:install, :upgrade]
end
