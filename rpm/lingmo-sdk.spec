Name:           lingmo-sdk
Version:        1.0.0
Release:        1%{?dist}
Summary:        Lingmo Desktop SDK

License:        GPL-3.0-or-later
URL:            https://github.com/lingmo-os/lingmo-sdk
Source0:        %{url}/archive/v%{version}/%{name}-%{version}.tar.gz

BuildRequires:  cmake >= 3.20
BuildRequires:  gcc-c++
BuildRequires:  extra-cmake-modules
BuildRequires:  qt6-qtbase-devel >= 6.5
BuildRequires:  qt6-qtdeclarative-devel
BuildRequires:  qt6-qttools-devel
BuildRequires:  kf6-config-devel
BuildRequires:  kf6-window-system-devel
BuildRequires:  kf6-coreaddons-devel
BuildRequires:  kf6-guiaddons-devel
BuildRequires:  kf6-iconthemes-devel

%description
Lingmo SDK is the developer toolkit for building Lingmo Desktop applications.
It provides CMake packages, C++ libraries, and QML modules for theme management,
UI controls, animation, and system integration.

%package        devel
Summary:        Development files for %{name}
Requires:       %{name}%{?_isa} = %{version}-%{release}

%description    devel
This package contains the development files for Lingmo SDK.

%prep
%autosetup -n %{name}-%{version}

%build
%cmake
%cmake_build

%install
%cmake_install

%files
%license LICENSE
%doc README.md

%files devel
%{_includedir}/lingmo-*/
%{_libdir}/cmake/LingmoSdk/

%changelog
* Wed Jul 10 2026 Lingmo OS Team <team@lingmo.org> - 1.0.0-1
- Initial release
