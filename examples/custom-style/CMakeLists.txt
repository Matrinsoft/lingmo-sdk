cmake_minimum_required(VERSION 3.20)

project(lingmo-example-custom-style VERSION 1.0.0 DESCRIPTION "Lingmo SDK Custom Style Example" LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_AUTOMOC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Widgets)
find_package(LingmoSdk REQUIRED COMPONENTS Widgets Appearance)

add_executable(lingmo-example-custom-style
    src/main.cpp
)

target_link_libraries(lingmo-example-custom-style PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Widgets
    LingmoSdk::Widgets
    LingmoSdk::Appearance
)

install(TARGETS lingmo-example-custom-style RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
