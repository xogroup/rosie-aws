require "rosie/aws/version"
require "rosie/aws"

module Rosie
  module Aws
    module Cleaner
      module BeanstalkApplicationVersion
        def delete_unused_versions
          app_name = "SiteSearch"

          eb = Aws::ElasticBeanstalk::Client.new
          versions_in_use = eb.describe_environments({application_name: app_name}).environments.collect{|x| x.version_label}

          versions_to_delete = eb.describe_application_versions({application_name: app_name}).application_versions.select{|x| !versions_in_use.include?(x.version_label)}

          puts "Deleting unused application versions"
          versions_to_delete.each do |x|
            eb.delete_application_version({
              application_name: app_name,
              version_label: x.version_label
            })
          end
        end
      end
    end
  end
end
