/// @desc Get collision map data
tileLayerId = layer_get_id("tiles_collisions");
tilemap = layer_tilemap_get_id(tileLayerId);
tiles = tilemap_get_tiles(tilemap);
tilemapWidth = tilemap_get_width(tilemap);
tilemapHeight = tilemap_get_height(tilemap);
tileWidth = tilemap_get_tile_width(tilemap);
tileHeight = tilemap_get_tile_height(tilemap);
