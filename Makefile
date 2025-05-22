CXX = g++
CXXFLAGS = -g --std=c++20 -Wall


all: examheap

examheap: heap.o examheap.o
	$(CXX) $(CXXFLAGS) heap.o examheap.o -o examheap

examheap.o: examheap.cpp
	$(CXX) $(CXXFLAGS) -c examheap.cpp

heap.o: heap.cpp heap.h
	$(CXX) $(CXXFLAGS) -c heap.cpp

clean:
	rm -f examheap *.o
