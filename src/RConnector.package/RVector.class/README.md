A RVector is is an abstract reprensentation of an R vector.
The collection attached to the vector is a subclass of NBExternalArray.

Instance Variables
	handle:		a NBExternalHandle

#handle -- represents (as in NBExternalObject) the pointer to the R external object.
	The array containing the data (is the vector elements) is included in the R external object and its pointer can be accessed with #firstPointer.
	This pointer should NOT be reallocated with the methods of NBExternalArray. A new RVector object  has to be created with the Rf_AllocVector primitive and the handles swapped (see growAtLast for impl).

