.PHONY: clean genome

sff2fastq: main.o sff.o
	gcc -g -o sff2fastq main.o sff.o

genome: main.o sff.genome.o
	gcc -g -o sff2fastq main.o sff.genome.o

main.o: main.c sff.h
	gcc -g -I. -c main.c

sff.o: sff.c sff.h
	gcc -g -I. -c sff.c

sff.genome.o: sff.c sff.h
	gcc -D__GENOME__ -g -I. -c sff.c -o sff.genome.o

clean:
	rm sff2fastq *.o
