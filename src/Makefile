# Distributed under the terms of the GNU General Public License version 2
#  or any later version.


# ******************************************************************** #
# This is a makefile that builds the XFST Iñupiaq morphological parser #
# ******************************************************************** #



# Tools used when compiling the transducers

#XFST = fst -utf8
XFST = xfst #-utf8
LEXC = lexc #-utf8

ifeq (victorio.uit.no, $(shell hostname))
XFST = /opt/sami/xerox/c-fsm/ix86-linux2.6-gcc3.4/bin/fst -utf8
LEXC = /opt/sami/xerox/bin/lexc -utf8
endif

# The default compiler for Greenlandic is the commercial version fst.
# If you have xfst, the free version, go to the directory where you store
# xfst, and write the following command:
# ln -s xfst fst
# This will give a pointer from "fst" to xfst, and the transducers will compile.

# Directories:
scripts=$(GTHOME)/gt/script

# Source files

SRCS =  ipk-lex.txt \
	noun-ipk-lex.txt \
	noun-ipk-morph.txt \
	verb-ipk-lex.txt \
	abbr-ipk-lex.txt \
	verb-ipk-morph.txt \
	det-ipk-lex.txt \
	adv-ipk-lex.txt
##	acro-ipk-lex.txt \
##	punct-ipk-lex.txt prt-ipk-lex.txt num-ipk-lex.txt 

# No strict / sloppy distinction here
#ifeq ($(TARGET), strict)
#LEX = $(patsubst %,../int/str-%,$(SRCS))
#endif
#
#ifeq ($(TARGET), sloppy)
#LEX = $(SRCS)
#endif


# We have two targets, default and strict
# The latter is restrictive.

#all: $(TARGET)

#strict: iipk.fst
#sloppy: iipk.fst 


# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon ipk.save

iipk.fst: ../bin/iipk.fst
../bin/iipk.fst: ../bin/ipk.fst ../bin/abbr.txt ../bin/orth-ipk.fst #../bin/str-ipk.fst
	@echo
	@echo "*** Building the inverse iipk.fst ***"
	@echo
	@printf "load ../bin/ipk.save \n\
	invert net \n\
	save stack ../bin/iipk.fst \n\
	quit \n" > ../tmp/iipk-fst-script
	$(XFST) < ../tmp/iipk-fst-script
	@rm -f ../tmp/iipk-fst-script



# Here comes the part building the basic parser.
# **********************************************


# This goal is to build the final analyser. It depends on all the files.

ipk.fst: ../bin/ipk.fst
../bin/ipk.fst: ../bin/ipk.save ../bin/inituppercase.fst
	@echo
	@echo "*** Building ipk.fst ***" ;
	@echo
	@printf "read regex [[@\"../bin/ipk.save\"] .o. \
	[@\"../bin/inituppercase.fst\"]] ; \n\
	save stack ../bin/ipk.fst \n\
	quit \n" > ../tmp/ipk-fst-script
	$(XFST) < ../tmp/ipk-fst-script
	@rm -f ../tmp/ipk-fst-script



# Here we make the abbrevation file for our current preprocessor, 
# the perl-based preprocess (located in the script catalogue)

empty:=
comma:=,
space:=$(empty) $(empty)
ABBRSRCS=$(subst $(space),$(comma),$(SRCS))

abbr: ../bin/abbr.txt
../bin/abbr.txt: $(scripts)/abbr-extract \
				 $(scripts)/langTools/Util.pm \
				 $(SRCS)
	@echo
	@echo "*** Extracting abbreviations from abbr-ipk-lex.txt to abbr.txt ***" ;
	@echo
	@perl -I $(scripts) $(scripts)/abbr-extract \
		--output=$@ \
		--abbr_lex=abbr-ipk-lex.txt \
		--lex=$(ABBRSRCS)


# The second goal is to build the inituppercase.fst file
# This goal depends on inituppercase.regex

inituppercase.fst: ../bin/inituppercase.fst
../bin/inituppercase.fst: inituppercase.regex
	@echo
	@echo "*** Building inituppercase.fst ***" ;
	@echo
	@printf "read regex < inituppercase.regex \n\
	save stack ../bin/inituppercase.fst \n\
	quit \n" > ../tmp/inituppercase-script
	$(XFST) < ../tmp/inituppercase-script
	@rm -f ../tmp/inituppercase-script


ipk.save: ../bin/ipk.save
../bin/ipk.save: ../bin/xfst-ipk.bin ../bin/ipk-lex.save
	@echo
	@echo "*** Building the parser ipk.save ***"
	@echo
	@printf "read regex [[@\"../bin/ipk-lex.save\"] .o. \
	[@\"../bin/xfst-ipk.bin\"]] ; \n\
	save stack ../bin/ipk.save \n\
	quit \n" > ../tmp/ipk-save-script
	$(XFST) < ../tmp/ipk-save-script
	@rm -f ../tmp/ipk-save-script


# The first goal is to build ipk-lex.save
# This goal depends on a bunch of lexicon files

../tmp/ipk-lex-allinone.lexc: $(SRCS)
	cat ipk-lex.txt *-ipk-lex.txt *-ipk-morph.txt | sed 's/ \".*\" //g' > $@

ipk-lex.save: ../bin/ipk-lex.save
#../bin/ipk-lex.save: $(SRCS)
../bin/ipk-lex.save: ../tmp/ipk-lex-allinone.lexc
	@echo
	@echo "*** Building ipk-lex.save ***" ;
	@echo
#	printf "read lexc < $(SRCS) \n
	printf "read lexc < ../tmp/ipk-lex-allinone.lexc \n\
	save stack ../bin/ipk-lex.save \n\
	quit \n" > ../tmp/ipk-lex-save-script
	$(XFST) < ../tmp/ipk-lex-save-script
	@rm -f ../tmp/ipk-lex-save-script

# The old LEXC version
#ipk-lex.save: ../bin/ipk-lex.save
#../bin/ipk-lex.save: $(SRCS)
#	@echo
#	@echo "*** Building ipk-lex.save ***" ;
#	@echo
#	printf "compile-source $(SRCS) \n\
#	save-source ../bin/ipk-lex.save \n\
#	quit \n" > ../tmp/ipk-lex-save-script
#	$(LEXC) < ../tmp/ipk-lex-save-script
#	@rm -f ../tmp/ipk-lex-save-script


#ifeq ($(TARGET), strict)
#$(LEX): $(SRCS)
#	@echo
#	@echo "*** Making restrictive lexicon files ***"
#	@echo  
#	@grep -v 'SUB' $(patsubst ../int/str-%,%,$@) > $@
#endif

#ifeq ($(TARGET), sloppy)
#$(LEX): $(SRCS)
#endif

# Here we build xfst-ipk.bin, the morphophonological component.
# This goal depends on xfst-ipk.txt

../tmp/xfst-ipk.tmp: xfst-ipk.txt
	@echo
	@echo "*** cleaning $< for comments (foma compatibility) ***"
	@echo
	@sed 's/ \!.*$$/ /g' $< | grep -v '^!' | sed 's/$$/ /g' | grep -v 'echo' > $@

xfst-ipk.bin: ../bin/xfst-ipk.bin
../bin/xfst-ipk.bin: ../tmp/xfst-ipk.tmp
	@echo
	@echo "*** Building xfst-ipk.bin ***" ;
	@echo
	@printf "source ../tmp/xfst-ipk.tmp \n\
	save stack ../bin/xfst-ipk.bin \n\
	quit \n" > ../tmp/xfst-ipk-script
	$(XFST) < ../tmp/xfst-ipk-script
	@rm -f ../tmp/xfst-ipk-script


# Here we build a dictionary-to-UTF-8 transducer.

ikpfont.fst: ../bin/orth-ipk.fst
../bin/orth-ipk.fst: ../script/orth-ipk.xfst
	@echo
	@echo "*** Building orth-ipk.fst ***" ;
	@echo
	@printf "source ../script/orth-ipk.xfst  \n\
	invert net \n\
	save stack ../bin/orth-ipk.fst \n\
	quit \n" > ../tmp/orth-ipk-fst-script
	$(XFST) < ../tmp/orth-ipk-fst-script
	@rm -f ../tmp/orth-ipk-fst-script


clean:
	@rm -f ../bin/*.bin ../bin/*.fst ../bin/*.save ../tmp/*
