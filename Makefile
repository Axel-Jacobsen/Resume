.PHONY: build
build:
	@lualatex *.tex


# -f so rm doesn't report missing files
.PHONY: clean
clean:
	@rm -f *.aux *.log *.out *.toc
