(deftemplate trastorno-personalidad
	(slot trastorno)
)

(deftemplate tratamiento-personalidad
	(slot tratamiento)
)

(defrule diagnosticar
	(P1 si)
	(P2 si)
	(P3 si)
	(P4 si)
	(P5 si)
	(P6 si)
	(P7 si)
	=>
	(assert (diagnosticar si))
)

(defrule tipo-personaA
	(diagnosticar si)
	(8A si)
	=>
	(assert (9A si))
	(assert (9B si))
	(assert (9C si))
)

(defrule tipo-personaB
	(diagnosticar si)
	(8B si)
	=>
	(assert (10A si))
	(assert (10B si))
	(assert (10C si))
	(assert (10D si))
)

(defrule tipo-personaC
	(diagnosticar si)
	(8C si)
	=>
	(assert (11A si))
	(assert (11B si))
	(assert (11C si))
)

--------------------------------- TRASTORNO PARANOIDE ------------------------------------

(defrule posible-paranoide
	(9A si)
	(PAR12 ?par12)
	(PAR13 ?par13)
	(PAR14 ?par14)
	(PAR15 ?par15)
	(PAR16 ?par16)
	(PAR17 ?par17)
	(PAR18 ?par18)
	(PAR19 ?par19)
	(test (>= (+ ?par12 ?par13 ?par14 ?par15 ?par16 ?par17 ?par18 ?par19) 4))
	=>
	(assert (trastorno posible-paranoide))
)

(defrule diagnostico-paranoide
	(trastorno posible-paranoide)
	=>
	(assert (trastorno-personalidad (trastorno paranoide)))
)

--------------------------------- TRASTORNO ESQUIZOIDE -----------------------------------

(defrule posible-esquizoide
	(9B si)
	(EZI20 ?ezi20)
	(EZI21 ?ezi21)
	(EZI22 ?ezi22)
	(EZI23 ?ezi23)
	(EZI24 ?ezi24)
	(EZI25 ?ezi25)
	(EZI26 ?ezi26)
	(EZI27 ?ezi27)
	(test (>= (+ ?ezi20 ?ezi21 ?ezi22 ?ezi23 ?ezi24 ?ezi25 ?ezi26 ?ezi27) 4))
	=>
	(assert (trastorno posible-esquizoide))
)

(defrule diagnostico-esquizoide
	(trastorno posible-esquizoide)
	=>
	(assert (trastorno-personalidad (trastorno esquizoide)))
)

--------------------------------- TRASTORNO ESQUIZOTIPICO --------------------------------

(defrule posible-esquizotipico
	(9C si)
	(EZT28 ?ezt28)
	(EZT29 ?ezt29)
	(EZT30 ?ezt30)
	(EZT31 ?ezt31)
	(EZT32 ?ezt32)
	(EZT33 ?ezt33)
	(EZT34 ?ezt34)
	(EZT35 ?ezt35)
	(EZT36 ?ezt36)
	(EZT37 ?ezt37)
	(test (>= (+ ?ezt28 ?ezt29 ?ezt30 ?ezt31 ?ezt32 ?ezt33 ?ezt34 ?ezt35 ?ezt36 ?ezt37) 5))
	=>
	(assert (trastorno posible-esquizotipico))
)

(defrule diagnostico-esquizotipico
	(trastorno posible-esquizotipico)
	=>
	(assert (trastorno-personalidad (trastorno esquizotipico)))	
)

--------------------------------- TRASTORNO ANTISOCIAL -----------------------------------

(defrule posible-antisocial
	(10A si)
	(ANT38 1)
	(ANT39 1)
	(ANT40 ?ant40)
	(ANT41 ?ant41)
	(ANT42 ?ant42)
	(ANT43 ?ant43)
	(ANT44 ?ant44)
	(ANT45 ?ant45)
	(ANT46 ?ant46)
	(test (>= (+ ?ant40 ?ant41 ?ant42 ?ant43 ?ant44 ?ant45 ?ant46) 3))
	=>
	(assert (trastorno posible-antisocial))
)

(defrule diagnostico-antisocial
	(trastorno posible-antisocial)
	=>
	(assert (trastorno-personalidad (trastorno antisocial)))
)

--------------------------------- TRASTORNO DE LIMITE ------------------------------------

(defrule posible-limite
	(10B si)
	(LIM47 ?lim47)
	(LIM48 ?lim48)
	(LIM49 ?lim49)
	(LIM50 ?lim50)
	(LIM51 ?lim51)
	(LIM52 ?lim52)
	(LIM53 ?lim53)
	(LIM54 ?lim54)
	(LIM55 ?lim55)
	(test (>= (+ ?lim47 ?lim48 ?lim49 ?lim50 ?lim51 ?lim52 ?lim53 ?lim54 ?lim55) 5))
	=>
	(assert (trastorno posible-limite))
)

(defrule diagnostico-limite
	(trastorno posible-limite)
	=>
	(assert (trastorno-personalidad (trastorno limite)))	
)

--------------------------------- TRASTORNO OBSESIVO HISTRIONICO -------------------------

(defrule posible-histrionico
	(10C si)
	(HIS56 ?his56)
	(HIS57 ?his57)
	(HIS58 ?his58)
	(HIS59 ?his59)
	(HIS60 ?his60)
	(HIS61 ?his61)
	(HIS62 ?his62)
	(HIS63 ?his63)
	(test (>= (+ ?his56 ?his57 ?his58 ?his59 ?his60 ?his61 ?his62 ?his63) 5))
	=>
	(assert (trastorno posible-histrionico))
)

(defrule diagnostico-histrionico
	(trastorno posible-histrionico)
	=>
	(assert (trastorno-personalidad (trastorno histrionico)))
)

--------------------------------- TRASTORNO NARCISITA ------------------------------------

(defrule posible-narcicista
	(10D si)
	(NAR64 ?nar64)
	(NAR65 ?nar65)
	(NAR66 ?nar66)
	(NAR67 ?nar67)
	(NAR68 ?nar68)
	(NAR69 ?nar69)
	(NAR70 ?nar70)
	(NAR71 ?nar71)
	(NAR72 ?nar72)
	(test (>= (+ ?nar64 ?nar65 ?nar66 ?nar67 ?nar68 ?nar69 ?nar70 ?nar71 ?nar72) 5))
	=>
	(assert (trastorno posible-narcicista))
)

(defrule diagnostico-narcicista
	(trastorno posible-narcicista)
	=>
	(assert (trastorno-personalidad (trastorno narcicista)))
)

--------------------------------- TRASTORNO DE EVITACION ---------------------------------

(defrule posible-evitacion
	(11A si)
	(EVI73 ?evi73)
	(EVI74 ?evi74)
	(EVI75 ?evi75)
	(EVI76 ?evi76)
	(EVI77 ?evi77)
	(EVI78 ?evi78)
	(EVI79 ?evi79)
	(test (>= (+ ?evi73 ?evi74 ?evi75 ?evi76 ?evi77 ?evi78 ?evi79) 4))
	=>
	(assert (trastorno posible-evitacion))
)

(defrule diagnostico-evitacion
	(trastorno posible-evitacion)
	=>
	(assert (trastorno-personalidad (trastorno evitacion)))
)

--------------------------------- TRASTORNO DE DEPENDENCIA -------------------------------

(defrule posible-dependencia
	(11B si)
	(DEP80 ?dep80)
	(DEP81 ?dep81)
	(DEP82 ?dep82)
	(DEP83 ?dep83)
	(DEP84 ?dep84)
	(DEP85 ?dep85)
	(DEP86 ?dep86)
	(DEP87 ?dep87)
	(test (>= (+ ?dep80 ?dep81 ?dep82 ?dep83 ?dep84 ?dep85 ?dep86 ?dep87) 5))
	=>
	(assert (trastorno posible-dependencia))
)

(defrule diagnostico-dependencia
	(trastorno posible-dependencia)
	=>
	(assert (trastorno-personalidad (trastorno dependencia)))
)

--------------------------------- TRASTORNO OBSESIVO COMPULSIVO --------------------------

(defrule posible-obsesivo-compulsivo
	(11C si)
	(OBC88 ?obc88)
	(OBC89 ?obc89)
	(OBC90 ?obc90)
	(OBC91 ?obc91)
	(OBC92 ?obc92)
	(OBC93 ?obc93)
	(OBC94 ?obc94)
	(OBC95 ?obc95)
	(test (>= (+ ?obc88 ?obc89 ?obc90 ?obc91 ?obc92 ?obc93 ?obc94 ?obc95) 5))
	=>
	(assert (trastorno posible-obsesivo-compulsivo))
)

(defrule diagnostico-obsesivo-compulsivo
	(trastorno posible-obsesivo-compulsivo)
	=>
	(assert (trastorno-personalidad (trastorno obsesivo-compulsivo)))
)

------------------------------------------- TRATAMIENTOS ---------------------------------

(defrule tratamiento-paranoide
	(trastorno-personalidad (trastorno paranoide))
	=>
	(assert (tratamiento-personalidad (tratamiento jalartela)))
)

(defrule tratamiento-esquizoide
	(trastorno-personalidad (trastorno esquizoide))
	=>
	(assert (tratamiento-personalidad (tratamiento jalartela)))
)

(defrule tratamiento-esquizotipico
	(trastorno-personalidad (trastorno esquizotipico))
	=>
	(assert (tratamiento-personalidad (tratamiento jalartela)))
)

(defrule tratamiento-antisocial
	(trastorno-personalidad (trastorno antisocial))
	=>
	(assert (tratamiento-personalidad (tratamiento jalartela)))
)

(defrule tratamiento-limite
	(trastorno-personalidad (trastorno limite))
	=>
	(assert (tratamiento-personalidad (tratamiento jalartela)))
)

(defrule tratamiento-histrionico
	(trastorno-personalidad (trastorno histrionico))
	=>
	(assert (tratamiento-personalidad (tratamiento jalartela)))
)

(defrule tratamiento-narcicista
	(trastorno-personalidad (trastorno narcicista))
	=>
	(assert (tratamiento-personalidad (tratamiento jalartela)))
)

(defrule tratamiento-evitacion
	(trastorno-personalidad (trastorno evitacion))
	=>
	(assert (tratamiento-personalidad (tratamiento jalartela)))
)

(defrule tratamiento-dependencia
	(trastorno-personalidad (trastorno dependencia))
	=>
	(assert (tratamiento-personalidad (tratamiento jalartela)))
)

(defrule tratamiento-obsesivo-compulsivo
	(trastorno-personalidad (trastorno obsesivo-compulsivo))
	=>
	(assert (tratamiento-personalidad (tratamiento jalartela)))
)

-------------------------------------- DATOS DE PRUEBA -----------------------------------

(deffacts sintomas-paranoide
	(P1 si)
	(P2 si)
	(P3 si)
	(P4 si)
	(P5 si)
	(P6 si)
	(P7 si)
	(8A si)
	(PAR12 1)
	(PAR13 1)
	(PAR14 1)
	(PAR15 1)
	(PAR16 1)
	(PAR17 1)
	(PAR18 1)
	(PAR19 1)
)

(deffacts sintomas-esquizoide
	(P1 si)
	(P2 si)
	(P3 si)
	(P4 si)
	(P5 si)
	(P6 si)
	(P7 si)
	(8A si)
	(EZI20 1)
	(EZI21 1)
	(EZI22 1)
	(EZI23 1)
	(EZI24 1)
	(EZI25 1)
	(EZI26 1)
	(EZI27 1)
)

(deffacts sintomas-esquizotipico
	(P1 si)
	(P2 si)
	(P3 si)
	(P4 si)
	(P5 si)
	(P6 si)
	(P7 si)
	(8A si)
	(EZT28 1)
	(EZT29 1)
	(EZT30 1)
	(EZT31 1)
	(EZT32 1)
	(EZT33 1)
	(EZT34 1)
	(EZT35 1)
	(EZT36 1)
	(EZT37 1)
)

(deffacts sintomas-antisocial
	(P1 si)
	(P2 si)
	(P3 si)
	(P4 si)
	(P5 si)
	(P6 si)
	(P7 si)
	(8B si)
	(ANT38 1)
	(ANT39 1)
	(ANT40 1)
	(ANT41 1)
	(ANT42 1)
	(ANT43 1)
	(ANT44 1)
	(ANT45 1)
	(ANT46 1)
)

(deffacts sintomas-limite
	(P1 si)
	(P2 si)
	(P3 si)
	(P4 si)
	(P5 si)
	(P6 si)
	(P7 si)
	(8B si)
	(LIM47 1)
	(LIM48 1)
	(LIM49 1)
	(LIM50 1)
	(LIM51 1)
	(LIM52 1)
	(LIM53 1)
	(LIM54 1)
	(LIM55 1)
)

(deffacts sintomas-histrionico
	(P1 si)
	(P2 si)
	(P3 si)
	(P4 si)
	(P5 si)
	(P6 si)
	(P7 si)
	(8B si)
	(HIS56 1)
	(HIS57 1)
	(HIS58 1)
	(HIS59 1)
	(HIS60 1)
	(HIS61 1)
	(HIS62 1)
	(HIS63 1)
)

(deffacts sintomas-narcicista
	(P1 si)
	(P2 si)
	(P3 si)
	(P4 si)
	(P5 si)
	(P6 si)
	(P7 si)
	(8B si)
	(NAR64 1)
	(NAR65 1)
	(NAR66 1)
	(NAR67 1)
	(NAR68 1)
	(NAR69 1)
	(NAR70 1)
	(NAR71 1)
	(NAR72 1)
)

(deffacts sintomas-evitacion
	(P1 si)
	(P2 si)
	(P3 si)
	(P4 si)
	(P5 si)
	(P6 si)
	(P7 si)
	(8C si)
	(EVI73 1)
	(EVI74 1)
	(EVI75 0)
	(EVI76 1)
	(EVI77 1)
	(EVI78 1)
	(EVI79 0)
)

(deffacts sintomas-dependencia
	(P1 si)
	(P2 si)
	(P3 si)
	(P4 si)
	(P5 si)
	(P6 si)
	(P7 si)
	(8C si)
	(DEP80 1)
	(DEP81 1)
	(DEP82 1)
	(DEP83 1)
	(DEP84 1)
	(DEP85 1)
	(DEP86 1)
	(DEP87 1)
)

(deffacts sintomas-obsesivo-compulsivo
	(P1 si)
	(P2 si)
	(P3 si)
	(P4 si)
	(P5 si)
	(P6 si)
	(P7 si)
	(8C si)
	(OBC88 1)
	(OBC89 1)
	(OBC90 1)
	(OBC91 1)
	(OBC92 1)
	(OBC93 1)
	(OBC94 1)
	(OBC95 1)
)