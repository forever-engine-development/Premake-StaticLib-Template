project "PremakeStaticLibTemplate"
	language "C++"
    cppdialect "C++17"
    kind "StaticLib"

    location "Source/"
	targetdir "Build/bin/%{outputdir}/%{prj.name}"
    objdir "Build/obj/%{outputdir}/%{prj.name}"

    files {
		"Source/**.hpp",
		"Source/**.inl",
		"Source/**.cpp"
    }
    vpaths {
      ["Include"] = { "../**.hpp", "../**.inl" },
      ["Source"] = { "../**.cpp" }
    }
    
    includedirs {}
    links {}

    filter "platforms:Win32"
        architecture "x86"
        defines "WIN32"
    filter "platforms:Win64"
        architecture "x86_64"
        defines "WIN64"
    filter "configurations:Debug"
        symbols "On"
        defines "DEBUG"
    filter "configurations:Release"
        optimize "On"
        defines "RELEASE"
