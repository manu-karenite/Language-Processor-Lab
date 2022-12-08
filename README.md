# Language-Processor-Lab
Codes of Language Processor Lab, containg DFA , LEX and YACC.

## How to Run Lex Programs
```
lex filename.l
gcc lex.yy.c
./a.out
```

## How to run Yacc Programs
```
lex lex_file_name.l
yacc -d yacc_file_name.y
gcc lex.yy.c y.tab.c -ll
./a.out
```


## How to run DFA Programs
```
gcc file_name.c
./a.out
```
