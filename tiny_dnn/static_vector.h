#ifndef __STATIC_VECTOR_H__
#define __STATIC_VECTOR_H__

#include <iostream>

template <class T, int L >
class s_vector {
  private:
    T elems[L];
    int cur;
    const int capacity;
  public:
    s_vector():cur(0), capacity(L){};
    
    void push_back(const T& e) {
      elems[cur++] = e;
    }
 
    void pop_back() {
      cur--;
    }
    
    T& front() {
      return elems[0];
    }
    
    T& back() {
      return elems[cur - 1];
    }

    int size() const {
      return cur;
    }

    void clear() {
      cur = 0;
    }

    T & operator[](unsigned int index) {
      return elems[index];  
    }    
};




#endif
