# Rosie::AWS

![Rosie](https://github.com/xogroup/rosie-aws/blob/master/rosie.jpg "Rosie")

Your easy to use tool to help you clean up your AWS resources

## Installation

    gem install rosie-aws

## Setup
  The ```aws-sdk``` requires you to have set up your credentials and region using the AWS cli (https://aws.amazon.com/cli/) and running

    aws configure

  It wil use the credentials set in your ```~/.aws/config``` and ```~/.aws/credentials```.

## Usage

Running ```rosie``` will give you your options:

```
⇒  rosie
Commands:
  rosie clean_beanstalk_application_versions APPLICATION_NAME  # Deletes all undeployed elastic beanstalk application versions
  rosie clean_ecr_images REPO_NAME                             # Deletes all untagged docker images in your ECR
  rosie help [COMMAND]                                         # Describe available commands or one specific command
```
## Development

To install this gem onto your local machine, run `rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rosie-aws. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
