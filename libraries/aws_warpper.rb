module Opscode
  module Aws
    def require_aws_sdk
      $:.unshift *Dir[File.expand_path("#{Chef::Config[:file_cache_path]}/gems/**/lib", __FILE__)]
      require 'aws-sdk-v2'
    end
  end
end
