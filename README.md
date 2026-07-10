# Lingmo SDK

Lingmo SDK is the developer toolkit for building Lingmo Desktop applications.

## Usage

`cmake
find_package(LingmoSdk REQUIRED COMPONENTS Quick Appearance Base)
target_link_libraries(myapp PRIVATE
    LingmoSdk::Quick
    LingmoSdk::Appearance
    LingmoSdk::Base
)
`

## Modules

### Foundation Layer
- **lingmo-base** - UUID, MD5, SHA256, file ops, system detection
- **lingmo-ipc** - DBus client/server templates
- **lingmo-config** - Configuration management
- **lingmo-plugin** - Plugin framework interfaces
- **lingmo-utils** - File/process/string/crypto/XDG utils
- **lingmo-icon-engine** - Qt icon engine plugin

### GUI Layer
- **lingmo-appearance** - Theme/color/typography management
- **lingmo-widgets** - Qt Widgets style + QPlatformTheme
- **lingmo-platform** - KWin integration, window management
- **lingmo-shell-surfaces** - Wayland/X11 surface abstraction
- **lingmo-desktop-services** - System QML plugins

### Quick Layer
- **lingmo-quick** - QML controls (50+) + LingmoStyle
- **lingmo-motion** - Animation/interaction system
- **lingmo-network** - Network management QML
- **lingmo-display** - Display management
- **lingmo-portals** - XDG Desktop Portal
- **lingmo-flatpak** - Flatpak integration
- **lingmo-thumbnails** - Thumbnail generation

### Applications Layer
- **lingmo-apps-common** - Shared application components

## Links

- [Architecture](docs/architecture.md)
- [API Overview](docs/api/overview.md)
- [SDK Guide](LINGMODE-SDK-GUIDE.md)
- [Contributing](LINGMODE-CONTRIBUTING.md)
