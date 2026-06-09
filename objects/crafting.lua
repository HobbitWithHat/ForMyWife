local recipes = require("objects.recipes")

local M = {}

local lookup = nil

-- Erstellt einen reihenfolge-unabhängigen Key aus zwei Item-Hashes
local function make_key(a, b)
	-- Alphabetisch sortieren, damit "stick+stone" == "stone+stick"
	if a > b then 
		a, b = b, a 
	end
	print(a, b)
	return a .. "+" .. b
end


-- Baut beim ersten Aufruf einen schnellen Lookup-Cache auf
local function build_lookup()
	lookup = {}
	for _, recipe in ipairs(recipes.recipes) do
		local ing = recipe.ingredients
		local key = make_key(ing[1], ing[2])
		lookup[key] = recipe.result
	end
end



-- Hauptfunktion: gibt den Result-Hash zurück, oder nil wenn kein Rezept
function M.craft(left_item, right_item)
	if not lookup then 
		build_lookup()
	end

	-- Wenn eine Hand leer ist, kein Crafting möglich
	if not left_item or not right_item then
		return nil 
	end

	local key = make_key(left_item.hash, right_item.hash)
	
	return lookup[key]  -- z.B. "spear", oder nil
end

return M