local tile_size = 16



--rechnet Klickposition in Tile um
function get_tile(position) 
	local tile_x = math.floor(position.x / tile_size) + 1
	local tile_y = math.floor(position.y / tile_size) + 1

	local tile = {tile_x, tile_y}
	
	return tile
end


-- ermittelt Mittelpunkt des angeklickten Tiles
function get_tile_position(tile) 
	local world_x = (tile[1] - 0.5) * tile_size
	local world_y = (tile[2] - 0.5) * tile_size

	local world = vmath.vector3(world_x, world_y, 0.1)
	
	return world
end


-- prüft, ob angegebenes Tile begehbar ist (im entsprechenden Layer den Index 1 hat)
function is_walkable(tile)
	local tile = tilemap.get_tile(
	"/map#testmap",
	"edges",
	tile[1],
	tile[2]
)
	return tile == 1
end


local function already_checked(tiles, x, y) -- prüft, ob ein Feld bereits vom Pathfinding untersucht wurde

	for _, tile in ipairs(tiles) do
		if tile.x == x and tile.y == y then
			return true
		end
	end

	return false
end


-- Wegfindungsalgorithmus vom Spieler zum Ziel
function path_from_to(goal, player)

	local frontier = {
		{x = goal[1], y = goal[2], k = 0}
	}
	
	local checked = {
		{x = goal[1], y = goal[2], k = 0} -- die Tabelle der abgesuchten Felder, angefangen mit dem angeklickten
	}


	while #frontier > 0 do
		local current = table.remove(frontier, 1)
		
		if current.x == player[1] and current.y == player[2] then
			print("Spieler gefunden")
			return checked
		end

		local neighbors = {						-- stellt Tabelle mit benachbarten Feldern des aktuell untersuchten auf
			{x = current.x + 1, y = current.y},
			{x = current.x - 1, y = current.y},
			{x = current.x, y = current.y + 1},
			{x = current.x, y = current.y - 1}
		}

		for _, n in ipairs(neighbors) do
			local pair = {n.x, n.y}
			if is_walkable(pair) and not already_checked(checked, n.x, n.y) then
				local tile = {
					x = n.x,
					y = n.y,
					k = current.k + 1
				}
				--print(tile.x, tile.y, tile.k)
				table.insert(frontier, tile)
				table.insert(checked, tile)
			end
		end
	end
	return checked
end



