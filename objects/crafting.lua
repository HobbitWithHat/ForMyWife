-- Pfade ggf. an deine Projektstruktur anpassen (z.B. "main.items", "data.items", ...)
local items = require("objects.items")

local M = {}

-- Versucht, das Item aus der rechten und linken Hand zu kombinieren.
--
-- Durchsucht die Item-Datenbank nach einem Item, dessen `crafting`-Feld
-- genau die beiden übergebenen Item-Hashes als Zutaten enthält
-- (Reihenfolge der beiden Zutaten spielt keine Rolle).
--
-- right_item / left_item: Item-Datensätze aus items.lua (oder nil, wenn die Hand leer ist)
--
-- Rückgabe:
--   success       (boolean)
--   result_item   (Item-Datensatz oder nil)
--   error_reason  (string oder nil) - "missing_items" | "no_recipe"
function M.craft(right_item, left_item)
	if right_item == nil or left_item == nil then
		return false, nil, "missing_items"
	end

	for _, item_data in pairs(items.items) do
		local recipe = item_data.crafting
		if recipe then
			local ingredient_a, ingredient_b = recipe[1], recipe[2]
			local matches =
			(ingredient_a == right_item.hash and ingredient_b == left_item.hash) or
			(ingredient_a == left_item.hash and ingredient_b == right_item.hash)

			if matches then
				return true, item_data, nil
			end
		end
	end

	return false, nil, "no_recipe"
end

return M