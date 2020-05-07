A RObject is a standard object linked to an R external element. It corresponds to the SEXP type of R (a binding is done in RLibType (to see for details)).

Why this type is it need?
---------------------------------
It is this kind of object that is used to wrap the FFI primitives. 
Some primitives use 'self' inside their code so you can call them on any object, e.g. :
self ffiCall: #(bool Rf_isEnvironment(self))

However, other primitives have in argument a other object of the type SEXP, e.g (it is a method for adding in first place an element):
self ffiCall: #(SEXP Rf_lcons(SEXP anElement, self))

The type SEXP is needed because you can put any element in a list. So you have to convert the R* instances in SEXP to use as argument of the primitives.
You should use: asPureRObject. It convert (almost) any subclass of Object into a RObject.

Of course in the other way, the result of some functions are SEXPs so RObjects. If you want to use them completly, you should use asRObject to transform them.
It will create a new R* object, depending of the result of method typeOf. See newFromRObject: for the implementation.


Memory protection
--------------------------
R system do some garbage collect on the allocated items.
To avoid the garbage collection of the objects, use the method #protect