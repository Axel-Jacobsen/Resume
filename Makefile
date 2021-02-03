.PHONY: build
build:
	@lualatex *.tex

.PHONY: clean
clean:
	@rm *.aux *.log *.out *.toc
