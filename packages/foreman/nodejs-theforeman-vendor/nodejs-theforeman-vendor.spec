%global npm_name @theforeman/vendor
%global npm_version 0.1.0-alpha.4

Name: nodejs-theforeman-vendor
Version: 0.1.0
Release: 0.1.alpha.4%{?dist}
Summary: foreman supported 3rd-party node_modules
License: MIT
Group: Development/Libraries
URL: https://github.com/sharvit/foreman-js#readme
Source0: https://registry.npmjs.org/%{npm_name}/-/%{npm_name}-%{npm_version}.tgz
BuildRequires: nodejs-packaging
Requires: npm(copy-webpack-plugin) >= 4.6.0
Requires: npm(copy-webpack-plugin) < 5.0.0
BuildArch: noarch
ExclusiveArch: %{nodejs_arches} noarch

%description
%{summary}

%prep
%setup -q -n package

%install
mkdir -p %{buildroot}%{nodejs_sitelib}/%{npm_name}
cp -pfr dist %{buildroot}%{nodejs_sitelib}/%{npm_name}
cp -pfr lib %{buildroot}%{nodejs_sitelib}/%{npm_name}
cp -pfr package.json %{buildroot}%{nodejs_sitelib}/%{npm_name}
cp -pfr scss %{buildroot}%{nodejs_sitelib}/%{npm_name}
cp -pfr webpack.plugin.js %{buildroot}%{nodejs_sitelib}/%{npm_name}


%files
%{nodejs_sitelib}/%{npm_name}
%license license
%doc readme.md

%changelog
* Mon May 27 2019 Evgeni Golov 0.1.0-0.1.alpha.4
- Add nodejs-theforeman-vendor generated by npm2rpm using the single strategy

