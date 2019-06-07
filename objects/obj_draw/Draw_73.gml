/// @description Insert description here
// You can write your code in this editor

if (ds_exists(ds_depthgrid, ds_type_grid)) {
	
	// sort grid by y
	ds_grid_sort(ds_depthgrid, 1, true);

	// draw in order
	for (var yy = 0; yy < ds_grid_height(ds_depthgrid); yy++) {
		var instanceid = ds_depthgrid[# 0, yy];
		
		with (instanceid) {
			//draw_self();
			event_perform(ev_draw, 0);
		}
	}
	
	ds_grid_destroy(ds_depthgrid);
}

