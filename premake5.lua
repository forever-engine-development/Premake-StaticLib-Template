workspace "Premake StaticLib Template"
    --- startproject "Sandbox"
	configurations {
		"Debug",
		"Release"
	}
	platforms {
		"Win32",
		"Win64"
	}

include "configurations.lua"
--- include "Premake StaticLib Template"
--- include "Sandbox"
