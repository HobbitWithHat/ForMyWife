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

	[hash("fiber")] = {
		hash = hash("fiber"),
		name = "Faser",
		sprite = "fiber",
		crafting = nil

	},

	[hash("bone")] = {
		hash = hash("bone"),
		name = "Knochen",
		sprite = "bone",
		crafting = nil
	},


	
-- herstellbare items
	
	[hash("axe")] = {
		hash = hash("axe"),
		name = "Axt",
		sprite = "axe",
		crafting = {hash("stick"), hash("stone")}  -- die zwei Zutaten
	},

	[hash("rope")] = {
		hash = hash("rope"),
		name = "Seil",
		sprite = "rope",
		crafting = {hash("fiber"), hash("fiber")}
	},

	[hash("torch")] = {
		hash = hash("torch"),
		name = "Fackel",
		sprite = "torch",
		crafting = {hash("stick"), hash("fiber")}
	},

	[hash("hand axe")] = {
		hash = hash("hand axe"),
		name = "Faustkeil",
		sprite = "hand axe",
		crafting = {hash("stone"), hash("stone")}
	},

	[hash("spear")] = {
		hash = hash("spear"),
		name = "Speer",
		sprite = "spear",
		crafting = {hash("hand axe"), hash("stick")}
	},
	
}

return M
