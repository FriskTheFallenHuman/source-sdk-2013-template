# groups.cmake

if (${BUILD_GROUP} STREQUAL "game")

	if (${BUILD_GAME} STREQUAL "scratch")
		include("${SRCDIR}/game/client/client_scratch.cmake")
		include("${SRCDIR}/game/server/server_scratch.cmake")
	endif()
	
	include("${SRCDIR}/mathlib/mathlib.cmake")
	include("${SRCDIR}/raytrace/raytrace.cmake")
	include("${SRCDIR}/tier1/tier1.cmake")
	include("${SRCDIR}/vgui2/vgui_controls/vgui_controls.cmake")

endif()