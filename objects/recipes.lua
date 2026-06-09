-- Tabelle für crafting-Rezepte

local M = {}

M.recipes = {
	
	{ingredients = {"stick", "stone"}, result = hash("spear")},

	{ingredients = {hash("stick"), hash("fiber")}, result = hash("torch")}
}

return M