%global npm_name react-dnd-html5-backend

Name: nodejs-react-dnd-html5-backend
Version: 7.6.0
Release: 1%{?dist}
Summary: HTML5 backend for React DnD
License: MIT
Group: Development/Libraries
URL: https://github.com/react-dnd/react-dnd#readme
Source0: https://registry.npmjs.org/%{npm_name}/-/%{npm_name}-%{version}.tgz
BuildRequires: nodejs-packaging
Requires: npm(dnd-core) >= 7.6.0
Requires: npm(dnd-core) < 8.0.0
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
cp -pfr tsconfig.cjs.json %{buildroot}%{nodejs_sitelib}/%{npm_name}
cp -pfr tsconfig.esm.json %{buildroot}%{nodejs_sitelib}/%{npm_name}

%nodejs_symlink_deps

%check
%{nodejs_symlink_deps} --check

%files
%{nodejs_sitelib}/%{npm_name}
%license LICENSE
%doc README.md

%changelog
* Tue Jun 11 2019 Ondřej Ezr <oezr@redhat.com> 7.6.0-1
- Add nodejs-react-dnd-html5-backend generated by npm2rpm using the single strategy

