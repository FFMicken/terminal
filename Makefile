all: main
main: main.o get_name.o print_str.o
    gcc -o main main.o get_name.o print_str.o
main.o: main.c get_name.h print_str.h
    gcc -c main.c
get_name.o: get_name.c get_name.h
    gcc -c get_name.c
print_str.o: print_str.c print_str.h
    gcc -c print_str.c
clean:
    rm -f main main.o get_name.o print_str.o
