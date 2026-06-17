local M = {}

M.items = {
	-- Natürlich vorkommende Items
	[hash("stick")] = {
		hash = hash("stick"),
		name = "Stock",
		sprite = "stick",
		crafting = nil
	},

	[hash("stone")] = {
		hash = hash("stone"),
		name = "Stein",
		sprite = "stone",
		crafting = nil
	},

	[hash("spear")] = {
		hash = hash("spear"),
		name = "Speer",
		sprite = "spear",
		crafting = {hash("stick"), hash("stone")}  -- die zwei Zutaten
	}
}

return M
