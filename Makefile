.PHONY: software
software:
	@lualatex AJacobsenResume.tex
	@lualatex AJacobsenResume.tex
	@make clean

.PHONY: o
o:
	@make software
	@open AJacobsenResume.pdf

.PHONY: clean
clean:
	@# -f so rm doesn't report missing files
	@rm -f *.aux *.log *.out *.toc
