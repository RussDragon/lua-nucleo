-- factory.lua -- tests for the factory module
-- This file is a part of lua-nucleo library
-- Copyright (c) lua-nucleo authors (see file `COPYRIGHT` for the license)

dofile('lua-nucleo/strict.lua')
dofile('lua-nucleo/import.lua')

local make_suite = select(1, ...)
assert(type(make_suite) == "function")

local common_method_list,
      factory_exports =
      import 'lua-nucleo/factory.lua'
      {
        'common_method_list'
      }

--------------------------------------------------------------------------------

local test = make_suite("functional", factory_exports)

--------------------------------------------------------------------------------

test:group "common_method_list"

test "wrong_input" (function()
end)

test "no_arguments_no_methods" (function()
end)

test "no_arguments_single_method" (function()
end)

test "no_arguments_several_method" (function()
end)

test "no_arguments_number_key_method" (function()
end)

test "no_arguments_table_key_method" (function()
end)

test "no_arguments_nested" (function()
end)

test "no_arguments_recursive" (function()
end)

test "several_method" (function()
end)

test "nil_arguments_several_method" (function()
end)

--------------------------------------------------------------------------------

assert(test:run())