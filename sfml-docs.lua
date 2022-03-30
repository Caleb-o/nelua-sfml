--[[
	This file is required to tell nldoc how to generate documentation
]]
local nldoc = require 'nldoc'

local emitter = nldoc.Emitter.create()

-- add documentation header
emitter:add[[
# SFML
This is a binding of the CSFML library
]]

nldoc.generate_doc(emitter, 'sfml.nelua')

nldoc.write_file('docs/sfml.md', emitter:generate())