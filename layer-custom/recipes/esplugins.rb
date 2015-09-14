script "install_plugin_es_head" do
	interpreter "bash"
	user "root"
	cwd "#{node.elasticsearch[:dir]}/elasticsearch-#{node.elasticsearch[:version]}/bin/"
	code <<-EOH
  	plugin -install mobz/elasticsearch-head
  	EOH
	not_if { File.exist?("#{node.elasticsearch[:dir]}/elasticsearch-#{node.elasticsearch[:version]}/plugins/head") }
end

script "install_plugin_hq" do
	interpreter "bash"
	user "root"
	cwd "#{node.elasticsearch[:dir]}/elasticsearch-#{node.elasticsearch[:version]}/bin/"
	code <<-EOH
  	plugin -install royrusso/elasticsearch-HQ
  	EOH
	not_if { File.exist?("#{node.elasticsearch[:dir]}/elasticsearch-#{node.elasticsearch[:version]}/plugins/HQ") }
end

script "install_plugin_mapper-attachments" do
	interpreter "bash"
	user "root"
	cwd "#{node.elasticsearch[:dir]}/elasticsearch-#{node.elasticsearch[:version]}/bin/"
	code <<-EOH
  	plugin -install elasticsearch/elasticsearch-mapper-attachments/2.7.0
  	EOH
	not_if { File.exist?("#{node.elasticsearch[:dir]}/elasticsearch-#{node.elasticsearch[:version]}/plugins/mapper-attachments") }
end

#notifies :restart, 'service[elasticsearch]' unless node.elasticsearch[:skip_restart]
