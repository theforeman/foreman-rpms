%{?scl:%scl_package nodejs-%{npm_name}}
%{!?scl:%global pkg_name %{name}}

%global npm_name humanize-duration

Name: %{?scl_prefix}nodejs-humanize-duration
Version: 3.20.1
Release: 3%{?dist}
Summary: Convert millisecond durations to English and many other languages
License: Unlicense
Group: Development/Libraries
URL: https://github.com/EvanHahn/HumanizeDuration.js
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
cp -pfr humanize-duration.js %{buildroot}%{nodejs_sitelib}/%{npm_name}
cp -pfr package.json %{buildroot}%{nodejs_sitelib}/%{npm_name}

%nodejs_symlink_deps

%check
%{nodejs_symlink_deps} --check

%files
%{nodejs_sitelib}/%{npm_name}
%license LICENSE.txt
%doc CONTRIBUTING.md
%doc HISTORY.md
%doc README.md

%changelog
* Tue Oct 22 2019 Eric D. Helms <ericdhelms@gmail.com> - 3.20.1-3
- Build for SCL

* Fri Oct 04 2019 Eric D. Helms <ericdhelms@gmail.com> - 3.20.1-2
- Update specs to handle SCL

* Mon Sep 09 2019 Adam Ruzicka <aruzicka@redhat.com> 3.20.1-1
- Add nodejs-humanize-duration generated by npm2rpm using the single strategy
