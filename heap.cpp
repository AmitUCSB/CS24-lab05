// heap.cpp
// Diba Mirza

#include "heap.h"
#include <iostream>
using std::cout;

// Pushes a value into the heap, then ensures
// the heap is correctly arranged
void Heap::push(int value){
  vdata.push_back(value);
  int i = vdata.size()-1;
  while (i > 0){
    int parent = (i - 1)/2;
    if(vdata[i] < vdata[parent]){
      std::swap(vdata[i], vdata[parent]);
      i = parent;
    }
    else{
      break;
    }
  }
}

// Pops the minimum value off the heap
// (but does not return it), then ensures
// the heap is correctly arranged
void Heap::pop() {
  if (vdata.empty()) return;
  vdata[0] = vdata[vdata.size() - 1]; 
  vdata.erase(vdata.begin() + vdata.size() - 1); 
  int i = 0;
  int size = vdata.size();
  while (true) {
      int l = 2 * i + 1;
      int r = 2 * i + 2;
      int min = i;
      if (l < size && vdata[l] < vdata[min])
          min = l;
      if (r < size && vdata[r] < vdata[min])
          min = r;
      if (min != i) {
          std::swap(vdata[i], vdata[min]);
          i = min;
      } else {
          break;
      }
  }
}

// Returns the minimum element in the heap
int Heap::top(){
  return vdata.at(0);
}

// Returns true if the heap is empty, false otherwise
bool Heap::empty(){
  return vdata.empty();
}
    