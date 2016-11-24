//Re-implementing unordered_map (C++11) with synthesizable static vector based unordered_map.
//TODO: Recently the unordered_map in the design is replaced with std::map, it should be replaced with static implementation.
#ifndef __STATIC_UNORDERED_MAP_H__
#define __STATIC_UNORDERED_MAP_H_

#include <iostream>
#include "static_vector.h"


template < class T, class L, int N >

class static_unordered_map {

private:
	struct u_o_m {
		L key;
		T value;
		bool flag;
	}A[N];

public:

};



#endif
