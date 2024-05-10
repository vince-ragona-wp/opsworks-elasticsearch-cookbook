#default['java']['jdk']['8']['x86_64']['url'] = 'http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.tar.gz'
#default['java']['jdk']['8']['x86_64']['checksum'] = '1845567095bfbfebd42ed0d09397939796d05456290fb20a83c476ba09f991d3'

include_recipe 'java'

#adding the below for the JDK8 installation
java_ark "oracle-jdk8-x86_64" do
  url node['java']['jdk']['8']['x86_64']['url']
  checksum node['java']['jdk']['8']['x86_64']['checksum']
  app_home '/usr/lib/jvm/oracle-jdk8-x86_64'
  action :install
end
