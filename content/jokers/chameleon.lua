-- Chameleon
SMODS.Joker{
    key = "chameleon",
    atlas = "jokers_atlas",
    pos = {x = 2, y = 1},
    rarity = 3,
    cost = 8,
    blueprint_compat = true,
    discovered = true,
    config = {
        extra = {
            repetitions = 1
        }
    },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_wild
    end,
    calculate = function(self, card, context)
        -- Checks that the current cardarea is G.play, or the cards that have been played, then checks to see if it's time to check for repetition.
        -- The "not context.repetition_only" is there to keep it separate from seals.
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
            if context.other_card:is_suit() then
				return {
					message = localize("k_again_ex"),
					repetitions = card.ability.extra.repetitions,
					card = card
				}
			end
        end
    end
}
