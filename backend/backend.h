#ifndef BACKEND_H
#define BACKEND_H

#define DLL_EXPORT __declspec(dllexport)

extern "C"{
	int DLL_EXPORT SimpleReturnFun();
}

#endif //BACKEND_H
