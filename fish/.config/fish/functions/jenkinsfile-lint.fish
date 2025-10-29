function jenkinsfile_lint
    set -l jenkinsfile $argv[1]
    curl -X POST --user "$JENKINS_AUTH" -F "jenkinsfile=<$jenkinsfile" "$JENKINS_URL/pipeline-model-converter/validate"
end
