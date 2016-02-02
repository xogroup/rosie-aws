require "rosie/aws/version"
require 'aws-sdk'

module Rosie
  module Aws
    Aws.config.update({
      region: 'us-east-1'
    })
  end
end
