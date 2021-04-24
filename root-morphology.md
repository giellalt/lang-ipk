
# Multichar\_Symbols and *Root* lexicon for Iñupiaq

## Multichar\_Symbols


### Grammatical tags

 * +N +V +Part +Prop +Pron   POS
 * +Sg +Du +Pl			      Number
 * +1Sg +2Sg +3Sg +4Sg	      Intransitive number Sg
 * +1Du +2Du +3Du +4Du	      Intransitive number Du
 * +1Pl +2Pl +3Pl +4Pl	      Intransitive number Pl
 * +1SgO +2SgO +3SgO +4SgO   Objective conjugation
 * +1DuO +2DuO +3DuO +4DuO   Objective conjugation
 * +1PlO +2PlO +3PlO +4PlO    Objective conjugation
 * +Symbol = independent symbols in the text stream, like £, €, ©
 * +Abs +Rel +Trm +Loc +Abl +Mod  Cases
 * +Prs +Prt                        Tenses
 * +Ind +Int +Cau +ConReal +ConUnreal  Modes NB! No Imp
 * +Arch                           tags for archaic forms. In this pilot just used to indicate twin forms


4th person still missing in the transitive conjugation
ľ !digraphs plus ľ for voiceless palatalized l
Remember to check this letter, it was problematic on Linux

### Boundary symbols
## Symbols that need to be escaped on the lower side (towards twolc):
 * **»7**:  Literal »
 * **«7**:  Literal «
  %[%>%]  - Literal >
  %[%<%]  - Literal <
 %>    morphemeborder

### Derivational affixes
 * +LLATU +LLATU=NIAQ +NIAQ +NIAQ=ŊIT +ŊIT +SAAĠE +SAAĠE=ŊIT +TEQ  verb elaborating
 +IT +QAQ             
 * +VIK                  nominalizers
 * +LU +GUUQ +UNA        clitics


*Morphophonological dummy symbols examples:*
 * %^TRUNC      truncation dummy
 * %^CVCTRUNC   dummy for very long truncations
 * %^VCTRUNC    dummy for long truncation
 * %^FRIC       dummy for fricativizing stem-final consonants. Needed to avoid a general rule that also would affect unwantedly as in *aaġagu for aaqagu.  The alternative would have been to postulate truncating flexives with a fricative first consonant (*aiviq -q +ġit) but that is hokus pokus
 * %^EBLOCK        dummy to block schwa going to a (aŋutik not *aŋuttak)
 * %^C            dummy for intermediate gemination
 * %^DEFRIC       dummy when fricatives go stops (amaġuq -> amaqquk) as apposed to %C in niġi+VIK -> niġġivik
 * %^SCHWADEL     !dummy with derivatives truncating semi-final schwa

## Flag diacritics

These flag diacritics are there tounify IV/TV verbs and their person merophology across the derivational morphology.

 * @P.IV.ON@  Flag - sets value for transitivity to IV
 * @P.TV.ON@  Flag - sets value for transitivity to TV
 * @R.IV.ON@  Flag - reset value for transitivity to IV
 * @R.TV.ON@  Flag - reset value for transitivity to TV
 * @D.IV.ON@  Flag - delete if unsaturated IV flag (=Verb was not IV)
 * @D.TV.ON@  Flag - delete if unsaturated TV flag (=Verb was not TV)


We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:

| Flag | Explanation
| ---- | -----------
 |  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

| Flag | Explanation
| ---- | -----------
 |  @P.CmpFrst.FALSE@ | Require that words tagged as such only appear first
 |  @D.CmpPref.TRUE@ | Block such words from entering ENDLEX
 |  @P.CmpPref.FALSE@ | Block these words from making further compounds
 |  @D.CmpLast.TRUE@ | Block such words from entering R
 |  @D.CmpNone.TRUE@ | Combines with the next tag to prohibit compounding
 |  @U.CmpNone.FALSE@ | Combines with the prev tag to prohibit compounding
 |  @P.CmpOnly.TRUE@ | Sets a flag to indicate that the word has passed R
 |  @D.CmpOnly.FALSE@ | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.

| Flag | Explanation
| ---- | -----------
 |  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
 |  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.


This file gives the start  of the Iñupiaq lexicon.
The lexicon Root points at the different parts of speech.
Each POS has its own file stems/nouns.lexc, etc., which in
turn points to affixes/nouns.lexc, etc.
POS-changing nominalizers are found in affixes/verbs.lexc and
verbalizers in affixes/nouns.lexc
It might be a good idea to have noun-ipk-der.txt etc. as well.
The common, final lexica, are found in clitics.lexc.


## The Root lexicon

 LEXICON Root 
 *  Nouns ;	      
 *  Verbs ;	      
 *  Determiners ;    
 *  Adverbs ;	      
 *  prop ;		      
 *  pron ;		      
 *  part ;		      
 *  Punctuation ;    
 *  Symbols     ;    

About lexica and continuations. Instead of separate lexica for words
that can only be sing or only plur and others for words that can take
all numbers, this is a better solution: Normal nouns are tagged tp,
tup etc. whereas specials are tagged with the continuation lexicon

