include(CMakeFindDependencyMacro)

set(_lingmo_sdk_components
    Base Appearance Quick Motion Widgets Platform DesktopServices
    Ipc Utils IconEngine Plugin Config ShellSurfaces
    Network Display Portals Flatpak Thumbnails AppsCommon
)

foreach(_comp )
    find_dependency(lingmo-)
endforeach()
