CXX = g++
CXXFLAGS = -g --std=c++20 -Wall

all: heapmain examheap

heapmain: Heap.o main.o
	$(CXX) $(CXXFLAGS) Heap.o main.o -o heapmain

examheap: Heap.o examheap.o
	$(CXX) $(CXXFLAGS) Heap.o examheap.o -o examheap

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

examheap.o: examheap.cpp
	$(CXX) $(CXXFLAGS) -c examheap.cpp

Heap.o: Heap.cpp Heap.h
	$(CXX) $(CXXFLAGS) -c Heap.cpp

clean:
	rm -f heapmain examheap *.o
