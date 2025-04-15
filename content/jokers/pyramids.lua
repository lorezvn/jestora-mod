-- Pyramids
SMODS.Joker{
    key = "pyramids",
    atlas = "jokers_atlas",
    pos = {x = 0, y = 1},
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    discovered = true,
    config = {extra = {
        Xmult = 99.1
        }
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.Xmult
            }
        }
    end,
    calculate = function (self, card, context)
        if context.joker_main then
            return {
                message = localize{
                    type = 'variable',
                    key = 'a_xmult',
                    vars = {card.ability.extra.Xmult}
                },
                Xmult_mod = card.ability.extra.Xmult,
                colour = G.C.MULT,
            }
        end
    end
}