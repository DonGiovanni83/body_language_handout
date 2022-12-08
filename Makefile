default: all

all:build 

build:
	@latexmk -lualatex -pvc handout.tex
serve:
	@latexmk -lualatex -pvc handout.tex

%:
	@:

clean:
	@latexmk -c

mrproper:
	@find . -iname '*~' -exec rm {} \;
	@latexmk -C

distclean:
	@rm -rf _build
