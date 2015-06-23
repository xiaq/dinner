local dinner = require "dinner"

local function test_get_menu()
    local menu = dinner.get_menu()
    assert(menu[1] == 'fish')
    assert(menu[2] == 'chips')
end

test_get_menu()
