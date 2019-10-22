%{?scl:%scl_package nodejs-%{npm_name}}
%{!?scl:%global pkg_name %{name}}

%global npm_name react-bootstrap-switch

Name: %{?scl_prefix}nodejs-react-bootstrap-switch
Version: 15.5.3
Release: 3%{?dist}
Summary: Turn checkboxes and radio buttons into toggle switches
License: MIT
Group: Development/Libraries
URL: https://github.com/Julusian/react-bootstrap-switch
Source0: https://registry.npmjs.org/%{npm_name}/-/%{npm_name}-%{version}.tgz
%if 0%{?scl:1}
BuildRequires: %{?scl_prefix_nodejs}npm
%else
BuildRequires: nodejs-packaging
%endif
BuildArch: noarch
ExclusiveArch: %{nodejs_arches} noarch
Provides: %{?scl_prefix}npm(%{npm_name}) = %{version}

%description
%{summary}

%prep
%setup -q -n package

%install
mkdir -p %{buildroot}%{nodejs_sitelib}/%{npm_name}
cp -pfr dist %{buildroot}%{nodejs_sitelib}/%{npm_name}
cp -pfr package.json %{buildroot}%{nodejs_sitelib}/%{npm_name}
cp -pfr src %{buildroot}%{nodejs_sitelib}/%{npm_name}

%nodejs_symlink_deps

%check
%{nodejs_symlink_deps} --check

%files
%{nodejs_sitelib}/%{npm_name}
%license LICENSE
%doc README.md

%changelog
* Tue Oct 22 2019 Eric D. Helms <ericdhelms@gmail.com> - 15.5.3-3
- Build for SCL

* Fri Oct 04 2019 Eric D. Helms <ericdhelms@gmail.com> - 15.5.3-2
- Update specs to handle SCL

* Tue Jan 16 2018 Ewoud Kohl van Wijngaarden <ewoud@kohlvanwijngaarden.nl> 15.5.3-1
- new package built with tito
