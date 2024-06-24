function assume-role --description 'Assume role and set environment variables' --argument role_arn
 aws sts assume-role --role-arn $role_arn --role-session-name fish_assume-role --query "Credentials.[AccessKeyId,SecretAccessKey,SessionToken]" --output text | read -x AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN;
end
