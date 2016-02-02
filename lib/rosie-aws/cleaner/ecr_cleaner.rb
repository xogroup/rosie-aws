require "rosie-aws/version"
require "rosie-aws"

module RosieAWS
  module Cleaner
    module ECRImages
      def self.delete_unused_images(repo_name)
        ecr = Aws::ECR::Client.new
        empty_images = ecr.list_images({repository_name: repo_name})
          .image_ids
          .select{|x| x.image_tag.nil?}

        puts "Deleting untagged images in ECR..."
        ecr.batch_delete_image({
          repository_name: repo_name,
          image_ids: empty_images
        }) unless empty_images.empty?
      end
    end
  end
end
