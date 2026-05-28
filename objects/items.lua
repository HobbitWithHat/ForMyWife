local M = {}

M.items = {
	-- Natürlich vorkommende Items
	[hash("stick")] = {
		hash = hash("stick"),
		name = "Stock",
		sprite = hash("stick"),
		crafting = nil
	},

	[hash("stone")] = {
		hash = hash("stone"),
		name = "Stein",
		sprite = hash("stone"),
		crafting = nil
	},

	[hash("spear")] = {
		hash = hash("spear"),
		name = "Speer",
		sprite = hash("Objekt"),
		crafting = "spear"
	}
}

return M
