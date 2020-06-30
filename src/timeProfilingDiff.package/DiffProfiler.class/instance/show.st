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
	RTGridLayout new
		gapSize: 20 ;
		lineItemsCount: 2 ;
		on: es.
	^ v