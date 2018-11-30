private
get: aStringQuery
	^ znServer get: baseURL , aStringQuery , '?v=3&key=' , self defaultAccessKey