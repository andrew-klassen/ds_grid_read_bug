/// @description write cordinates
ds_grid_set(global.player_grid, 0, 0, x)
ds_grid_set(global.player_grid, 0, 1, y)

// this value is what causes the memory leak when ds_grid_read is used
// if you were to comment it out it would fix the program
ds_grid_set(global.player_grid, 0, 2, "t*est1234-1")
