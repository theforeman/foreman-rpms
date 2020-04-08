%{?scl:%scl_package rubygem-%{gem_name}}
%{!?scl:%global pkg_name %{name}}

%global gem_name prometheus-client

Name: %{?scl_prefix}rubygem-%{gem_name}
Version: 1.0.0
Release: 2%{?dist}
Summary: A suite of instrumentation metric primitivesthat can be exposed through a web services interface
Group: Development/Languages
License: ASL 2.0
URL: https://github.com/prometheus/client_ruby
Source0: https://rubygems.org/gems/%{gem_name}-%{version}.gem
Requires: %{?scl_prefix_ruby}ruby(release)
Requires: %{?scl_prefix_ruby}ruby
Requires: %{?scl_prefix_ruby}ruby(rubygems)
Requires: %{?scl_prefix}rubygem(quantile) >= 0.2.0
Requires: %{?scl_prefix}rubygem(quantile) < 0.3
BuildRequires: %{?scl_prefix_ruby}ruby(release)
BuildRequires: %{?scl_prefix_ruby}ruby
BuildRequires: %{?scl_prefix_ruby}rubygems-devel
BuildArch: noarch
Provides: %{?scl_prefix}rubygem(%{gem_name}) = %{version}

%description
A suite of instrumentation metric primitivesthat can be exposed through a web
services interface.


%package doc
Summary: Documentation for %{pkg_name}
Group: Documentation
Requires: %{?scl_prefix}%{pkg_name} = %{version}-%{release}
BuildArch: noarch

%description doc
Documentation for %{pkg_name}.

%prep
%{?scl:scl enable %{scl} - << \EOF}
gem unpack %{SOURCE0}
%{?scl:EOF}

%setup -q -D -T -n  %{gem_name}-%{version}

%{?scl:scl enable %{scl} - << \EOF}
gem spec %{SOURCE0} -l --ruby > %{gem_name}.gemspec
%{?scl:EOF}

%build
# Create the gem as gem install only works on a gem file
%{?scl:scl enable %{scl} - << \EOF}
gem build %{gem_name}.gemspec
%{?scl:EOF}

# %%gem_install compiles any C extensions and installs the gem into ./%%gem_dir
# by default, so that we can move it into the buildroot in %%install
%{?scl:scl enable %{scl} - << \EOF}
%gem_install
%{?scl:EOF}

%install
mkdir -p %{buildroot}%{gem_dir}
cp -pa .%{gem_dir}/* \
        %{buildroot}%{gem_dir}/

%files
%dir %{gem_instdir}
%{gem_libdir}
%exclude %{gem_cache}
%{gem_spec}

%files doc
%doc %{gem_docdir}
%doc %{gem_instdir}/README.md

%changelog
* Wed Apr 08 2020 Zach Huntington-Meath <zhunting@redhat.com> - 1.0.0-2
- Bump to release for EL8

* Wed Dec 04 2019 Lukas Zapletal <lzap@redhat.com> 1.0.0-1
- Update to 1.0.0

* Wed Sep 12 2018 Bryan Kearney <bryan.kearney@gmail.com> - 0.7.1-3
- Use ASL 2.0 instead of Apache 2.0 or Apache-2.0

* Wed Sep 05 2018 Eric D. Helms <ericdhelms@gmail.com> - 0.7.1-2
- Rebuild for Rails 5.2 and Ruby 2.5

* Thu Apr 05 2018 Ewoud Kohl van Wijngaarden <ewoud@kohlvanwijngaarden.nl> 0.7.1-1
- Add rubygem-prometheus-client generated by gem2rpm using the scl template

