


with obj_draw {
	// create depth grid
	if (!ds_exists(ds_depthgrid, ds_type_grid)) {
		ds_depthgrid = ds_grid_create(2, 1);
		
		// add to depth grid
		ds_depthgrid[# 0,0] = other;
	
		// update y value
		ds_depthgrid[# 1,0] = other.y;
	}
	else {
		//resize grid
		var _height = ds_grid_height(ds_depthgrid);
		ds_grid_resize(ds_depthgrid, 2, _height + 1);
		
		
		// add to depth grid
		ds_depthgrid[# 0,_height] = other;
	
		// update y value
		ds_depthgrid[# 1,_height] = other.y;	
	}
}