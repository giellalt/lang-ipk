


















* Sets for POS sub-categories





* Sets for Semantic tags





* Sets for Morphosyntactic properties






































































































































































* Sets for verbs


- V is all readings with a V tag in them, REAL-V should
be the ones without an N tag following the V.  
The REAL-V set thus awaits a fix to the preprocess V ... N bug.



* The set COPULAS is for predicative constructions







* NP sets defined according to their morphosyntactic features







* The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.












The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NPT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")






* Miscellaneous sets





















* Border sets and their complements













* Syntactic sets




These were the set types.



## HABITIVE MAPPING


* **hab1** 


* **hab2** 

* **hab3** (<hab> @ADVL>) for hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.



* **habNomLeft** 


* **hab4** 	



* **hab6** 

* **hab7** 

* **hab8** This is not HAB
* **hab5**  This is not HAB



* **habDain** (<hab> @ADVL>) for (Pron Dem Pl Loc) if leat followed by Nom to the right




* **habGen** (<hab> @<ADVL) hab for Gen; if Gen is located in the end of the sentence and Nom is sentence initial










































































* **spred<obj** (@SPRED<OBJ) for Acc; the object of an SPRPED. Not to be mistaken with OPRED. If SPRED is to the left, and copulas is to the left of it. Nom or Hab are found sentence initially.


* **Hab<spred** (@<SPRED) for Nom; if copulas, goallut or jápmit is FMAINV and habitive or human Loc is found to the left. OR: if Ill or @Pron< followed by HAB are found to the left.

* **Hab>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween HAB and <ext>.

* **Nom>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween Nom and <ext> @<SUBJ.

* **<spred** (<ext> @<SUBJ) for Nom; if copulas to the left, and some kind of adverb, N Loc, time related word or Po to the left of it. OR: if Ill or @Pron< to the left, followed by copulas and the before mentioned to the left of copulas. 

* **<spred** (<ext> @<SUBJ) for Nom, but not for Pers. To the left boahtit or heaŋgát as MAINV, and futher to the left is some kind of place related word, or time related word


* **<spredQst1** (<ext> @<SUBJ) for Nom in a typically question sentence; if A) Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. B) same as a, only the Qst-pcle is attached to copulas. C) Qst to the left, with copulas to its left, but not if two Nom:s are found somewhere to the right. D) copulas to the left, and BOS to the left. E) Loc or Ill to the left, and Loc or Hab to the left of this, Qst and copulas to the left. F) Num @>N to the left, Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. NOTE) for all these rules; human, Loc or Sem/Plc not allowed to the right.

* **<spredQst2** (@<SPRED) for Nom; in a typically question sentence; differs from <spredQst1 by not beeing as restricted to the right. Though you are not allowed to be Pers or human.

* **Nom<spredQst** (@<SPRED) for Nom; in a typically question sentence. Differs from <spredQst2 by letting Nom be found between SPRED and copulas



* **<spred** (@<SPRED) for A Nom or N Nom if; the subject Nom is on the same side of copulas as you: on the right side of copulas

* **<spredVeara** (@<SPRED) for veara + Nom; if genitive immediately to the right, and intransitive mainverb to the right of genitive

* **leftCop<spred** (@<SPRED) for Nom; if copulas is the main verb to the left, and there is no Ess found to the left of cop (note that Loc is allowed between target and cop). OR: if you are Coll or Sem/Group with copulas to your left. 

* **<spredLocEXPERIMENT** (@<SPRED) for material Loc; if you are to the right of copulas, and the Nom to the left of copulas is not a hab-actor


* **NumTime** (@<SPRED) for A Nom

* **<spredSg** (@<SPRED) for Sg Nom	

* **<spredPg** (@<SPRED) for Pl Nom	

* **<spred** (@<SPRED) for Nom; if copulas to the left, and Nom or sentence boundary to the left of copulas. First one to the right is EOS.

* **<spred** (@<SPRED) for N Ess

* **spredEss>** (@SPRED>) for N Ess; if copulas to the right of you, and if an NP with nom-case first one to your left.

* **HABSpredSg>** (@SPRED>) for Nom; if habitive first one to the left, followed by copulas.

* **GalleSpred>** (@SPRED>) for Num Nom; if sentence initial

* **spredSgMII>** (@SPRED>)

* **r492>** (@SPRED>) for Interr Gen; consisting only of negations. You are not allowed to be MII. You are not allowed to have an adjective or noun to yor right. You are not allowed to have a verb to your right; the exception beeing an aux.



* **AdjSpredSg>** (@SPRED>) for A Sg Nom; if copulas to the right, but not if A or @<SPRED are found to the right of copulas

* **SpredSg>Hab** (@SPRED>) for Nom; if you are sentence initial, copulas is located to the right, and there is a habitive to the right of copulas



* **Spred>SubjInf** (@SPRED>) for Nom; if copulas to the right, and the subject of copulas is an Inf to the right

* **spredCoord** (@<SPRED) coordination for Nom; only if there already is a SPRED to the left of CNP. Not if there is some kind of comparison involved.






* **subj>Sgnr1** (@SUBJ>) for Nom Sg, including Indef Nom if; VFIN + Sg3 or Pl3 to the right (VFIN not allowed to the left) 

* **subj>Du** (@SUBJ>) for dual nominatives, including Coll Nom. VFIN + Du3 to the right. 
* **subj>Pl** (@SUBJ>) for plural nominatives, including Coll and Sem/Group. VFIN + Pl3 to the right.

* **subj>Pl** (@SUBJ>) for plural nominatives


* **subj>Sgnr2** (@SUBJ>) for Nom Sg; if VFIN + Sg3 to the right.

* **<subjSg** (@<SUBJ) for Nom Sg; if VFIN Sg3 or Du2 to the left (no HAB allowed to the left).




















* **f<advl** (@-F<ADVL) for infinite adverbials

* **f<advl** (@-F<ADVL) for infinite adverbials



* **s-boundary=advl>** (@ADVL>) for ADVL that resemble s-booundaries. Mainverb to the right.




* **-fobj>** (@-FOBJ>) for Acc 

* **-fobj>** (@-FOBJ>) for Acc




* **advl>mainV** (@ADVL>) if; finite mainverb not found to the left, but the finite mainverb is found to the right.


* **<advl** (@<ADVL) if; finite mainverb found to the left. Not if a comma is found immediately to the left and a finite mainverb is located somewhere to the right of this comma.




* **<advlPoPr** (@<ADVL) if mainverb to the left.
* **advlPoPr>** (@<ADVL) if mainverb to the right.



* **advlEss>** (@<ADVL) for weather and time Ess, if FMAINV to the left.






* **advl>inbetween** (@ADVL>) for Adv; if inbetween two sentenceboundaries where no mainverb is present.

* **comma<advlEOS** (@<ADVL) if; comma found to the left and the finite mainverb to the left of comma. To the right is the end of the sentence.



* **advlBOS>** (@ADVL>) if; you are N Ill and found sentnece initially. First one to your right is a clause.


* **<advlPoEOS** (@<ADVL) for Po; if you are found at the very end of a sentence. A mainverb is needed to the right though.



* **cleanupILL<advl** (@<ADVL) for N Ill if; there are no boundarysymbols to your left, if you arent already @N< OR @APP-N<, and no mainverb is to yor left.











* **<opredAAcc** (@<OPRED) for A Acc; if an other accusative to the left, and a transtive verb to the left of it. OR: if a transitive verb to the left, and an accusative to the left of it.


### sma object









* **<advlEss** (@<ADVL) for ESS-ADVL if; FMAINV to the left
* **<spredEss** (@<SPRED) for N Ess if; FMAINV to the left is intransitive or bargat





## SUBJ MAPPING - leftovers

## OBJ MAPPING - leftovers


## HNOUN MAPPING
















* * *
<small>This (part of) documentation was generated from [../src/cg3/functions.cg3](http://github.com/giellalt/lang-ipk/blob/main/../src/cg3/functions.cg3)</small>








































































* * *
<small>This (part of) documentation was generated from [../src/fst/affixes/verbs.lexc](http://github.com/giellalt/lang-ipk/blob/main/../src/fst/affixes/verbs.lexc)</small>
# Symbol affixes





* * *
<small>This (part of) documentation was generated from [../src/fst/affixes/symbols.lexc](http://github.com/giellalt/lang-ipk/blob/main/../src/fst/affixes/symbols.lexc)</small>
# Adverb stems

LEXICON adv gives the tag +Adv

LEXICON Adverbs gives the stems, just now some 30 of them.

* * *
<small>This (part of) documentation was generated from [../src/fst/stems/adverbs.lexc](http://github.com/giellalt/lang-ipk/blob/main/../src/fst/stems/adverbs.lexc)</small>
# Determiners

LEXICON detna 

LEXICON detnja for *na* +Det+Sg

LEXICON detobl for the oblique forms

LEXICON Determiners here comes the list


* * *
<small>This (part of) documentation was generated from [../src/fst/stems/determiners.lexc](http://github.com/giellalt/lang-ipk/blob/main/../src/fst/stems/determiners.lexc)</small>
#  Verb lexicon  


Stems according to Edna MacLean

* Lexicon inventory of stems (Feb 2009):
	* 822 IV
	* 421 IV_vow
	* 215 TV_vow
	*  73 TV
	*  70 verb_intr_suq


Note that there are appr 120 verb + contlex combination being identical.
They must thus be uniqed. The list is found at the end of this document.


LEXICON Verbs 
Siḷivigmiittuq ! is at Selawik
Siḷivigmiñŋaqtuq ! is coming from Selawik
Utqiaġviŋmuktuq ! He is going to Barrow.
Utqiaġviŋmuktigaa ! is sending it to Barrow
Utqiaġviŋmuutigaa ! is taking it to Barrow
aaktuq ! is self-asserting, proud of himself (K)
aalġuruq ! menstrates
aatkaa ! snatches it away (K)
aatchauqtuq ! yawns
aatchuġaa   ! gave it, gives it
aatchuiruq ! gives (K)
aatiġaa   ! snatches it away
aaġluqtuq ! looks up, raises head
aaŋaruq ! is stubborn, acts against better advice
aaŋittuq ! thinks he knows everything
agaayuruq ! prays (K)
agaayuvigmiittuq ! is in church
agaktuq ! fights, plays roughly
agiaqtuq ! files, rubs
agikkaa ! files it, rubs it
aglaktuq ! writes
aglautiruq ! types (K)
aglautitaqtuq ! types (N)
agliruq ! grows up, gets big
agliqiruq ! reads (K)
aglisaiññaqtuq ! is continually getting bigger
agliutigaa ! take one's picture (K)
agliñġaqtuq ! reaches puberty
agliġigaa ! abstains from it, avoids it
agliġnaqtuq ! is tabooed, forbidden to eat of do for religious reasons
agniġiqsuq ! blizzard has ceased (N)
airuq ! goes home (N)
aigaa ! fetches it, goes to get it (K)
aiḷaqtuq ! is damp (K)
aiḷaqtuq ! is wet (N)
aiḷinaqsiruq ! is lunch time (noon meal) (K)
aiparuq ! is fresh, raw (uncooked food) (K)
aitkaa ! fetches it, goes to get it (N)
aitchuġaa   ! gave it, gives it
aitchuġaa   ! gives it
aitchuiruq ! gives (N)
aitchuusiaqaqtuq ! has received a gift
aitchuusiaġisuugaa ! is always receiving it
aiyugaaqtuq ! invites
aiyuilisuuruq ! gets carried away, goes to excess
akigaġaa   ! bears it, carries it
akigaqtuq ! bears, carries
akiiḷaaqtuq ! is free, without cost
akiiḷaqtuq ! is owing
akiiḷigaa ! beats him (in contest)
akimaruq ! has won (is in state of having opposed)
akimaruq ! wins
akiqsruqtuq ! promises
akiqsruġigaa ! promises it
akisaqtuq ! revenges (lit. tries to counter)
akisuruq ! is expensive, precious, valuable
akitchaktuq ! trades, barters
akpaktuq ! steps up (from lower to higher place)
akpittuq ! starts to sing
aksikkaa ! touches it
aksraqtuq ! is rolling
aktigiruq ! is so long, is this much
aktigiruq ! it is that big
akutuq ! "Eskimo ice cream" (of cooked fats, meats and berries)
akutuq ! leaf
akuaġaa   ! catches it
akuqtuq ! receives, accepts
akuqtuġaa   ! accepts it
akutkaa ! stirs it
akuġluktuq ! bell rings
alapittuq ! inattentive, fools around, is confused
alapittaqtuq ! is crazy, is drunk
alatkaqtuq ! scans the landscape from an elevated point, looks into water for signs of fish
alianaqtuq ! is quiet, lonesome, sad
alianiuqtuq ! is lonesome, quiet, sad, not communicative
aliasruktuq ! is despondent, sad (K)
aliktuq ! is torn
aliuqtuq ! cooks dog food (K)
aliuqtuq ! haunts
aliuqtuq ! marvels, fears (N), haunts
aliuqtuqtuq ! is haunted
allaiyaġaa   ! is mending net
allakuaqtuq ! goes by another way
allaqtuq ! clear weather
allaqtiġiruq ! dries, wipes (e.g. dishes)
allatuqtuq ! commits adultery
allayuaqtuq ! fears because of an unusual event, shyness of toddler (N)
allayuaqtuq ! is shy, bashful (of toddler) (N)
allaŋŋuqtuq ! is different
allaŋŋuqtuq ! is different, other (N)
alliqsuq ! is deep
aluktuq ! licks
alutaġuktuq ! wants a spoon
aluutaġaqtuq ! eats with a spoon
alġaqsruġaa   ! exhorts him, tells him the right way to behave
alġaqsruiruq ! exhorts, corrects, preaches (N)
alġaqsruiruq ! exhorts, reproves, preaches (N)
amaġaa   ! puts him (baby) on her back (inside the parka)
amaaqtuq ! carry baby on back
amaniittuq ! is there (out of sight)
amiiqsiruq ! skins an animal
amiiqsiktuq ! has skinned self (K)
amiiġruktuq ! has skinned self (N)
amiḷiqiruq ! works with skins
amumaruq ! is pulled out (e.g. a net)
anaqtuq ! defecates
anaugaa ! hits him, beats him
anayasuktuq ! fears the consequence (N)
aniruq ! exits, is born
aniruq ! is born (lit. exits)
aniiqsuaqtuq ! plays outdoors
aniqtiġiruq ! breathes
aniġnitchiaqtuq ! is panting
annaktuq ! is saved (N)
annaktuq ! is sheltered, is safe, saves
annaqtittuq ! is bruised
annautigaa ! saves him
anniiyaruq ! is sore (N)
anniqsuġaa   ! benefits him
anniqsuiruq ! benefits, helps
anniqsuiruq ! helps, is beneficial (N)
anniqsuqtuq ! is saved (K)
anniġñaqtuq ! hurts, pains, is sick (N)
anuqqaŋaruq ! is windy (gale force)
anuqsruruq ! endures, suffers (K)
anuqłiqsuq ! is windy
apaiqsuq ! is enough, had enough
apiruq ! is snow covered
apigaa ! it is snow covered
apiqsriruq ! asks, questions
apiqsruġaa   ! is about to question him, ask him
apiġigaa ! questioned him, asked him
apluqtuq ! steps, takes a step
apqusraaġaa   ! passes him (K)
apqusraaqtuq ! travels through (K)
aptaruq ! is busy (N)
apuġaa   ! bumps, strikes against it, meets him
apuqtuq ! meets, bumps, strikes against
apuqtiġaa   ! bumps, strikes against it, meets him
apyularuq ! is dusty (K)
aqalugniaqtuq ! is fishing (kiv, n)
aqaluktuq ! catches a fish (kiv, n)
aqavittuq ! sits down ( q)
aqiruq ! kicks
aqigaa ! kicks it
aqiaġunŋuruq ! has an acute stomachache
aqpaksruqtuq ! runs (of human) (K)
aqpaliġaaqtuq ! runs a race
aqpaqsruqtuq ! runs (K)
aqpattuq ! runs (of human) (N)
aqqauqtuq ! (fish) bit on hook
aqsravaluktuq ! is round (K)
aqtuġaa   ! touches it
aquvittuq ! sits down
aqvaluktuq ! is round (N)
araqsiġiaqtuq ! is open to counsel (N)
argaaqtuq ! broken finger
arguaqtuġaa   ! doubts it
arguaŋaruq ! is egotistical (can do anything)
arguktuq ! travels into the wind
arriligaa ! draws, sketches its likeness
arriqaqtuq ! is like, is comparable (N)
asiqtuq ! is nodding (with head while others dance)
ataruq ! is connected with
ataaniittuq ! is under
ataaqtuq ! travels down river by boat
ataaqtuqtuq ! goes down to the lead to camp for whaling (N)
ataaqtuqtuq ! goes to set up whale camp on the ice (N)
atanniġaa   ! judges him (K)
atanġiqsauruq ! is free
atanġusuktuq ! is cranky
atanġusuktuq ! is cranky (N)
atanġuturuq ! is cranky (K)
ataqsiruq ! borrows
atauttuq ! goes beneath
atautkaa ! goes beneath it
atchiġaa   ! names him
atchiksuq ! is lowly, is humble (K)
atchikisaaqtuq ! see-saw jumping (N)
atchitkaa ! lends him
atiruq ! is the same, there is no difference
atigaa ! wears it, put it on
atigiruq ! puts on parka
atigitchiaqtuq ! gets a new parky
atiqayaqtuq ! almost the same
atiqsaaqtuq ! travels down river by sled
atlayuaqtuq ! fears because of an unusual event, shyness of toddler (K)
atlayuaqtuq ! is shy, bashful (of toddler) (K)
atlaġiiqsuq ! is different, other (K)
atniiyaruq ! is sore (K)
atniutaqtuqtuq ! has pain
atniġñaqtuq ! hurts, pains, is sick (K)
atniġñaqtuq ! is sick (malaise) (K)
atqaqtuq ! descends
atqunaqtuq ! is much, too much, plenty, there is an abundance
atriligaa ! draws, sketches its likeness
atriqaqtuq ! is like, is comparable (K)
attaqsraqtuq ! respects, fear of a person who is not well known (K)
attaġnaqtuq ! is stern, unfriendly, non-communicative
atuġaa   ! sings it
atuġaa   ! uses it
atuaniktuq ! has already sung
atuqtuq ! sings
atuqtuq ! uses, acts immorally
atuqtuuraqtuq ! plays instrument
atuutiksraqaqtuq ! has a song choice
atuġnaqtuq ! is useful
atuġuiqsuq ! is worthless
atuŋaiqsuq ! is useless (having been useable)
atuŋaiqsuq ! is worthless
atuŋaktuq ! resoles a boot (K?)
atvaqtaqtuq ! humbles himself much (K)
auruq ! is rotten, is rotting, aging
auktuq ! nose bleeds
aukkaa ! melts it (ice, snow)
aularuq ! dances (K)
aularuq ! dances (K)
aularuq ! moves (N, s)
aularuq ! nuna earthquake (N)
aullaqtuq ! departs, goes away
aullaqtuq ! goes away
aullaqsiviñaqtuq ! is departing quickly
aullaqsruġniaqtuq ! picks berries
aullaqtitkaa ! causes it to depart, sends
aullaqtitkaa ! sends him away
aullautigaa ! leads him away, takes it away
aullaġniiruq ! begins
aunaaqtuq ! bleeds, menstruates (N)
aunaaqsruqtuq ! bleeds, menstruates (K)
auniqtuq ! has a rotten spot
auqtuq ! stalks seal, crawling and scratching on ice at the same time
autaaqtuq ! divides, shares
avaalaruq ! yelps with pain (K, q)
avallaktuq ! travels straight out from the shore
avanŋagaa ! all around him
aviktuq ! cuts, divides (meat, bread, etc.)
aviḷuqtaqtuq ! bell rings
ayaagittuq ! is undecided, desires to but can't begin (N)
ayauruq ! got blind
ayauŋaruq ! is blind
ayuruq ! plays ball (K)
ayuktuq ! ball
ayuqtuq ! plays ball (N)
aġiisruknaġaa   ! is offended by it
aġiuruq ! ends, quits, stops, is satisfied (N)
aġiunaqtuq ! plays (K)
aġiunayaqtuq ! would be stopped
aġiñaqtuq ! is soft
aġvaluktuq ! is round
aġvaqtuq ! killed a whale
aġġallaaġiktuq ! enjoys himself (K)
aġġiruq ! dances, participates
aŋaayuruq ! prays (N)
aŋalanŋaitkaa ! did not control him
aŋalataġaa   ! directs him, controls him
aŋalatchiruq ! rules, reigns, directs
aŋayuruq ! dances
aŋiruq ! arose, resuscitated, revived
aŋiruq ! is big
aŋiruq ! is big
aŋiruq ! resuscitated, revived, arose
aŋiġaa   ! agrees with him, assents to it
aŋiiñaqtuq ! procures no game, fish
aŋiḷaaqtuq ! goes home (K)
aŋiḷgisaqtuq ! swings (n)
aŋipchaġaa   ! resuscitated him, resurrected him (K)
aŋipkaŋagaa ! resuscitated him, resurrected him (N)
aŋiqtuq ! agrees, assents, says yes with raised eyebrows
aŋisitkaa ! tempers it
aŋivraġaa   ! unravels it, unscrews it, unties it
aŋivraqtuq ! disassembles (K)
aŋivraqtuq ! loosens, unravels, unties
aŋivsiruq ! disassembles (N)
aŋiłhisaqtuq ! swings (K)
aŋmaqtuq ! is open, turned on (radio, tape recorder)
aŋniġiqsuq ! blizzard has ceased (K)
aŋuruq ! procures game, fish
aŋugaa ! procures it
aŋuaqtuq ! paddles
aŋularuq ! chews
aŋuniaqtuq ! is hunting
aŋuyaktuq ! fights
ichuktuq ! fleshes animal skin, tans (K)
igaapiaqtuq ! boils meat or fish
iggianŋuruq ! has an acute sore throat
igittuq ! throws away, discards
igitkaa ! throws it away, discards it
iglaqtuq ! laughs
iglaŋaruq ! smiles
iglaŋaaqtuq ! smiles
iglaŋaaqtuq ! smiles (N)
igliqtuq ! travels, moves
igliŋnaqtuq ! is cute (of a baby)
iglukisaaqtuq ! juggles
igluqpiruq ! builds a house (N)
igḷutuġaa   ! endures it, suffers it
igḷutuiruq ! endure
igḷutuiruq ! endures
igniruq ! make fire with flint
igniqauqtuq ! Steller's eider (Somateria stelleri)
igniġuqpatittuq ! is lightning (N)
igruġaa   ! gets stiff (of a dead body)
igruliġaa   ! has chills (K)
iigaa ! swallows it
iivaqtuq ! comes around a point (K)
iivaqsaaqtuq ! rounds a bend (K)
ikaaġaa   ! crosses it
ikaaqtuq ! crosses over
ikayuġaa   ! helps him
ikayuqtuq ! helps
ikiruq ! burns, is consumed
ikiruq ! embarks (boat, sled, airplane etc.)
ikiruq ! embarks, enters, gets on or into
ikiaqtaalaaqtuq ! body tingles because of emotional stimulus
ikimaruq ! is burning, is on (of electric light)
ikiqturuq ! is wide
ikkattuq ! is shallow
ikpigigaa ! gets in on his mind and believes it (K)
ikpiktitaqtuq ! bank is being undercut by water
ikpiktitaqtuq ! water is undercutting bank
iksrukkaa ! carries it on the shoulder
ikugaa ! loads it on
ikuallaktuq ! bursts into flame
ikuallauraqtuq ! is burning a little, smoldering
ikuktuq ! fleshes animal skin, tans (N)
ikuktuq ! loads sled (N)
ikumaruq ! is burning, is on (of electric light)
ikľigutchaktittuq ! is tempted (lit. induced to want the other)
illuktuq ! is snow blinded
iḷaruq ! is adding (K)
iḷaksiagaa ! bothers him
iḷaliruq ! adds, joins, shakes hands with (K)
iḷaliruq ! shakes hand
iḷaligaa ! shakes his hand
iḷaqatniktuq ! is married (lit. he obtained a partner)
iḷaqatniktuq ! obtained a marriage partner
iḷasrailaruq ! cries with pain, screams (K)
iḷaŋŋaaqtaaqtuq ! is subtracting
iḷigaa ! lays it down, places it
iḷimasuktuq ! suspect
iḷiqsaqtuq ! nuna earthquake
iḷiqsaqtuq ! nuna earthquake (K)
iḷiqsaqtuq ! quakes, wobbles
iḷisaqtuq ! tries to learn, practices
iḷisaurriruq ! teaches (N)
iḷisautigaa ! teaches him
iḷisautriruq ! teaches (K)
iḷisimaruq ! knows
iḷisimagaa ! knows it
iḷisimasugnaqtuq ! is thought to know (I think he knows)
iḷitchiruq ! learns
iḷitchuġiruq ! recognizes, realizes
iḷitchuġigaa ! finds it out, becomes acqainted with him
iḷḷaktuq ! is tangled
iḷḷaqtuq ! tangle
iḷḷatiruq ! adds, joins, shakes hands with (N)
iḷḷatiruq ! is adding (N)
iḷḷiaqsuqtuq ! combs hair (N)
iḷḷiaġuruġaa   ! combs it (K)
iḷumutuuruq ! is true
iḷunŋuruq ! stomach hurts
iḷunŋutchaktuq ! is deeply angry, hurt, disturbed
iḷuvviktuq ! buries (N)
imaiqsuq ! is low (water in river)
imaqaqtuq ! is full
imaqsiruq ! moistens skin
imigluktuq ! earring
iminŋuruq ! has a hangover (K)
imiqtuq ! drinks
imiqtaqtuq ! is going for water
imiġuktuq ! is thirsty
immaqtuq ! is leaking
immiġaa   ! fills it
immiqsuq ! is full
imñiqsaktuq ! groans
imŋaluktuq ! whines
imŋaluktuq ! whines (dog), hums (person)
inillaktuq ! is placing
inillakkaa ! is placing it
innaittuq ! the like of, such kind (N)
inuqtuq ! is insufficient, fails to reach it, shoots low
ipiruq ! suffocates, smothers, drowns
ipiktuq ! is sharp
ipiktusuktuq ! is sad, despondent
ipiqtusuktuq ! is despondent, sad (N)
ipitkaa ! suffocates him, smothers him, drowns him
ipiġaqtuq ! wades, cuts himself
ipiġaqtuġaa   ! whips him
ipnaiqtuq ! goes to a cliff
ipquruq ! is dirty
ipuaqtuq ! rows (N)
ipuktaqtuq ! see-saw jumping (K)
iputtuq ! rows (K)
ipyanŋunaqtuq ! is stuffy (K)
iqalugniaqtuq ! is fishing (N, q)
iqaluktuq ! catches a fish (N, q)
iqaqsriruq ! washes clothes (N)
iqatauruq ! is together with (K)
iqiasruktuq ! is lazy (K)
iqiasuktuq ! is lazy
iqiasuktuq ! lazy
iqiatkaa ! does not want to do it, is lazy
iqiatchaktuq ! (moon) begins to wane
iqquliruq ! skins muskrat (by cutting the belly section)
iqsiruq ! fears
iqsiruq ! fears (general, most common)
iqsigigaa ! is afraid of him
iqsisaaqtuq ! frightens away an attacking animal (K)
iqsruqtuqtuq ! builds a house (K)
iqsuktuq ! responds negatively by wrinkling nose
iqsuktaqtuq ! wrinkles nose
iqłaqtuqtuq ! is jigging, is hooking mudshark (K), is hooking tomcod (q)
irinŋuruq ! eye hurts
iriqtuq ! hides
irriŋuġaa   ! is icy cold (N)
irrutigaa ! treats him properly, right
isaaqtuq ! raises his arms (N)
isaaŋaruq ! reaches forth
isaġutiruq ! beings
isiḷġiġaa   ! corrects his misundertanding
isimŋaaqtuq ! line of gently sloping hills
isiqtuq ! enters, visits
isiqattaaqtuq ! is visiting
isiqsiruq ! is getting smoke filled
isiqsuruq ! is daring (strong), is enduring (persistent hunter) (K)
isivġiiruq ! judges (N)
isivġiigaa ! examines him, tries him out
isiġniataktuq ! is trying to enter
israktuq ! raises his arms (K)
isrumaruq ! thinks (K)
isrumaaluktuq ! worries (K)
isrumanŋuruq ! holds a grudge (K)
isruqtuq ! is opaque, is muddy, not clear (K)
isumaruq ! thinks (N, q)
isumaaqtuq ! mourns (not expressed), worries (K)
isumalitqigaa ! repents of it (lit. rethinks it)
isumanŋuruq ! holds a grudge (N)
isumanŋutchautiruq ! argues heatedly
isumatturuq ! is wise
isumaturuq ! is wise
isummaqpaktuq ! is sorrowing much
isuqtuq ! is opaque, is muddy, not clear
ittuq ! exists, is, lives, stays
itchuqtuq ! waits for an animal to appear (K)
itiruq ! is deep
itiktaqtuq ! has diarrhea
itiqtuq ! wakes up
itivliruq ! is sleepwalking, talking in his sleep
itiġnaġiaqtuq ! arises early
itnaqtuq ! the like of, such kind (K)
itqanaiqsuq ! is ready, finished
itqaqtuq ! remembers
itqaqtiġaa   ! it comes to mind (K)
itqatauŋaruq ! is together with (N)
itqaġigaa ! remembers it
itqaġmiraqtuq ! he habitually remembers
itqumaruq ! is awake, is not sleeping
itqutchiġnaqsiruq ! is breakfast time
itraiqsuq ! has moderated (having been cold) (K)
itriŋuġaa   ! is icy cold (K)
ivaruq ! is nesting
ivaktuq ! searches (N)
ivaluktuq ! flaps (N)
ivalukataqtuq ! is flapping (slowly)
ivalukkattaaqtuq ! is flapping (rapidly)
ivayaqtuġaa   ! defrauds, robs him (K)
ivaġiaqtuq ! is going to search
iviktuq ! fits
iviġaktuq ! pleases
ivukutaqtuq ! flaps (K)
ivvaqtuq ! bathes (N)
ivyanŋunaqtuq ! is stuffy (N)
iñigaa ! hangs (fish or net for dryingj) over a pole
iñiqsiruq ! made, created (K)
iñiqtiġaa   ! threatened him
iñiqtiqtuq ! is threatening (scolding that brings results)
iñiqtiqtuq ! rebuked him, permitted him not
iñiqtuqtuq ! is tired (K)
iñugiaktuq ! are many
iñugiiḷiqsuq ! frowns (lit. makes himself ugly)
iñugiksuq ! is a good or pretty person
iñugiksuq ! is handsome, beautiful
iñuguqtuq ! became a man (having grown up)
iñuguqtuq ! grew up (lit. became a person)
iñukpalliktuq ! comes from, originates
iñulluataqtuq ! is a good man
iñunŋunaqtuq ! is naughty (lit. evokes a person to pain) (K)
iñuuruq ! lives
iñuuniaqtuq ! makes a living, lives
iñuŋniqsuq ! is a gentleman
iññiaqtuq ! is visiting (K)
iññiaqsiruq ! stretches hide on frame
iġitchaqtuq ! plucks fowl
iġḷigigaa ! clings to it for himself, is stingy with it
iġḷiktuq ! is stingy
iġḷituruq ! is stingy (n, K)
iġñiruq ! gives birth, has a baby
iġñiqaġniaqtuq ! will have a son
iġġialaruq ! yells, shouts
iġġuqsiruq ! washes clothes (K)
iłuaqtuq ! is right, good, correct, fitting
iłuaqquġuuruq ! is proper, honest
iłuaqsiruq ! heals, fixes
iłuaqsiruq ! recovers
iłuaqsruqtuq ! corrects person who is erring ignorantly
iłuiḷḷiuqtuq ! is troubled, bad conscience
iŋiġaa   ! asks him, begs him, prays to him
iŋiqsruqtuq ! asks, prays (K)
iŋiuliuqtuq ! pitches (boat)
iŋutuq ! young female (choice whale, soft muktuk)
kaaktuq ! is hungry (N)
kaimuġaqtuq ! pushes heavy sled (N)
kaivaŋaruq ! is dizzy (N)
kaivittuq ! circles around (K)
kaivḷuktuq ! pushes heavy sled
kakaaktuq ! carries on head or shoulders
kakiruq ! pricksq
kakkaaqtuq ! is starving, starved to death
kakkiruq ! blows nose
kakkiñŋuruq ! has a stuffy nose
kalaktuq ! burps (N, q)
kalaktuq ! clears throat
kalikkaa ! drags it
kalitkaa ! pulls it, drags it behind
kalivittuq ! is stuck
kallularuq ! is thundering
kamagigaa ! obeys him
kamaksriruq ! obeys
kamaksriugaqtuq ! is always obedient
kamanaqtuq ! is great, is to be honored
kamanałhaaqtuq ! is greater
kamasaaqtuq ! is boastful (N, q)
kamasraaqtuq ! is boastful (K)
kamatchaktuq ! is surprised at another's ability, takes pride in another's ability
kananiittuq ! is down there (visible)
kanŋusruktuq ! is ashamed, bashful (K)
kanŋusuktuq ! is ashamed, bashful (N)
kanŋusuuruq ! is shy
kanŋutchiaqtuq ! is embarrassed
kapiruq ! stabs
kapyaliqsuq ! worries, gets dizzy, has a headache (K)
kasuŋaruq ! is loose (e.g. rope tied loosely around pole) (N)
kataktuq ! is falling
katakkaa ! drops it
katittuq ! gathers
katitkaa ! gathers it
kauktuq ! hammers (K)
kautaqtuq ! hammers (N)
kaviqsuq ! is red
kayuqtuq ! fox (K)
kayuqtuq ! red fox (N)
kayuŋiutigaa ! coaxes him, urges him (K)
kaŋataliiktaktuq ! to rumble (as a moving sled)
kaŋiqsiruq ! understands
kiavluktuq ! circles around (N)
kigiraqtuq ! is crimping soles (K)
kigutinŋuruq ! has a toothache
kiigaa ! answers him (K)
kiiqsiuqtuq ! is painful
kiiraqtuq ! is crimping soles (N)
kiiñaġiiliruq ! blushes
kikiaktuutigaa ! crucifies him (lit. nails him)
kiliktuq ! tells news, warns
kiliktauruq ! is being warned
kiliktuġaa   ! tells him news, warns him
killaiyaqtuq ! mends, sews
killukuaqtuq ! errs
killukuaqtuq ! goes wrong way
killuqsaqtuq ! sinned (K)
kiluaqtuq ! is ripped
kiluusaġaa   ! locks it
kiluusaqsimaruq ! is locked
kiḷiigruktuq ! has skinned self, abrased
kiḷiqsuq ! has cut self
kinataqtuq ! brakes sled
kiniqtuq ! thick soup
kinnauruq ! is foolish
kinnaŋaaqsiruq ! is becoming senile
kipalukkaa ! works for him, helps him
kipaluniktuq ! has helpers
kipiqniuqtuq ! is anxious to (K)
kipiġiruq ! is anxious to
kipiġniuqtuq ! is anxious to (N)
kipliġaa   ! cuts it in two, severs it
kipriruq ! cuts off, severs (K)
kirratchaiqtitkaa ! shines brightly
kirriruq ! cuts off, severs (N)
kirriqsiruq ! has a fever
kisimġiuqtuq ! is alone
kisiŋŋuġaa   ! left him alone, left her bereaved
kitñuruq ! capsizes
kiugaa ! answers him (N)
kiugiññaġaa   ! is merely answering him
kiviruq ! sinks
kiviktuq ! lifts
kivikkaa ! lifts it
kiviliqtuq ! cannot recall word or name, forget
kivluktuq ! cuts across
kivsiruq ! is startled awake while dozing off
kiñuġautiruq ! is too late (K)
kiŋiaqtuq ! turns head (K)
kiŋiaqtuq ! turns head, looks behind (K)
kiŋmaqtuq ! bites
kiŋuruq ! capsizes (N)
kiŋuvaannaktuq ! inherits (N)
kiŋuġautchiruq ! is too late (N)
kukiḷuktuq ! goes about from place to place
kukiuruq ! is cooking (N)
kukkiḷiruq ! picks teeth
kumiktuq ! scratches
kunikkaa ! kisses him
kuraqtuq ! looks down
kurraqtuq ! looks down, lowers head
kusiksuq ! is dripping
kuukpiaqtuqtuq ! is drinking coffee
kuviruq ! pours
kuvigaa ! pours it
kuvigaa ! pours it out
kuvraqtuq ! netted fish
kuvraqsruqtuq ! checks net
kuvriruq ! makes net
kuvriqsuq ! is setting net
kuvriqiruq ! checks net
kuyakkaa ! lies with her
maguruq ! howls (dog, wolf)
makimaktuq ! understands not (N)
makittuq ! arises, stands up
makpiqtuq ! opens (as a shirt, coat)
maliktuq ! follows (another)\
malikkaa ! follows him, accompanies him
maliksuktitauruq ! convinced
maliksuktitauruq ! is convinced
mamianaqtuq ! is annoyed, offended
mamittuq ! heals (of sore, cut, etc.)
mamititkaa ! healed him
manaqtuqtuq ! is hooking fish (tomcod) (q)
mapkutittuq ! slaps the water with his tail (beaver)
mapqaqtuq ! reports of a gun, sound of an explosion
mapturuq ! is thick
maqiruq ! drains (of ear, sore etc.), sweats
maqiruq ! sweats (N)
mattaqtuq ! disrobes, removes the harness from a dog
matuniġaa   ! covers it
mauruq ! steps into, falls into a hole, breaks through (of snow)
mauragaaqtuq ! crossing open water by jumping on "stepping stone" ice pans
mayuqtuq ! ascends, climbs up
mayuqtuq ! climbs
maġaalaruq ! yelps with pain (N)
maŋaqtuq ! is black (N)
mikiruq ! is small
miluktuq ! nurses
miluktitkaa ! breast feeds him
miḷuqtuq ! hits with a thrown object
miniksuq ! is misty
minitkaa ! missed him, omitted him
minġuqtuq ! is tired
miquqtuq ! sews (N)
miqłiqtuq ! child (b)
misigaqtuq ! hops
misuktuq ! dips
mitaaqtuq ! jokes
mitautigigaa ! mocks him, makes a fool of him
mitauturuq ! mocks (K)
mitchaaġaqsiruq ! is proceeding to land
miñugluktuq ! is stained, spotted
miñukkaa ! paints it
miñułiġaa   ! paints it
miñułiqtuq ! is painting
miġiaqtuq ! vomits
muliktuq ! is closed, turned off (radio, etc.)
muluruq ! stays a long while
mumiksiruq ! translates
munaġigaa ! watches him, takes care of him
muqpaktuq ! dives (of a sea mammal whose body curves high out of the water)
naaruq ! ends, runs out, finishes
naalaktuq ! listens
naamaruq ! is complete, is enough
naammaktuq ! is fitting, right, perfect
naaqturuq ! is pregnant (K)
naattuq ! is ended, finished, stopped, caught
naavittuq ! dumps out (non-liquid)
naavitkaa ! dumps it (non-liquid) (N)
naavitkaa ! dumps it out
naaġuqtuq ! (moon) is full
nagligigaa ! has compassion on him
nagligigaa ! pities him
nagliginniġaa   ! is merciful to him
naglignaqtuq ! is poor, pitiable (N)
nagliktuq ! is merciful, compassionate
nagliksaaqtitchiruq ! persecute
nagliksraqtuq ! pities
nagliŋnaqtuq ! is poor, pitiable (K)
nairuq ! smells
nairuq ! smells strong, smells foul
naipiqtuq ! watch critically (N)
naipitkaa ! watches it closely, tests it (K)
nakiqtuq ! goes direct (as path of bullet)
nakkaqtuq ! dives, sinks
naktuqtuq ! is chipped
nakuruq ! is cross-eyed
nakuaqsriruq ! likes, loves
nakuqsiruq ! is getting better (K)
nakuuruq ! is good
nakuuruq ! is good
nakuuruq ! is good, fine
nakuugisiruq ! it is going to be good
nakuumaruq ! is in state of being good
nakuupiaġataqtuq ! is extremely good
nakuupiaŋitkaluaqtuq ! although not very good, it is okay
nakuuqsiruq ! is getting better (N)
nakuusimaruq ! now is good (having been ot good)
nakuułallaktuq ! it is very good
nalaunŋaruq ! is right, just
nalauraaqtuq ! rests
nalauttuq ! is right
nalautchaaġaa   ! travels past (N)
nalautchaqtuq ! guesses, gambles
nalautittuq ! fulfills, sights in a rifle
nalautitkaa ! aims it, focuses it
nallaruq ! lays (himself) down
nallaqtuq ! has lain down
nallaqtuq ! lies down
nallautigaa ! lays him down, puts him to bed
naluruq ! is ignorant, does not know
naluktuq ! swims (of sea mammals and polar bear)
nalukataqtuq ! is blanket tossing
naluksriŋuaqtuq ! has a hangover (N)
nalunaqtuq ! is secret, is hidden
nalupqigigaa ! is uncertain about it
nalupqinaqtuq ! is uncertain, unpredictable
nalupqisuktuq ! doubts, is uncertain
nalġuqsruġaa   ! straightens it, corrects him
nalġuqsruiruq ! corrects, instructs
naniqtuq ! is trapped
naniġiaqtuqtuq ! is trapping
nanmaktuq ! carries on the back, back packs (N)
nanuktuq ! rubs with seal oil (as on neck for sore throat)
nanġaġaa   ! praises him, brags about him
nanġaqtuq ! brags, praises (himself)
nanġaqtuq ! praises, boasts
naparuq ! (4) rib (4)
naparuq ! sticks up
napaaqtuq ! tree
napaaqtuq ! tree, spruce tree
napittuq ! is snared
napituruq ! is noisy
napiŋaruq ! is hunchbacked (N)
nappairuq ! builds
napuŋaruq ! is hunchbacked (K)
naqittuq ! is low
narranŋuruq ! has abdominal ache
narranŋuruq ! stomach cramps (acute)
nasittuq ! ascends to a high spot for scanning (N)
natchikkaa ! yearns to follow him
natchiqiruq ! washes floor (K)
natchitchiġaa   ! lays flooring
natiġviksuq ! is ground drifting
natmaktuq ! carries on the back, back packs (K)
natqigutigaa ! forgives him (lit. corrects him) (K)
natqiksruqtuq ! is correcting one who has unknowingly erred
nauruq ! grows
naulikkaa ! spears it
nautchiiruq ! plants
nautkiaqtuq ! jumps down
naviagaa ! does not dare it
naviagigaa ! is dangerous for him
navianaqtuq ! is dangerous
naviktuq ! breaks
navikkaa ! breaks it
nayaaŋaġaa   ! greets him, sends him greetings (K)
nayagaqtuq ! is drowsy (N)
nayaŋaqtuq ! is drowsy
nayuġaa   ! lives with him, stays with him
nayuutiruq ! stays, remains
naġġugigaa ! despises it, rejects it
naŋiatchaktuq ! fears a situation
naŋittuq ! is sick
naŋittuq ! is sick (malaise)
niaqunŋuruq ! has a headache
nigaqtuq ! is snared
nigaqtuqtuq ! is snaring caribou or sheep
nigaqtuqtuq ! is snaring small game
niglaqtuq ! has cooled (of food, drink)
nigliñaqtuq ! is cold (not weather)
niguaqtuqtuq ! is wary (N)
nikatchaktuq ! gives up (N)
nikpaqtuq ! waits for an animal to appear (N)
niksaaqtuq ! burps (K)
niksiksuqtuq ! is hooking (jigging) fish
niksiḷiuqtuq ! makes a hook
niliqtuq ! expels flatus (gas)
nipaalaruq ! screams
nipiruq ! (sun, moon) sets
nipittuq ! is sticky
nipituruq ! is noisy, loud
niptaruq ! is bright weather (N)
niptaqtuq ! is clearing, clouds are dispersing
niqipialiuqtuq ! boils meat (K)
niqiqaqtuq ! has meat
niqiłuktuq ! is poor meat (food)
niqniaqtuq ! is cooking (K)
niuruq ! (sun, moon) appears from behind cloud
niuruq ! disembarks
niuriruq ! unloads
niuriruq ! unloads sled (K, N)
niuriruq ! unloads, longshores
nivaktuq ! paws (K)
nivaktuq ! shovels, digs
nivaktaqtuq ! falls backward (N)
niviqtuq ! lays on his back (K)
niviŋaġaa   ! hangs it up
niviŋaqtuq ! hangs down
niñŋiqsimaruq ! is insulating dwelling by building a wall of snow blocks about it and placing soft snow between the wall and the dwelling
niġiruq ! eats
niġianiktuq ! has already eaten
niġiaqtuq ! is going to eat
niġipchaġaa   ! he feeds him
niġiqsuruq ! like to eat excessively (N)
niġiraksrauruq ! must be eaten
niġiruksrauruq ! has to eat
niġisuktuq ! is hungry (K)
niġisuġuiqsuq ! has had enough food
niġiugigaa ! expects him (K, N)
niġiuktuq ! expects, hopes (N)
niġiľauraqtuq ! is eating a little
niġḷiktuq ! choked to death
niġvallaksraaqtuq ! falls backward (K)
niŋitkaa ! kuvraq is setting net
niŋitchiruq ! sets out, plants
nuiruq ! comes into view, rises (sun)
nuktaqtuq ! moves from place to place
nullaqtuq ! camps
nullautchiġñaqsiruq ! is supper time
nunagiksuq ! is a good land
nunuuraqtuq ! is remorseful
nuqitkaa ! draws, pulls it
nuqitchiruq ! raises an object by pulling with a rope
nutauruq ! is new
nutiktuq ! leaps
nutqaqtuq ! stops, dies
nutqaqtitkaa ! stops it
nuttaġigaa ! leaps at him
nuuruq ! moves to another dwelling
nuuttuq ! moves to another dwelling
nuvaktuq ! has a cold
nuvaksiruq ! has a cold
nuviyaliqsuq ! is overcast, is getting cloudy
nuvuyalaqtuq ! is cloudy (broken)
nuvuyaliqsuq ! is overcast, is getting cloudy
nuvuyaŋŋuqsaiññaġaa   ! is changing to cloudy weather
nuyuaqtuq ! is wary (K)
nuyuiqsuq ! is not afraid, is not scared
nuŋuruq ! is used up
paaġaa   ! meets him
paalaktuq ! stumbles, falls forward
paamaktuq ! crawls on all fours
paamġuqtuq ! crawls
paaġurraqtuq ! paddles (qayaq)
pairuq ! stays behind, stays home (when others went on a journey)
paitchaktuq ! inherits (K)
pakaktuq ! searches
pakiktuq ! searches (K)
paniktuq ! is thin, skinny
paniqtuq ! is dry
pannauruq ! is thin, skinny
paqittuq ! finds
pasigaa ! blames him, accuses him (N)
pasiaqtuq ! warms himself by the fire
pasigigaa ! suspects him, blames him
pasinaqtuq ! is guilty
pasrigaa ! blames him, accuses him (K)
pasrigigaa ! suspects him, blames him (K)
patchisaiġaa   ! frees him
patchisaiqsauruq ! is not guilty, innocent
patchisauruq ! is guilty
patchisigigaa ! accused, blamed him, condemns him, finds him guilty
patchisigigaa ! blames him, accuses him (K)
patiktuq ! slaps
pauŋaqtuq ! travels inland
payuktaqtuq ! gives gift of food
paġlaġaa   ! welcomes him
pałuqtuq ! capsizes (K)
paŋaliktuq ! gallops
piaptuq ! sloppy (n)
pigaaqtuq ! stays up late
pigiitḷuktuq ! it is worse
piiġaa   ! removes it
piiguqtuq ! forgets
piiḷaaqtuq ! denies
piiqsuq ! is absent
piiqsuq ! is taken away
piiyaġaa   ! breaks it
piiyaqtuq ! is broken
piksraqtaaġigaa ! is choosing him
piksraqtaaġuruq ! chooses (N)
piksrutitaqtuq ! shovels
piḷaaqtuq ! cares for baby
piḷaiqsuq ! is tired
piḷaiqsuq ! is tired (N)
piḷaiŋiaqsiaqtuq ! takes a rest (a break from work)
piḷaktuq ! butchers an animal (performs surgery)
piḷiuqtuq ! is making
piḷḷaruq ! is able to do (N)
piḷḷuataqtuq ! is dependable, is good (N)
piḷḷuataqtuq ! is good, dependable
piḷuiḷḷiqsuq ! is not as capable as used to be
piḷuktuq ! is bad (N)
piḷuktuq ! is bad, sins (N)
piḷuktuq ! sinned (N)
piḷuksisuguuruq ! is always wanting to do badly
piḷġaġaa   ! braids hair
piḷġataqtuq ! finally he did it
pimaqłuktuq ! is bad
pimmaġiksaaqtuq ! does it well
piqpagigaa ! loves him
piqpaktuq ! is expensive, precious, valuable
piqpaksriruq ! loves
piqpaksriruq ! loves, precious
piqsiqsuq ! is snow storming (b)
pisaasruktuq ! is always trying to do (K)
pisaasruktuq ! is clever (K)
pisaasuqtuq ! is clever (N)
pisaasuuruq ! is always trying to do (N)
pisaayugaġaa   ! provokes him
pisikkaa ! shoots it, hits it (N)
pisiksaqtuq ! tries to shoot, tries to hit (N)
pisruktuq ! walks (K)
pisuaqtuq ! walks
pisuaqtuq ! walks (N)
pisuktuq ! flees
pisuktuq ! wants, desires
pisukataqtuq ! takes a stroll
pisuġiuqsuq ! is enough (as when filling gas tank)
pitḷaruq ! is able to do (K)
pitḷautaqtuq ! is dependable, is good
pitquruq ! commands
pituktuq ! ties up (as a dog to a pole)
pitukkaa ! ties it, (dog, boat)
pitukkaa ! ties up, anchors
piuraaqtuq ! plays, fools around
pivuittaqtuq ! loves (of marriage) (N)
piyaqquqtuq ! had an accident
piyuaġaa   ! tempts him, pursues him
piñaqtuq ! happened
piñiaqtuq ! will do, happen
piñiġliruq ! inadvertently startles animal
piññaqnaqtuq ! is good-looking, beautiful (K)
piññaqnaqtuq ! is pretty
piññaġiaqtuq ! is early
piġuqtuq ! is haughty (N)
piŋŋuaqtuq ! is pretending
piŋŋuaqtuq ! pretends
puggutchiruq ! washes dishes (N)
puggutchiqiruq ! washes dishes (K)
puiruq ! surfaces
puktaktuq ! stinker (dead animal floating after having first sunk) (q)
puktuktuq ! stinker (dead animal floating after having first sunk) (N)
pularuq ! is eclipsed (lit. slipped into the brush)
punniliuqtuq ! bakes bread (N)
punŋaruq ! bows low, hides from animal while stalking (used for non-appearance of sun in December) (K)
puptaruq ! floats
puptaktuq ! stinker (dead animal floating after having first sunk) (K)
puqiksuq ! is quick to learn, is wise (K)
puttuq ! bows
puttuq ! bows, bends at the waist
putchimaallaktitchaġaa   ! stores moistened skin for short while
putchimaapkaqsaaġaa   ! stores moistened skin overnight
puttuqsriruq ! comes to mind, is inspired (N)
puturiruq ! made a hole, drilled a hole
putyukkaa ! pinches it (K)
puuguqtuq ! forgets (p)
puukaqtuq ! stumbles
puuvraaqtuq ! plays in water
puuvraktuq ! swims, plows through deep soft snow (N)
puuvraqtuq ! swims (human swimming only)
puuvruktuq ! swims, plows through deep soft snow (K)
puuyuqtuq ! forgets (K)
puuġniġaa   ! wraps it
puyattuq ! is dirty, grimy, gummy
puyauruq ! is soiled, (e.g. of unwashed clothes)
puyuaqtuq ! stalks (K)
puyugaktuq ! is approaching a sea mammal by crawling (N)
puyyukkaa ! pinches it (N)
qaaktuqtuq ! is seining
qaaliqsiruq ! roofs a house
qaamasraaqtuq ! is buoyantly joyful (K)
qaamatchaktuq ! is buoyantly joyful (N)
qaaqtuq ! bursts, explodes (N)
qaaqsiñiiraulġataqtuq ! readily blows his top (K)
qaayuliqsuq ! dirties himself (of baby messing diaper)
qaaŋaniittuq ! is on top
qaaŋiałausrimaruq ! veers away, goes to excess (K)
qairuq ! comes (N)
qairuq ! comes (n)
qaiḷiqsuq ! is rough water
qaiqsuq ! is smooth, level, flat
qaisugnaġniqsuq ! is thought he is coming (I think he is coming
qaitchiruq ! gives
qaitchigaa ! gives it
qaiyasiruq ! is about to come
qaiyumaaqtuq ! will come (someday)
qakiġaa   ! boxes him
qaliuqtuq ! cooks fish (K)
qalliruq ! approaches, nears
qalligaa ! draws near
qallugauraqiruq ! washes dishes (N)
qaluruq ! is dip netting
qalugaa ! is dip netting
qaluktuq ! catches a fish (K)
qaluuqtuq ! is dip netting
qaluŋniaqtuq ! is fishing (K)
qalġuqtuq ! croaks, crows, quacks, honks, whistles
qamiruq ! goes out, extinguishes itself
qamittuq ! is turned off, extinguished
qamitkaa ! turns it off, extinguishes it
qamŋuiruq ! snores (N, K)
qanigruaqtuq ! is snowing (no wind) (K)
qanittuq ! is near
qanittuq ! is near, is close
qanniġaa   ! orders it
qanniksuq ! is snowing (no wind) (N)
qapiktuq ! is discouraged
qapiqtaiḷiluuruq ! argues heatedly
qapiqtaiḷisuuruq ! argues incessantly
qapiŋaisaaġaa   ! encourages him
qapiŋaisaaqtuq ! encourages
qaqqiruq ! bakes bread (K)
qaqquġaa   ! cracks it
qaqquqtuq ! crunches, cracks
qaquaġlaaġnaqtuq ! is tense because of impending unpleasantness (N)
qaqugauġlaaqtuq ! is tense because of impending unpleasantness (K)
qarvaktuq ! fleshes sea mammal (and polar bear), tans (N)
qasraqtuq ! bell rings (K)
qasruruq ! is withered (K)
qasruqtuq ! ends, quits, stops, is satisfied (K)
qasuiruq ! meet (by chance) while travelling
qasuutiruq ! meets, rendezvous
qasuŋaruq ! is withered (N)
qatchaqtuqtuq ! is knocking
qatchaqtuqtuq ! knocks, is knocking
qatiqtuq ! is white
qatmiksuq ! is impatient, dislikes to wait (K)
qatvaktuq ! fleshes sea mammal (and polar bear), tans (K)
qaummaiḷiqsuq ! is lightning
qaummaqtuq ! clear, translucent, light enough to see
qaummaġiksuq ! is bright
qaunagigaa ! cares for him
qaunaksriruq ! cares
qauriaqtuq ! rests
qaurimmiaqtuq ! fainted (N)
qauġriruq ! becomes conscious
qauġriliqtuq ! catches on (K)
qavaqtuq ! sleeps on back in water (N, q)
qavaqtuq ! to sleep on back in water (of seal)
qaviuġnaqsauruq ! glamorous, seductive
qaġanaqtuq ! is easy (K)
qaġanaqtuq ! is easy, not difficult (K)
qaġanatluktuq ! it is easier
qiaruq ! cries
qiallaktuq ! cries much
qiarraqsiruq ! starts to cry (N)
qiatuqtuq ! intestine that is turned inside out, cleaned and eaten
qiayaqsiruq ! starts to cry (K)
qichaqtuq ! stand upright (K)
qigluktuq ! is saddened about a loss
qigluktuq ! sorrows, mourns
qiiqsruktuq ! has convulsions, is an epileptic
qiiyanaqtuq ! is cold
qikisitkaa ! warps it
qikiŋaruq ! is warped
qiksiksraqtuq ! respects, fear of a person who is not well known (N)
qiluruq ! has a muscle cramp
qiluriruq ! has a muscle cramp
qiḷaruq ! conjures, divines
qiḷiqtuq ! ties a knot
qiḷuktuq ! barks (dog, fox)
qimaktuq ! escapes, flees
qimuktuq ! pulls
qimuktuq ! pulls (of an animal)
qinnaktuq ! fights, plays roughly
qinnaktuq ! is angry
qinuruq ! slush ice is forming, floating downstream
qipigaa ! twists it
qipiġniuqtuq ! desires
qipiŋaruq ! is twisted
qipriruq ! twists sinew, makes thread (K)
qiqittuq ! is frozen (part of body)
qiqitigaa ! freezes it quickly, has frostbite
qiqsrauruq ! is frozen (not of body) (K)
qiqumaruq ! is frozen (not of body) (N)
qirriuqtuq ! chops fire wood
qiruksiruq ! carries wood inside
qiruktaqtuq ! is going for wood
qitchuktuq ! scratches
qitchuktiġaa   ! scratches it
qitiqaqtuq ! noon (lit. has middle)
qitiqqutchiġnaqsiruq ! is lunch time (noon meal) (N, q)
qituttuq ! is soft, flexible
qityaġnaqtuq ! is bright, glaring
qiuriruq ! freezes
qiuññalaaqtuq ! is spine tingling (N)
qiviruq ! lays on his back (N)
qivialuktuq ! first vertebra (atlas)
qiviaqtuq ! turns head, looks behind (N)
qiviaġaaqtuq ! turns head right and left (N)
qiviktuq ! commits suicide (N)
qiviqtuq ! leaves another, not wanting to be together (N)
qivittuq ! leaves another, not wanting to be together (K)
qiviŋaaqtuq ! stands proudly, erect
qivliqtuq ! shines, glitters, sparkles
qivġuruq ! leaves because angry (b), leaves home because angry (ap) (N)
qiñiġaa   ! watches it
qiñiqtuq ! watches
qiñiyunaqtuq ! is beautiful (lit. pleasant looking)
qiñiġiksuq ! is good looking
qiñuruq ! to cry fitfully (of a baby)
qiñunġuruq ! mourns (as in death)
qiñuvġuruq ! mourns (as in death) (K)
qiġñiqtuq ! is black (K)
qiġġaġaa   ! has a stiff muscle
quaġaa   ! splits, separates, loosens it (of things frozen or otherwise fused together)
quaqtuq ! splits loose (e.g. the sole from a shoe), eats quaq (frozen food)
quiruq ! urinates (N, K)
quisuuruq ! urinates (N)
quiñaqtuq ! tickles
quiñiruq ! is fat (N)
quiññalasraaqtuq ! is spine tingling (K)
quiññiqtauruq ! is ticklish
qulauttuq ! is passing overhead
quliaqtuaqtuq ! confess (N)
quliaqtuaqtuq ! preach (K)
quliaqtuaqtuq ! relates, confesses (N), preaches (K)
quliaqtuaqtuq ! tell a true story, an experience
quluularuq ! stomach growls
qulviruq ! weeps
qupaġuqtuq ! (moon) is half
qupiruq ! splits, cracks
qupyuġaġniqsuq ! is whiteout (K)
ququularuq ! calls (N, q)
ququularuq ! shouts (N)
qusauqtuq ! sits
qusauqtuaqtuq ! squats (N)
qusrauqtuaqtuq ! squats (K)
qutchiksuq ! is high
quuniqsuq ! is calm
quviasruktuq ! is happy (K)
quviasuktuq ! is happy
quviasuktuq ! is happy (N, q)
quviasuktuq ! is happy (within himself)
quviġusruktuq ! is surprised, amazed, astonished (K)
quvyuġaġniqsuq ! is whiteout
quyaruq ! is thankful
quyaruq ! thanks, praises, expresses appreciation
quyanaqtuq ! is to be thankful, is to be praised (K)
quyatchaktuq ! is thankful
quġliaqtuq ! drools, slobbers, oozes (of tree resin)
quġluqtuq ! waterfall
saagaqtuq ! carries by hand, by arm
saattuq ! faces him
saattuq ! is thin
saattuq ! turn to face someone
saavittuq ! launches a boat in chase, comes forward
saavittuq ! launches in pursuit of sea mammal, steps forward from a group
sagluruq ! lies, prevaricates
sagluuraqtuq ! joking by telling false stories
sagviruq ! is open, is obvious
saiñġisuktuq ! is chagrined
saiñġitchaktuq ! regrets
sakuuktuq ! works hard (K)
sakłaqtuq ! shouts (N)
salikkuqtuq ! sweeps (q)
salumaruq ! is clean
salummaġaa   ! cleanses it
samaniittuq ! is down there (out of sight)
samuŋaqtuq ! travels downriver, travels coastward
sanaturuq ! is skilled
sanuqiġaa   ! puts siding on it (house)
sanŋiyaqtuq ! sweeps (K)
sanŋuruq ! is dusty, dirty
sapiruq ! blocks it (one's way)
sapiġaa   ! is difficult (K)
sapiġnaqtuq ! is strong, mighty (N)
sapiġnałhaaqtuq ! is stronger
sapiġñaqsiruq ! is difficult (K)
saquŋaruq ! is crooked, bent
satuġaa   ! obtains it back, redeems it (K)
savagniḷuktuq ! is trying to work
savagniuraaqtuq ! is doing what work he can!
savagvigigaa ! works for him
savaktuq ! works, makes
savakkaa ! works it
savaksimaruq ! is working
savaktaksrauruq ! must be worked
savaktuksrauruq ! has to work
savallautaqtuq ! is working well
savapaluktuq ! is working much (hard)
savapałłuktuq ! is working poorly (ineffectively)
savapiallaktuq ! is working quite hard
savapiaqtuq ! is really working
savapiaġataqtuq ! is working extremely hard
savautigaa ! serves him
savaŋaruq ! he worked
savaŋniuraqtuq ! is doing what work he can!
saviksuqtuq ! uses a knife
savitkaa ! feels it, touches it
savituruq ! sly, foxy (K, N)
savvakturuq ! is always working diligently
sayakturuq ! is healthy, strong
sayakturuq ! is strong, healthy
saġliaqtuq ! holds baby on knee
saġvaġaa   ! flows swiftly over it
saġvaqtuq ! flows
saŋiaktuq ! is jealous (suspecting marital unfaithfulness)
saŋniruq ! is strong (N)
saŋutkaa ! gossips about him
saŋŋiruq ! is strong (K)
sialuktuq ! is raining (N, n)
sialukkattaqtuq ! scattered rain showers
siamittuq ! spreads, scatters
siatqiksuq ! is straight (as of a board)
sigñaruq ! is greedy (N)
siiksuq ! is cutting fish (for drying)
siimaktuq ! argues (N)
siimaktuq ! is arguing heatedly
siiqsipkaqtuq ! sweats (K)
siiġḷanŋuruq ! has a sour stomach (K)
siiġḷanŋuliqsuq ! has a sour stomach (N)
siiġruktuq ! hisses, whistles (of wind, gas stove or lantern)
siiġñaaqtuq ! is sweet
sikkaa ! shoots it, hits it (K)
sikiruq ! moves head forward and down
siksaqtuq ! tries to shoot, tries to hit (K)
sikuliqiruq ! is in process of break-up
sikñaruq ! is greedy (K)
siḷagiksuq ! is good weather
siḷaluktuq ! is bad weather (N)
siḷaluktuq ! is raining (K)
siḷaluktuq ! is rainy (K)
siḷaŋiqsuq ! is carousing
siḷiktuq ! is wide (K)
siḷġiksuqtuq ! is correcting one who wilfully erred
simmiġaa   ! changes it, exchanges it
simmiḷiġaa   ! returns something borrowed
siqiłhatittuq ! slaps the water with his tail (beaver)
siqquqtuq ! is hard
siqquqtuq ! is opinionated, not easily persuaded (lit. is hard)
siqsuruq ! capable, enduring
siqsuruq ! is daring (strong), is enduring (persistent hunter) (N)
siquruq ! eyes are closed
siquruq ! goes to sleep, closes his eyes
siquniġaqtuq ! winks
siqunġipaktaqtuq ! blinks
siqusuktuq ! wants to go to bed
siquyaqtuquyumagaluaġaa   ! want him to go to bed
sisuruq ! 
sisugaqtuq ! slides down a hill (N)
sisugiaqtuq ! baby has a wet burp
sisuraġaaqtuq ! slides down a hill (K)
sitquqtuq ! kneels
sitquqsimanaqtuq ! is "tied up in knots", tense because of impending unpleasantness
sitquqsimanaqtuq ! is tragic
sivisuruq ! is a long distance, is of long duration
sivruuraqtuq ! whispers
sivulliġaa   ! he leads him (lit. he is foremost to him)
sivuniqtuuguuruq ! is obstinate (N)
sivunmuuruq ! is steadfast, continues on regardless (N)
sivunmuuruq ! is stubborn, continues on regardless (N)
sivunniġaa   ! decides it, plans it
sivutmuuruq ! is steadfast, continues on regardless (K)
sivutmuuruq ! is stubborn, continues on regardless (K)
sivutmuusruuruq ! is obstinate (K)
sivuuġaruq ! fears the consequence (N)
siñiktuq ! sleeps
siñiksraaqtuq ! goes around visiting from house to house, collects food for the poor from house to house (K)
siññaktuq ! dream
siññaktuqtuq ! dreams
siġḷiqiraqtuq ! works hard, is difficult
siġḷiġnaqtuq ! is difficult (N)
siġñiksrauruq ! is devoted
siġġaqtuq ! works hard (N)
siġġaqiruq ! is difficult, laborious
siŋaiyauruq ! is pregnant (N)
suaktuq ! scolds
suammaktuq ! is enduring (N)
suammaktuq ! revitalized (as: engine works better, workers more diligent)
suaŋaruq ! is strong
sukattuq ! is fast
suksraaġaa   ! gives up on it, forsakes him
suksraunġiqsuq ! is destroyed
suliuqtuq ! is cooking
suluktuqtuq ! brushes clothes
supiruq ! blows (of a person), rushes (of a stream during break-up)
supiruq ! flows, rushes (river at break-up)
suppuqtuq ! spurts out (of liquids under pressure)
suqumitkaa ! broke it up, tore it to pieces (K)
suqutigaa ! takes notice of someone, pays attention to someone
suurimaanġiqsuq ! is not concerned for law or other people (N)
suvliktuq ! gushes out (as oil from a punctured drum)
suġuktuq ! wrestles
suŋaaqtuq ! is green
taaktuq ! is dark
taaqsiruq ! is becoming dark
tagialaruq ! moves out of a home because not wanted
tagialanaqtuq ! inhospitable, unenjoyable atmosphere
tagiuqtuq ! sneezes
tagraqtuq ! travels up river by boat
tairuq ! is named
taigaa ! names him
taiguanŋuliqsuq ! is tired of reading
taiguaqtuq ! reads (N)
tainnaittuq ! is like
takiruq ! is long
takpiksuq ! has keen eyesight
taktuguġaa   ! it's foggy
taktuktuq ! is foggy
takupkaŋaruq ! has a reunion
taliinŋaruq ! goes over the hill
taluqsralliaqtuq ! browbeats
taluqsraqtuq ! is afraid of someone's sternness
taluġnaqtuq ! is stern, unfriendly, non-communicative
talġaktuq ! travels up river by sled (N)
tammaqtuq ! is lost
tammaġasrugigigaa ! thinking he is lost
tamuqtuq ! chews
tanuġaqsiruq ! diminishes in light
tapiqtuq ! is along sie, is parallel
taputigaa ! takes it along
taqqiruq ! waits (K)
tasiqsruqtuq ! stretches
tasiqsruġigaa ! stretches it
tasritchaġaa   ! stretches it
tasuġaa   ! obtains it, redeems it (N)
tasuġaa   ! ransomed, redeemed him (N,q)
tatamittuq ! gets very frightened
tatamnaqtuq ! is terrible, is very frightening
tatigaa ! lays against it, leans against it, touches it
tauqsiġaa   ! buys it
tautuktuq ! sees
tautukkaa ! sees it
tautuksiññaqtuq ! he simply sees
taŋiġiqsuq ! is false (lies)
taŋŋiġaa   ! does what is told, brings it to reality
taŋŋiqsuq ! is fulfilled
tiggaqtuq ! is stiff
tigliktuqtuq ! steals
tigliqtaqtuq ! is throbbing
tigluktuq ! hits with side of fist
tigluktuqtuq ! is knocking
tigluktuqtuq ! knocks, is knocking
tigugaa ! picks it up, takes it
tiguaqtuq ! adopted, is
tigumiaqtuq ! hand carries (N)
tigusiruq ! takes, lays hold of, picks up (N)
tigusriruq ! takes, lays hold of, picks up (K)
tiipaktuq ! is coquettish
tikitchumaaqtuq ! will arrive (someday)
tikitqauraqtuq ! races
tikkuaqtuq ! points
tilaktuq ! washes floor (N)
tilaġġiruq ! sweeps (N)
tilirauruq ! was told to do something, was sent to do something
tilisiruq ! sends
tipaaqtuq ! stinks
tipigaa ! washes it ashore
tipituruq ! stinks
tipsigigaa ! laughs at somebody, mocks someone
titiġaa   ! marks it, draws a line on it
titiqtuq ! draws a line, makes a mark
tivvuaqtuq ! spits
tiŋiruq ! flies away, takes off
tiŋilġairuq ! sails (N)
tiŋittuq ! drifts away
tiŋitkaa ! drifts him away
tiŋmiruq ! flies
tiŋŋiqsiruq ! gets full (of a person who eats too much or is pregnant)
tugaktuq ! pokes it with a stick
tuglauġaa   ! shields him, protects him
tukkuruq ! stays overnight, is a guest
tulaktuq ! returns from the water, lands
tumaqsruġaa   ! fits it together
tuniḷaġaa   ! gives it, makes a present of it, sacrifices it
tuniqsimaruq ! is faithful
tunisiruq ! sell
tunuttuq ! turns his back to
tunutkaa ! turns his back on him
tunŋaruq ! rests firmly on, trusts
tunŋagaa ! rests firmly on it
tupaktuq ! is startled
tupakkaa ! startles him
tupigigaa ! obeys him (K)
tuppiruq ! builds a house (K)
tupsigaa ! finds an animal track
tuqpallaktuq ! gets upset (K)
tuquruq ! dies
tuquttuq ! kills himself
tuqutkaa ! kills it
tuqutauyasiruq ! is about to be killed
tuqłuġaa   ! calls him, hails him
tuqłularuq ! calls (K)
tuqłuġaqtuq ! shouts (K)
tusaaruq ! hears (N)
tusiattuq ! is lame (N)
tusiḷḷaqtuq ! is deaf
tusraaruq ! hears (K)
tusriattuq ! is lame (K)
tusruruq ! is envious (K)
tusrugaa ! is envious of him (K)
tusuruq ! is envious (q)
tusugaa ! is envious of him (q)
tuttuq ! touches ground, bottom, lands
tutiruq ! steps on
tutqiksuq ! is content, is at peace (within)
tutqiksuq ! is content, is solid, is peaceful
tutquqtuuruq ! is settled in (having moved)
tuttaaqtuq ! goes to bed (N)
tuttuliaqtuq ! is hunting caribou
tuttunniqsuq ! has apparently caught a caribou
tuttutullaturuq ! likes to eat caribou
tuttutuqtuq ! eats caribou
tuttutuqtuq ! is eating caribou
tuutuq ! is lashing skin to the frame
tuuġaa   ! chisels it
tuuqtuq ! chisels
tuvaaqtuq ! attracts caribou by hollering
tuvlauġaa   ! shields him, protects him
tuvraġaa   ! follows him, tracks him, imitates him
tuvraqtuq ! follows a trail or pattern
tuyuġigaa ! sends it
tuġvaġaa   ! puts it away
uamittuq ! dances
ugaiġaa   ! bites him, mauls him
uiruq ! is over-excited, too eager, hurries
uiruq ! panics, is excited (too eager)
uisauruq ! is adrift on an ice pack
uivaqtuq ! comes around a point (N)
uivaqsaaqtuq ! rounds a bend (N)
uiñġaliqsuq ! is sleepy
ukamaqtuq ! pulls a boat along shore with a rope
ukpiliqsuq ! has come to believe
ukpiqtuq ! believes
ukpiġigaa ! believes it
ukpiġnaqtuq ! is faithful
ukpiŋŋuaqtuq ! hypocrite (pretend believer)
ukpiŋŋuaqtuq ! is pretend believing (hypocrite)
ukuŋaruq ! is moldy
uliqtuq ! wind
uluktuq ! rubs and twists hide to soften it
ululiruq ! is making an ulu
ulġuruq ! topples, falls over
umialiuqtuq ! makes a boat
umiaqtuqtuq ! travels by umiaq
umiktuq ! is closed (e.g. the chimney draft)
umŋiyaqtuq ! shaves
uniagiyaqtuq ! sled is broken
uniaġaqtuq ! sleds, travels by sled
uniuqtuq ! misses, doesn't hit (as nail, bull's eye)
unnautairuq ! is not now feverish
unniqsuqłiiruq ! promises (N)
unuŋaqtuq ! travels downriver, travels out on sea ice
upaktuġaa   ! charges him, goes after him
upaktuqtuq ! charges (of an angry animal or person)
upkuaġaa   ! closes it
upkuiġaa   ! opens it
upyakkaa ! remarks about it, wisecracks about it (K)
uqaalaruq ! talks bad language, blasphemes
uqaaqtuqtuq ! relates experiences, tells what happened (K)
uqallaktuq ! is speaking
uqamaqłuktuq ! blasphemes
uqamaqłuktuq ! is speaking badly (cursing)
uqaqtuq ! speaks, says, tells, talks
uqaqsiġiaqtuq ! is open to counsel (K)
uqaqtitaġaa   ! asked him to speak, talk
uqautigaa ! talks with him
uqautisruġnaqtuq ! is easy to talk to, amiable (K)
uqautisuġnaqtuq ! is easy to talk to, amiable (N, q)
uqayunaqtuq ! is receptive
uqayunaqtuq ! is receptive (lit. pleasant to talk with)
uqaġniġluktuq ! talks bad language, blasphemes (K)
uqaġvigigaa ! talks about it
uqigiyummiktuq ! heady, giddy, feeling light of body (N)
uqigḷiruq ! heady, giddy, feeling light of body (K)
uqqaqturuq ! talks always (i.e. like to talk), gossips (K)
uqsruqtiqtuq ! anoints, rub oil on body
uqsruuruq ! is fat (K)
uqumaiġigaa ! sucks it (something held in mouth)
urraaqtuq ! gesticulates
urriqsuġaa   ! demonstrates it, shows it by his actions
urriuqtuq ! boils meat (N)
usriḷiiruq ! loads sled (K)
utaqqiruq ! waits (N, q)
utiqtuq ! returns
utuqqauruq ! is old
uuruq ! boiled meat
uuktuq ! tests
uuksiruq ! tastes
uuktuaġaa   ! tests it, measures it
uuktuaqtuq ! tries, tests, measures
uuliktuq ! quivers, shakes, trembles
uumaruq ! is alive
uumalaaqtuq ! lively child
uumaniittuq ! it is this one here
uumiksriruq ! hates (K)
uumisaaġuraġaa   ! provokes him (K)
uunaqtuq ! is hot
uunaqtuq ! is warm
uunaqsiruq ! is becoming hot
uunaqłuktuq ! has a fever (K)
uunautiqaqtuq ! has a fever (N)
uunaġuġaa   ! it's warm
uusiruq ! is over-excited, too eager, hurries
uuyuruq ! is linked to
uvaniittuq ! is here
uviñaktuq ! is fat
uvliruq ! layover, rests between periods of travel or other activity
uvluqtusiruq ! days are getting longer (N, q)
uvluqtusriruq ! days are getting longer (K)
uvuŋaqtuq ! comes here, hither
uyummiqsuq ! is misty, blurred
uġuqtuq ! is damp
uġuuruq ! is wet from dew
uŋasiksuq ! is far
uŋasiksigiruq ! is thus far
uŋasriksuq ! is far
uŋiarriruq ! worries (N)
uŋugaa ! drives it (an animal)
uŋuluġusaaqtuq ! frightens away an attacking animal (N)
ŋraiḷiuqtuq ! fries meat



List of double verbs (to be uniqued, a handful is taken already)
In addition comes double verbs with different contlexes.
They skall be kept as-is.

aiḷaq IV
aitchu TV_vow
akima IV_vow
aktigi IV_vow
aku IV
aliuq IV
allayuaq IV
allaŋŋuq IV
alġaqsrui IV_vow
ani IV_vow
annak IV
anniqsui IV_vow
aqi TV_vow
aqpat IV
ataaqtuq IV
atanġusuk IV
atlayuaq IV
atniġñaq IV
atu TV_vow
atuq IV
atuŋaiq verb_intr_suq
aula IV_vow
aullaq IV
aullaqtit TV
aŋi IV_vow
aŋivraq IV
aŋu IV_vow
aŋu TV_vow
iglaŋaaq IV
igḷutui IV_vow
iki IV_vow
ikpiktitaq IV
iku TV_vow
ikuk IV
iḷali IV_vow
iḷaqatnik IV
iḷiqsaq IV
iḷḷati IV_vow
imŋaluk IV
iqiasuk IV
iqsi IV_vow
iñiqtiq IV
iñugik verb_intr_suq
iñuguq IV
iłuaqsi IV_vow
kalak IV
kayuq IV
killukuaq IV
kiŋiaq IV
kuvi TV_vow
maliksuktitau IV_vow
maqi IV_vow
mayuq IV
naavit TV
nagligi TV_vow
nai IV_vow
nakuu IV_vow
nallaq IV
nanġaq IV
napa IV_vow
napaaq IV
narranŋu IV_vow
naŋit IV
nigaqtuq IV
niu IV_vow
niuri IV_vow
nivak IV
niġi IV_vow
patchisigi TV_vow
piiq verb_intr_suq
piḷaiq verb_intr_suq
piḷḷuataq IV
piḷuk IV
piqpaksri IV_vow
pisaasruk IV
pisik TV
pisuaq IV
pisuk IV
pituk TV
piññaqnaq IV
piŋŋuaq IV
put IV
qai IV_vow
qanit IV
qatchaqtuq IV
qavaq IV
qaġanaq IV
qigluk IV
qimuk IV
qinnak IV
qiqiti TV_vow
qiruktaq IV
qiuri IV_vow
qiviaq IV
qivit IV
qivliq IV
qiñiyunaq IV
quliaqtuaq IV
ququula IV_vow
quviasuk IV
quya IV_vow
saat IV
saavit IV
satu TV_vow
sayaktu IV_vow
siimak IV
siḷaluk IV
siqquq IV
siqsu IV_vow
siqu IV_vow
sitquqsimanaq IV
sivunmuu IV_vow
sivutmuu IV_vow
suammak IV
supi IV_vow
taiguaq IV
tasu TV_vow
tautuk TV
tigluktuq IV
tutqik verb_intr_suq
tuttutuq IV
ui IV_vow
ukpiŋŋuaq IV
uqamaqłuk IV
uqayunaq IV
uunaq IV
This was a list of doublet verbs.


* * *
<small>This (part of) documentation was generated from [../src/fst/stems/verbs.lexc](http://github.com/giellalt/lang-ipk/blob/main/../src/fst/stems/verbs.lexc)</small>
# Nouminal roots 

stems according to Edna MacLean


## Proper nouns, pronouns and particles 

These lexica are stored here for convenience at the moment.
They should be moved to separate files when the project is
scaled up to full size.

LEXICON prop 

LEXICON pron 

LEXICON part 


## The noun lexicon 

Tronds additions marked !tt, remove !tt tag when the contlex is checked.

LEXICON Nouns 

Numerals


the alphabetic list




Added from dictionary

* * *
<small>This (part of) documentation was generated from [../src/fst/stems/nouns.lexc](http://github.com/giellalt/lang-ipk/blob/main/../src/fst/stems/nouns.lexc)</small>
# Abbreviations

Nothing done.

LEXICON abbr goes to #.
* * *
<small>This (part of) documentation was generated from [../src/fst/stems/abbreviations.lexc](http://github.com/giellalt/lang-ipk/blob/main/../src/fst/stems/abbreviations.lexc)</small>
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

* * *
<small>This (part of) documentation was generated from [../src/fst/root.lexc](http://github.com/giellalt/lang-ipk/blob/main/../src/fst/root.lexc)</small>










The philosophy behind this is that we need only one
derivational section:
verb iv or tv -> DER -> infl iv or tv -> f lexicon
The f lexicon then deletes iv+tv and tv+iv combinations,
and leaves only iv+ív and tv+tv

* * *
<small>This (part of) documentation was generated from [../src/fst/clitics.lexc](http://github.com/giellalt/lang-ipk/blob/main/../src/fst/clitics.lexc)</small>


We describe here how abbreviations are in Inupiaq are read out, e.g.
for text-to-speech systems.

For example:

 * s.:syntynyt # ;  
 * os.:omaa% sukua # ;  
 * v.:vuosi # ;  
 * v.:vuonna # ;  
 * esim.:esimerkki # ; 
 * esim.:esimerkiksi # ; 


* * *
<small>This (part of) documentation was generated from [../src/transcriptions/transcriptor-abbrevs2text.lexc](http://github.com/giellalt/lang-ipk/blob/main/../src/transcriptions/transcriptor-abbrevs2text.lexc)</small>















































% komma% :,      Root ;
% tjuohkkis% :%. Root ;
% kolon% :%:     Root ;
% sárggis% :%-   Root ; 
% násti% :%*     Root ; 

* * *
<small>This (part of) documentation was generated from [../src/transcriptions/transcriptor-numbers-digit2text.lexc](http://github.com/giellalt/lang-ipk/blob/main/../src/transcriptions/transcriptor-numbers-digit2text.lexc)</small>
[ L A N G U A G E ]  G R A M M A R   C H E C K E R









# DELIMITERS


# TAGS AND SETS



## Tags


This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.




### Beginning and end of sentence
BOS
EOS



### Parts of speech tags

N
A
Adv
V
Pron
CS
CC
CC-CS
Po
Pr
Pcle
Num
Interj
ABBR
ACR
CLB
LEFT
RIGHT
WEB
QMARK
PPUNCT
PUNCT

COMMA
¶



### Tags for POS sub-categories

Pers
Dem
Interr
Indef
Recipr
Refl
Rel
Coll
NomAg
Prop
Allegro
Arab
Romertall


### Tags for morphosyntactic properties

Nom
Acc
Gen
Ill
Loc
Com
Ess
Ess
Sg
Du
Pl
Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen
PxSg1
PxSg2
PxSg3
PxDu1
PxDu2
PxDu3
PxPl1
PxPl2
PxPl3
Px

Comp
Superl
Attr
Ord
Qst
IV
TV
Prt
Prs
Ind
Pot
Cond
Imprt
ImprtII
Sg1
Sg2
Sg3
Du1
Du2
Du3
Pl1
Pl2
Pl3
Inf
ConNeg
Neg
PrfPrc
VGen
PrsPrc
Ger
Sup
Actio
VAbess



Err/Orth



### Semantic tags

Sem/Act
Sem/Ani
Sem/Atr
Sem/Body
Sem/Clth
Sem/Domain
Sem/Feat-phys
Sem/Fem
Sem/Group
Sem/Lang
Sem/Mal
Sem/Measr
Sem/Money
Sem/Obj
Sem/Obj-el
Sem/Org
Sem/Perc-emo
Sem/Plc
Sem/Sign
Sem/State-sick
Sem/Sur
Sem/Time
Sem/Txt

HUMAN

HAB-ACTOR
HAB-ACTOR-NOT-HUMAN


PROP-ATTR
PROP-SUR



TIME-N-SET


###  Syntactic tags

@+FAUXV
@+FMAINV
@-FAUXV
@-FMAINV
@-FSUBJ>
@-F<OBJ
@-FOBJ>
@-FSPRED<OBJ
@-F<ADVL
@-FADVL>
@-F<SPRED
@-F<OPRED
@-FSPRED>
@-FOPRED>
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@>N
@Interj
@N<
@>A
@P<
@>P
@HNOUN
@INTERJ
@>Num
@Pron<
@>Pron
@Num<
@OBJ
@<OBJ
@OBJ>
@OPRED
@<OPRED
@OPRED>
@PCLE
@COMP-CS<
@SPRED
@<SPRED
@SPRED>
@SUBJ
@<SUBJ
@SUBJ>
SUBJ
SPRED
OPRED
@PPRED
@APP
@APP-N<
@APP-Pron<
@APP>Pron
@APP-Num<
@APP-ADVL<
@VOC
@CVP
@CNP
OBJ
<OBJ
OBJ>
<OBJ-OTHERS
OBJ>-OTHERS
SYN-V
@X





## Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.



### Sets for Single-word sets

INITIAL


### Sets for word or not

WORD
REAL-WORD
REAL-WORD-NOT-ABBR
NOT-COMMA


### Case sets

ADLVCASE

CASE-AGREEMENT
CASE

NOT-NOM
NOT-GEN
NOT-ACC

### Verb sets


NOT-V

### Sets for finiteness and mood

REAL-NEG

MOOD-V

NOT-PRFPRC


### Sets for person

SG1-V
SG2-V
SG3-V
DU1-V
DU2-V
DU3-V
PL1-V
PL2-V
PL3-V





### Pronoun sets

















### Adjectival sets and their complements




### Adverbial sets and their complements




### Sets of elements with common syntactic behaviour


### NP sets defined according to their morphosyntactic features








### The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.





















### Border sets and their complements











### Grammarchecker sets








* * *
<small>This (part of) documentation was generated from [../tools/grammarcheckers/grammarchecker.cg3](http://github.com/giellalt/lang-ipk/blob/main/../tools/grammarcheckers/grammarchecker.cg3)</small>