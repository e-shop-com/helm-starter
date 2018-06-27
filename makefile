.PHONY: test
.SILENT:

test:
	@ helm lint .
	@ helm template . | grep -o '^[^#]*' | uniq | kubeval
