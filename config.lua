SMODS.current_mod.config_tab = function()
    return {n = G.UIT.ROOT, config = {r = 0.1, align = "cm", padding = 0.1, colour = G.C.BLACK, minw = 8, minh = 6}, nodes = {

        {n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
            {n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
                { n = G.UIT.T, config = { text = "Exponential Levels", scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
            }},
            {n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
                create_toggle{ col = true, label = "", scale = 0.85, w = 0, shadow = true, ref_table = SMODS.Mods.CelestialOverhaul.config, ref_value = 'exponential' },
            }},
        }},
        {n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
            {n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
                { n = G.UIT.T, config = { text = "Hands Per Level", scale = 0.35, colour = G.C.UI.TEXT_LIGHT }},
            }},
            {n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
                create_slider({label = '', w = 3, h = 1, text_scale = 0.8, label_scale = 0.3, ref_table = SMODS.Mods.CelestialOverhaul.config, ref_value = 'handsperlevel', min = 1, max = 10}),
            }},
        }},
		
    }}
end

return {
	exponential = false,
	handsperlevel = 3
}