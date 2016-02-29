all: arr_queue

arr_queue : arr_queue.o main.o
	g++ -o arr_queue arr_queue.o main.o

main.o : main.cpp
	g++ -c main.cpp

arr_queue.o: arr_queue.h arr_queue.cpp
	g++ -c arr_queue.cpp

clean:
	rm -f arr_queue *.o