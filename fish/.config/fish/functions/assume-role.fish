function assume-role --description 'Assume role and set environment variables' --argument profile
    aws --profile $profile configure export-credentials \
        | jq -cr '["set -x AWS_ACCESS_KEY_ID \(.AccessKeyId)", "set -x AWS_SECRET_ACCESS_KEY \(.SecretAccessKey)", "set -x AWS_SESSION_TOKEN \(.SessionToken)"][]'
end
