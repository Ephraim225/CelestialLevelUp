--- STEAMODDED HEADER
--- MOD_NAME: Celestial Level Up
--- MOD_ID: CelestialOverhaul
--- MOD_AUTHOR: [Ephraim225]
--- MOD_DESCRIPTION: Makes your poker hands level up the more you use them.

----------------------------------------------
------------MOD CODE -------------------------
local config = SMODS.Mods.CelestialOverhaul.config

local EvaluatePlay = G.FUNCS.evaluate_play
G.FUNCS.evaluate_play = function(e)
    --print("PRE hook!")
    local ret = EvaluatePlay(e)
    --print("POST hook!")
	local text,disp_text,poker_hands,scoring_hand,non_loc_disp_text = G.FUNCS.get_poker_hand_info(G.play.cards)
	
	--print(config.handsperlevel)
	local _hands = G.GAME.hands[text].played
	local _hpl = math.floor(config.handsperlevel + 0.5)
	
	if config.exponential == false then
		if _hands % _hpl == 0 then
			level_up_hand(G.deck.cards[1], text)
		end
	end
	if config.exponential == true then
		while _hands > _hpl do
		_hands = _hands - _hpl
		_hpl = _hpl + 1
		end
		
		if _hands == _hpl then
			level_up_hand(G.deck.cards[1], text)
		end
	end
    return ret
end

SMODS.Atlas({
    key = "modicon",
    path = "icon.png",
    px = 32,
    py = 32
})

----------------------------------------------
------------MOD CODE END----------------------