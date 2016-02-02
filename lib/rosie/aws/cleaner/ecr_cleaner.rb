require "rosie/aws/version"
require "rosie/aws"

module Rosie
  module Aws
    module Cleaner
      module EcrImages
        def delete_unused_images
          ecr = Aws::ECR::Client.new
          empty_images = ecr.list_images({repository_name: "site_search"})
            .image_ids
            .select{|x| x.image_tag.nil?}

          puts "Deleting untagged images in ECR..."
          ecr.batch_delete_image({
            repository_name: "site_search",
            image_ids: empty_images
          }) unless empty_images.empty?
        end
      end
    end
  end
end
