remote_file "#{Chef::Config[:file_cache_path]}/jre-8u411-linux-x64.tar.gz" do
  source "http://download.oracle.com/otn/java/jdk/8u411/jre-8u411-linux-x64.tar.gz"
      headers({"Cookie" => "oraclelicense=accept-securebackup-cookie"})
end
