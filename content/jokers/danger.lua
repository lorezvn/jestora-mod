-- I am The Danger
SMODS.Joker{
    key = "danger",
    atlas = "jokers_atlas",
    pos = {x = 2, y = 0},
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    discovered = true,
    config = {
        extra = {
            money = 15
        }
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.money
            }
        }
    end,
    calculate = function (self, card, context)
        if context.before and G.GAME.current_round.hands_played == 1 then
            if G.GAME.dollars ~= 0 then
                ease_dollars(-G.GAME.dollars, true)
                return {
                    message = "Knock",
                    card = card
                }
            end
        end
        if context.setting_blind then
            ease_dollars(card.ability.extra.money)
            return {
                message = localize('$')..card.ability.extra.money,
                colour = G.C.MONEY,
                card = card
            }
        end
    end
}