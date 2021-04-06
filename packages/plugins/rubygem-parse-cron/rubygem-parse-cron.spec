%{?scl:%scl_package rubygem-%{gem_name}}
%{!?scl:%global pkg_name %{name}}

%global gem_name parse-cron

Summary: Cron expression parser
Name: %{?scl_prefix}rubygem-%{gem_name}
Version: 0.1.4
Release: 5%{?foremandist}%{?dist}
Group: Development/Languages

License: MIT
URL: https://github.com/siebertm/parse-cron
Source0: https://rubygems.org/gems/%{gem_name}-%{version}.gem

Requires: %{?scl_prefix_ruby}ruby
Requires: %{?scl_prefix_ruby}ruby(release)
Requires: %{?scl_prefix_ruby}ruby(rubygems)
BuildRequires: %{?scl_prefix_ruby}ruby(release)
BuildRequires: %{?scl_prefix_ruby}rubygems-devel
BuildArch: noarch

Provides: %{?scl_prefix}rubygem(%{gem_name}) = %{version}

%description
Parses cron expressions and calculates the next occurence after a given date

%package doc
Summary: Documentation for %{pkg_name}
Group: Documentation
Requires: %{?scl_prefix}%{pkg_name} = %{version}-%{release}
BuildArch: noarch

%description doc
Documentation for %{pkg_name}

%prep
%setup -n %{pkg_name}-%{version} -q -c -T
%{?scl:scl enable %{scl} - <<EOF}
%gem_install -n %{SOURCE0}
%{?scl:EOF}

%build

%install
mkdir -p %{buildroot}%{gem_dir}
cp -a .%{gem_dir}/* \
        %{buildroot}%{gem_dir}/

%files
%dir %{gem_instdir}
%exclude %{gem_instdir}/.*
%exclude %{gem_instdir}/%{gem_name}.gemspec
%exclude %{gem_instdir}/Gemfile
%exclude %{gem_instdir}/spec
%doc %{gem_instdir}/License
%{gem_instdir}/Rakefile
%{gem_libdir}
%exclude %{gem_cache}
%{gem_spec}

%files doc
%doc %{gem_docdir}
%doc %{gem_instdir}/README.md

%changelog
* Tue Apr 06 2021 Eric D. Helms <ericdhelms@gmail.com> - 0.1.4-5
- Rebuild for Ruby 2.7

* Fri Sep 07 2018 Eric D. Helms <ericdhelms@gmail.com> - 0.1.4-4
- Rebuild for Rails 5.2 and Ruby 2.5

* Tue Jan 09 2018 Eric D. Helms <ericdhelms@gmail.com> 0.1.4-3
- Bump releases for base foreman plugins packages (ericdhelms@gmail.com)
- Use HTTPS URLs for github and rubygems (ewoud@kohlvanwijngaarden.nl)
- Switch to using gem_install macro (ericdhelms@gmail.com)

* Tue Jan 05 2016 Dominic Cleal <dcleal@redhat.com> 0.1.4-2
- Add foremandist to plugin dependencies (dcleal@redhat.com)

* Mon Dec 21 2015 Stephen Benjamin <stephen@redhat.com> 0.1.4-1
- Package parse-cron gem
