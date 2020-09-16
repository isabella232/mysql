# Before that, we use "native" versions

unless node['mysql_test'].nil?
  case node['mysql_test']['version']
  when '5.6'
    include_recipe 'yum-mysql-community::mysql56'
  when '5.7'
    include_recipe 'yum-mysql-community::mysql57'
  end
end
