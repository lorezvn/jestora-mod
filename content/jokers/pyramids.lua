-- Pyramids
SMODS.Joker{
    key = "pyramids",
    atlas = "jokers_atlas",
    pos = {x = 0, y = 1},
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    discovered = true,
    config = {
        extra = {
            mult = 3
        }
    },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_gold
        return {
            vars = {
                card.ability.extra.mult
            }
        }
    end,
    calculate = function (self, card, context)
        if context.individual and context.cardarea == G.play then
            if SMODS.has_enhancement(context.other_card, 'm_gold') then
                return {
                    message = localize{
                        type = 'variable',
                        key = 'a_mult',
                        vars = {card.ability.extra.mult}
                    },
                    mult_mod = card.ability.extra.mult,
                    colour = G.C.MULT,
                }
            end
        end
    end
}