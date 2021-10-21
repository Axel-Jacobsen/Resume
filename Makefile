.PHONY: build
build:
	@lualatex "\def\general{} \input{AJacobsenResume.tex}"

.PHONY: software
software:
	@lualatex "\def\software{} \input{AJacobsenResume.tex}"

.PHONY: clean
clean:
	@# -f so rm doesn't report missing files
	@rm -f *.aux *.log *.out *.toc
