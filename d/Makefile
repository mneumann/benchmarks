D=dmd
OPTS=-O -noboundscheck -inline

dvec1: dvec1.d
	${D} ${OPTS} -ofdvec1 dvec1.d

dvec2: dvec2.d
	${D} ${OPTS} -ofdvec2 dvec2.d

slist1: slist1.d
	${D} ${OPTS} -ofslist1 slist1.d

clean:
	rm -f dvec1 dvec1.o dvec2 dvec2.o slist1 slist1.o
