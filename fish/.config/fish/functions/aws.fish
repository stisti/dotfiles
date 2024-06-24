function aws --wraps 'aws' --description 'aws cli from docker image'
  if tty -s <&1;
    docker run --rm -it -v ~/.aws:/root/.aws -v (pwd):/aws public.ecr.aws/aws-cli/aws-cli:latest $argv
  else
    docker run --rm -i -v ~/.aws:/root/.aws -v (pwd):/aws public.ecr.aws/aws-cli/aws-cli:latest $argv
  end
end
