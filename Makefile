CXX = g++
CXXFLAGS = -g --std=c++20 -Wall

all: heapmain examheap

heapmain: heap.o main.o
	$(CXX) $(CXXFLAGS) heap.o main.o -o heapmain

examheap: heap.o examheap.o
	$(CXX) $(CXXFLAGS) heap.o examheap.o -o examheap

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

examheap.o: examheap.cpp
	$(CXX) $(CXXFLAGS) -c examheap.cpp

heap.o: heap.cpp heap.h
	$(CXX) $(CXXFLAGS) -c heap.cpp

clean:
	rm -f heapmain examheap *.o
