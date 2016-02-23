require "rosie-aws"
require "rosie-aws/cleaner/ecr_cleaner"
require "rosie-aws/cleaner/beanstalk_application_version"
require "thor"

module RosieAWS
  class CLI < Thor
    desc "clean_ecr_images REPO_NAME", "Deletes all untagged docker images in your ECR"
    def clean_ecr_images(repo_name)
      init_region
      RosieAWS::Cleaner::ECRImages.delete_unused_images(repo_name)
    end

    desc "clean_beanstalk_application_versions APPLICATION_NAME", "Deletes all undeployed elastic beanstalk application versions"
    def clean_beanstalk_application_versions(app_name)
      init_region
      RosieAWS::Cleaner::BeanstalkApplicationVersion.delete_unused_versions(app_name)
    end

    private
    def init_region
      Aws.config.update(AWSConfig.default.config_hash)
    end
  end
end
