.PHONY: software
software:
	@lualatex AJacobsenResume.tex
	@lualatex AJacobsenResume.tex
	@make clean

.PHONY: clean
clean:
	@# -f so rm doesn't report missing files
	@rm -f *.aux *.log *.out *.toc
