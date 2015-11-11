# This makefile compiles my story using LaTex

# VARS - Variables to be changed for reuse of my script
# The name of the RESUMEect
RESUME:=resume
# The name of the cover letter
COVER:=cover
# The extension for the content
OBJS:=tex
# The aux extensions
AUXS:=aux
# The chapters
CHAP:=contents/

# Configuration:
# The compiler
CC=pdflatex

# Rules
final:
	$(CC) $(RESUME).$(OBJS);
	$(CC) $(COVER).$(OBJS);
draft:
	$(CC) "\def\isdraft{1} \input{$(RESUME).$(OBJS)}";
	$(CC) "\def\isdraft{1} \input{$(COVER).$(OBJS)}";
clean:
