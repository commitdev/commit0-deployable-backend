# The following parameters are required:
# - AWS_DEFAULT_REGION
# - AWS_ACCESS_KEY
# - AWS_SECRET_ACCESS_KEY
# - GITHUB_ORG
# - GITHUB_REPO
# - CIRCLECI_TOKEN
#

run:
	@echo "Set CIRCLECI environment variables\n"
	curl -X POST --header "Content-Type: application/json" -d '{"name":"AWS_DEFAULT_REGION", "value":"${AWS_DEFAULT_REGION}"}' https://circleci.com/api/v1.1/project/github/${GITHUB_ORG}/${GITHUB_REPO}/envvar?circle-token=${CIRCLECI_TOKEN}
	curl -X POST --header "Content-Type: application/json" -d '{"name":"AWS_ACCESS_KEY", "value":"${AWS_ACCESS_KEY}"}' https://circleci.com/api/v1.1/project/github/${GITHUB_ORG}/${GITHUB_REPO}/envvar?circle-token=${CIRCLECI_TOKEN}
	curl -X POST --header "Content-Type: application/json" -d '{"name":"AWS_SECRET_ACCESS_KEY", "value":"${AWS_SECRET_ACCESS_KEY}"}' https://circleci.com/api/v1.1/project/github/${GITHUB_ORG}/${GITHUB_REPO}/envvar?circle-token=${CIRCLECI_TOKEN}
	@echo "\nFollow CIRCLECI project"
	curl -X POST https://circleci.com/api/v1.1/project/github/${GITHUB_ORG}/${GITHUB_REPO}/follow?circle-token=${CIRCLECI_TOKEN}
	@echo "\nDone"

