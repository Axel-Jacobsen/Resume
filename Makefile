.PHONY: build
build:
	@lualatex *.tex

.PHONY: clean
clean:
	@ # -f so rm doesn't report missing files
	@rm -f *.aux *.log *.out *.toc
