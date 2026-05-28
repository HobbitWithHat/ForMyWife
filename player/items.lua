local M = {}

M.items = {
	-- Natürlich vorkommende Items
	[hash("stick")] = {
		name = "Stock",
		sprite = hash("Eingang"),
		crafting = nil
	},

	[hash("stone")] = {
		name = "Stein",
		sprite = hash("Objekt"),
		crafting = nil
	},

	[hash("spear")] = {
		name = "Speer",
		sprite = hash("Objekt"),
		crafting = "spear"
	}
}

return M
