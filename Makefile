FILE=presentation.tex
#Use pdflatex to compile
COMP=pdflatex
#Handout option
OPT='\PassOptionsToClass{handout}{beamer} \input{$(FILE)}'
#Handout pdf name option
JBNME=-jobname=presentation_handout

all:
	$(COMP) $(FILE)
	$(COMP) $(JBNME) $(OPT)

clean:
	rm *.pdf
