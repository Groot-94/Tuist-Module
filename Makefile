.PHONY: generate clean open install help

help:
	@echo "Tuist Module Makefile"
	@echo ""
	@echo "Available commands:"
	@echo "  make generate  - Install dependencies and generate Xcode project (without opening)"
	@echo "  make install   - Install Tuist dependencies"
	@echo "  make clean     - Clean generated files"
	@echo "  make open      - Open workspace in Xcode"

generate: install
	@echo "Generating Xcode project..."
	@tuist generate --no-open
	@echo "Project generated successfully!"

install:
	@echo "Installing Tuist dependencies..."
	@tuist install

clean:
	@echo "Cleaning generated files..."
	@tuist clean
	@echo "Clean completed!"

open:
	@echo "Opening workspace in Xcode..."
	@open TuistModule.xcworkspace
