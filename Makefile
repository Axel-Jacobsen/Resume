.PHONY: build
build:
	@lualatex "\def\general{} \input{AJacobsenResume.tex}"


.PHONY: software
software:
	@lualatex "\def\software{} \input{AJacobsenResume.tex}"

.PHONY: robotics
robotics:
	@lualatex "\def\robotics{} \input{AJacobsenResume.tex}"


# -f so rm doesn't report missing files
.PHONY: clean
clean:
	@rm -f *.aux *.log *.out *.toc
