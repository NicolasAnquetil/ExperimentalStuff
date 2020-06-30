api
show
	| v es |
	v := RTView new.
	v @ RTDraggableView.
	v @ RTZoomableView.
	es := self
		alternate: (self shapeLeft elementsOn: run1 methods)
		and: (self shapeRight elementsOn: run2 methods).
	v addAll: es.
	es @ RTPopup.
	es @ (RTShowEdge new connectToAll: [ :e | self siblingElement: e method]; shape: (RTLine new withHorizontalAttachPoint ; width: 5 ; color: Color black)).
	RTGridLayout new
		gapSize: 20 ;
		lineItemsCount: 2 ;
		on: es.
	^ v