module.exports = btree = mixin ->
	tree = {}
	pos_of = {}

	bucket = (x,y) ~> {x:floor(x/@width), y:floor(y/@height)}
	index = (pos) ~> bucket.x + "," + bucket.y
	projx = (x) ~> floor(x/@width)
	projy = (y) ~> floor(y/@height)

	width: @width ? 100
	height: @height ? 100

	add: (it,x,y) ~> 
		make_id it

		new_bucket_x = projx(x)
		new_bucket_y = projy(y)
		new_index = new_bucket_x + "," + new_bucket_y
		
		if (it_pos = pos_of[it.id])? then
			it_bucket_x = projx(it_pos.x)
			it_bucket_y = projy(it_pos.y)
			it_index = it_bucket_x + "," + it_bucket_y
			if it_index == new_index then
				it_pos.x = x
				it_pos.y = y
				return
			remove tree[it_index], it

		tree[new_index] = tree[new_index] ? []
		tree[new_index].push it

		pos_of[it.id] = {x:x, y:y}

	get: (x,y,X,Y) ~>
		result = []
		for i from projx(x) to projx(X)
			for j from projy(y) to projy(Y)
				index = i + "," + j
				if (bucket = tree[index])? then
					for it in bucket
						it_pos = pos_of[it.id]
						if x <= it_pos.x < X and y <= it_pos.y < Y then
							result.push it
		result

	tree: ~> tree


#tree = btree {width:100,height:100}
#a = {0}
#b = {1}
#c = {2}
#d = {3}
#tree.add(a,51,55)
#tree.add(b,62,67)
#tree.add(c,74,95)
#tree.add(d,99,95)
#log "...",tree.tree!