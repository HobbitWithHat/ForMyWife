local tile_size = 16



--rechnet Klickposition in Tile um
function get_tile(position_x, position_y) 
	local tile_x = math.floor(position_x / tile_size) + 1
	local tile_y = math.floor(position_y / tile_size) + 1
	
	return tile_x, tile_y
end


-- ermittelt Mittelpunkt des angeklickten Tiles
function get_tile_position(tile_x, tile_y) 
	local world_x = (tile_x - 0.5) * tile_size
	local world_y = (tile_y - 0.5) * tile_size
	
	return world_x, world_y
end


-- prüft, ob angegebenes Tile begehbar ist (im entsprechenden Layer den Index 1 hat)
function is_walkable(tile_x, tile_y)
	local tile = tilemap.get_tile(
	"/map#testmap",
	"edges",
	tile_x,
	tile_y
)

	return tile == 1
end

function path_from_to(position, tile_x, tile_y)
	
end


