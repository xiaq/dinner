package = 'dinner'
version = 'scm-2'
source = {
    url = 'git://github.com/xiaq/dinner.git',
}
description = {
    summary = 'A rock with dependencies and build-time dependencies.',
    license = 'BSD',
}
build_dependencies = {
    'luarocks-addon-hooking',
    'dinner-pan'
}
addons = {
    'hooking'
}
hooking = {
    ['build.before'] = function() return "Before build" end,
    ['build.after'] = function() return "After build" end
}
dependencies = {
    'lua >= 5.1',
    'dinner-fork'
}
build = {
    type = 'builtin',
    modules = {
        ["dinner"] = "src/dinner.lua"
    },
}
