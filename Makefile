.PHONY: *

docs:
	rm -rf src || true
	speakeasy generate docs --schema /github/workspace/repo/openapi.yaml --out ./ --langs go,typescript,python --compile

build:
	pnpm run build

run-server:
	$(MAKE) build
	go run server.go