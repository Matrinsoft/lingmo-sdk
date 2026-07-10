cmake_minimum_required(VERSION 3.20)

project(lingmo-sdk VERSION 1.0.0 DESCRIPTION "Lingmo SDK Meta Project" LANGUAGES NONE)

# This is a meta project - it does not build anything itself.
# Individual SDK modules are built independently.
# Use find_package(LingmoSdk) to consume the SDK.
