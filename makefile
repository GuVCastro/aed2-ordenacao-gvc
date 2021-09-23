all: exec
 
exec: principal.o geracao.o bubble.o countingsort.o heapsort.o insertion.o mergesort.o quicksort.o selecao.o shellsort.o
	gcc -o exec principal.o geracao.o bubble.o countingsort.o heapsort.o insertion.o mergesort.o quicksort.o selection.o shellsort.o
 
principal.o: principal.c 
	gcc -o principal.o principal.c -c -W -Wall -pedantic
 
 bubble.o: bubble.c 
	gcc -o bubble.o bubble.c -c -W -Wall -pedantic

countingsort.o: countingsort.c 
	gcc -o countingsort.o countingsort.c -c -W -Wall -pedantic

geracao.o: geracao.c 
	gcc -o geracao.o geracao.c -c -W -Wall -pedantic

heapsort.o: heapsort.c 
	gcc -o heapsort.o heapsort.c -c -W -Wall -pedantic

insertion.o: insertion.c 
	gcc -o insertion.o insertion.c -c -W -Wall -pedantic

mergesort.o: mergesort.c 
	gcc -o mergesort.o mergesort.c -c -W -Wall -pedantic

quicksort.o: quicksort.c 
	gcc -o quicksort.o quicksort.c -c -W -Wall -pedantic

selection.o: selection.c 
	gcc -o selection.o selection.c -c -W -Wall -pedantic

shellsort.o: shellsort.c 
	gcc -o shellsort.o shellsort.c -c -W -Wall -pedantic

clean:
	rm -rf *.o *~ exec

limpa: 
	rm -rf *.o  
