SOPHIA GENETICS TASK ATTEMPT #1
================================
Task 1: Please write a C/C++ program to split a SFF file into adaptor specific SFF files.    
Input: a single SFF file + adaptor list(a tab delimited table) 
Output: several SFF files depend on how many adaptors contained in the input SFF file + one SFF file containing the remaining reads that do not match to any adaptors. 
Notes:  
1. the SFF file format is described at http://en.wikipedia.org/wiki/
Standard_Flowgram_Format 
2. You could refer to the program https://github.com/indraniel/sff2fastq as an example of
how to read SFF file in C. You are also encouraged to borrow the code directly  
3. Please make clear documentation to your code.  
4. Please download the input SFF file at http://dl.dropbox.com/u/68829208/test.sff.zip 
5. Please download the input adaptor list at http://dl.dropbox.com/u/68829208/
ionXpress_barcode.txt 
6. Your program should be executable in a standard Linux machine(Cent OS with 8Gb
memory, for example). 
7. We encourage you to write the highlights of your program. (extremely fast, multi- threaded, good fault tolerance, for example) 


SYNOPSIS
========

The program `sff2fastq` extracts read information from a SFF file,
produced by the 454 genome sequencer, and outputs the sequences and
quality scores in a FASTQ format.

USAGE
=====

Given an SFF file, `file.sff` you can simply run:

    sff2fastq file.sff

`sff2fastq` will also read from standard input if a SFF file is not specified on the command line.  For example, you can do the following:

    cat file.sff | sff2fastq > file.fastq

This is useful if you have a compressed sff file and you'd like to avoid
creating temporary files like so:

    zcat file.sff.gz | sff2fastq > file.fastq

_(This feature has been kindly added by [Björn Winckler](https://github.com/b4winckler) )_

Options
-------

Below is the help message (via `sff2fastq -h`) describing its usage & options:

    Usage: sff2fastq [options] [sff_file]
            -h                  This help message   
            -v                  Program and version information
            -n                  Output the untrimmed sequence
            -o <fastq_file>     Desired fastq output file. If not specified, 
                                defaults to stdout


INSTALLATION
============

The installation process currently consists of a very simple Makefile.

Just do the following:

    git clone git://github.com/indraniel/sff2fastq.git;
    cd sff2fastq;
    make; # try 'make genome' if at the Genome Center at Washington University
          # or on a Linux distribution from 2008 or earlier

The `sff2fastq` executable should be in the working directory.
Afterwards, you can move the executable to wherever you wish.

NOTES
=====

This has been successfully compiled on Linux/Ubuntu 8.04 & 9.10
workstations (both 32-bit and 64-bit machines), and on Mac OS X (version
10.5).  Compiling on other types of operating systems and architectures
has not been experimented upon.

The FASTQ output produced is of the Sanger FASTQ format as described
here (http://maq.sourceforge.net/fastq.shtml).

Without any given options the default approach is to output trimmed
sequence and quality values.  This is similar in nature to the sff tools
produced by 454 Life Sciences/Roche.

AUTHORS
=======

Indraniel Das (indraniel@gmail.com or idas@wustl.edu)
The Genome Institute at Washington University

Contributors
------------

* [Björn Winckler](https://github.com/b4winckler)
* [James Casbon](https://github.com/jamescasbon)

ACKNOWLEDGEMENTS
================

This software was developed at The Genome Institute at Washington
University, St. Louis, MO.

DISCLAIMER
==========

This software is provided "as is" without warranty of any kind.


March 23, 2010
