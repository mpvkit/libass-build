.PHONY: help build clean

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  build [arguments]     Build the project for iOS and macOS"
	@echo "                        Arguments:"
	@echo "                            platforms=ios,macos        Only build specified platforms (ios,macos,tvos,tvsimulator,isimulator,maccatalyst)"
	@echo "                            enable-split-platform      Enable split platform build (default: disabled)"
	@echo "  clean                 Clean the build artifacts"
	@echo "  help                  Display this help message"

build:
	swift run --build-path ./.build --package-path scripts build $(filter-out $@,$(MAKECMDGOALS)) $(MAKEFLAGS)
	
clean:
	@rm -rf ./.build
	@rm -rf ./dist
	@rm -rf ./*.log