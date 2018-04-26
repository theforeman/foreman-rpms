%global npm_name babel-plugin-syntax-object-rest-spread
%global enable_tests 1

Name: nodejs-%{npm_name}
Version: 6.13.0
Release: 1%{?dist}
Summary: Allow parsing of object rest/spread
License: MIT
Group: Development/Libraries
URL: https://www.npmjs.com/package/babel-plugin-syntax-object-rest-spread
Source0: https://registry.npmjs.org/%{npm_name}/-/%{npm_name}-%{version}.tgz
BuildRequires: nodejs-packaging
BuildArch: noarch
ExclusiveArch: %{nodejs_arches} noarch

%description
%{summary}

%prep
%setup -q -n package

%install
mkdir -p %{buildroot}%{nodejs_sitelib}/%{npm_name}
cp -pfr lib %{buildroot}%{nodejs_sitelib}/%{npm_name}
cp -pfr package.json %{buildroot}%{nodejs_sitelib}/%{npm_name}

%nodejs_symlink_deps

%if 0%{?enable_tests}
%check
%{nodejs_symlink_deps} --check
%endif

%files
%{nodejs_sitelib}/%{npm_name}
%doc README.md

%changelog
* Thu Apr 26 2018 Ewoud Kohl van Wijngaarden <ewoud@kohlvanwijngaarden.nl> 6.13.0-1
- Add nodejs-babel-plugin-syntax-object-rest-spread generated by npm2rpm using the single strategy

