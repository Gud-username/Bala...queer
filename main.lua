--- STEAMODDED HEADER
--- MOD_NAME: Bala Queer
--- MOD_ID: balaqueer
--- MOD_AUTHOR: [Smol]
--- MOD_DESCRIPTION: Queer balatro

----------------------------------------------
------------MOD CODE -------------------------
----------------------------------------------

local function init()
    G.localization.misc.poker_hands['Straight Flush'] = "Queer Flush"
    G.localization.misc.poker_hands['Straight'] = "Queer"
    G.localization.misc.poker_hands['Royal Flush'] = "Royal Queer Flush"

    -- fix for Runner
    G.localization.descriptions.Joker["j_runner"].text = {
        "Gains {C:chips}+#2#{} Chips",
        "if played hand",
        "contains a {C:attention}Queer{}",
        "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)"
    }

    -- fix for Shortcut
    G.localization.descriptions.Joker["j_shortcut"].text = {
        "Allows {C:attention}Queer{} to be",
        "made with gaps of {C:attention}1 rank",
        "{C:inactive}(ex: {C:attention}10 8 6 5 3{C:inactive})" 
    }

    -- fix for Four Fingers
    G.localization.descriptions.Joker["j_four_fingers"].text = {
        "All {C:attention}Flushes{} and",
        "{C:attention}Queer{} can be",
        "made with {C:attention}4{} cards"   
    }

    -- fix for Superposition
    G.localization.descriptions.Joker["j_superposition"].text = {
        "Create a {C:tarot}Tarot{} card if",
        "poker hand contains an",
        "{C:attention}Ace{} and a {C:attention}Queer{}",
        "{C:inactive}(Must have room)"
    }

    -- fix for seacnce
    G.localization.descriptions.Joker["j_seance"].text = {
        "If {C:attention}poker hand{} is a {C:attention}Queer Flush{},",
        "create a random {C:spectral}Spectral{} card",
        "{C:inactive}(Must have room)"

    }

end

if SMODS.current_mod then
    SMODS.current_mod.process_loc_text = init
else
    init()
end
