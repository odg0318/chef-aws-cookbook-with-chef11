aws_lib_name = 'aws-libs.tar.gz'

cookbook_file "#{Chef::Config[:file_cache_path]}/#{aws_lib_name}" do
  source aws_lib_name
  action :nothing
end.run_action(:create)

execute 'extract aws libraries' do
  command "tar xvfz #{Chef::Config[:file_cache_path]}/#{aws_lib_name} -C #{Chef::Config[:file_cache_path]}"
end
