# template: foreman_plugin
%{?scl:%scl_package rubygem-%{gem_name}}
%{!?scl:%global pkg_name %{name}}
%{!?_root_sysconfdir:%global _root_sysconfdir %{_sysconfdir}}

%global gem_name foreman_rh_cloud
%global plugin_name rh_cloud
%global foreman_min_version 1.24

Name: %{?scl_prefix}rubygem-%{gem_name}
Version: 2.0.10
Release: 1%{?foremandist}%{?dist}
Summary: Connects Foreman with Red Hat Cloud services
Group: Applications/Systems
License: GPLv3
URL: https://github.com/theforeman/foreman_rh_cloud
Source0: https://rubygems.org/gems/%{gem_name}-%{version}.gem

Autoreq: 0

Obsoletes: %{?scl_prefix}rubygem-foreman_inventory_upload
Obsoletes: %{?scl_prefix}rubygem-foreman_inventory_upload-doc

# start specfile generated dependencies
Requires: foreman >= %{foreman_min_version}
Requires: %{?scl_prefix_ruby}ruby(release)
Requires: %{?scl_prefix_ruby}ruby
Requires: %{?scl_prefix_ruby}ruby(rubygems)
Requires: %{?scl_prefix}rubygem(katello)
Requires: %{?scl_prefix}rubygem(redhat_access)
BuildRequires: foreman-assets >= %{foreman_min_version}
BuildRequires: foreman-plugin >= %{foreman_min_version}
BuildRequires: %{?scl_prefix}rubygem(katello)
BuildRequires: %{?scl_prefix}rubygem(redhat_access)
BuildRequires: %{?scl_prefix_ruby}ruby(release)
BuildRequires: %{?scl_prefix_ruby}ruby
BuildRequires: %{?scl_prefix_ruby}rubygems-devel
BuildArch: noarch
Provides: %{?scl_prefix}rubygem(%{gem_name}) = %{version}
Provides: foreman-plugin-%{plugin_name} = %{version}
# end specfile generated dependencies

# start package.json devDependencies BuildRequires
BuildRequires: %{?scl_prefix}npm(@babel/core) >= 7.7.0
BuildRequires: %{?scl_prefix}npm(@babel/core) < 8.0.0
BuildRequires: %{?scl_prefix}npm(@theforeman/builder) >= 4.0.2
BuildRequires: %{?scl_prefix}npm(@theforeman/builder) < 5.0.0
BuildRequires: %{?scl_prefix}npm(raf) >= 3.4.0
BuildRequires: %{?scl_prefix}npm(raf) < 4.0.0
# end package.json devDependencies BuildRequires

# start package.json dependencies BuildRequires
BuildRequires: %{?scl_prefix}npm(jed) >= 1.1.1
BuildRequires: %{?scl_prefix}npm(jed) < 2.0.0
BuildRequires: %{?scl_prefix}npm(react-intl) >= 2.8.0
BuildRequires: %{?scl_prefix}npm(react-intl) < 3.0.0
# end package.json dependencies BuildRequires

%description
Foreman plugin that process & upload data to Red Hat Cloud.


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
cp -a .%{gem_dir}/* \
        %{buildroot}%{gem_dir}/

%foreman_bundlerd_file
%foreman_precompile_plugin -s

%files
%dir %{gem_instdir}
%license %{gem_instdir}/LICENSE
%{gem_instdir}/app
%{gem_instdir}/config
%{gem_instdir}/db
%{gem_libdir}
%{gem_instdir}/locale
%exclude %{gem_instdir}/package.json
%exclude %{gem_instdir}/webpack
%exclude %{gem_cache}
%{gem_spec}
%{foreman_bundlerd_plugin}
%{foreman_webpack_plugin}
%{foreman_webpack_foreman}
%{foreman_assets_plugin}

%files doc
%doc %{gem_docdir}
%doc %{gem_instdir}/README.md
%{gem_instdir}/Rakefile
%{gem_instdir}/test

%changelog
* Tue Aug 04 2020 Shimon Shtein <sshtein@redhat.com> 2.0.10-1
- Update to 2.0.10-1

* Tue Jul 14 2020 Shimon Shtein <sshtein@redhat.com> 2.0.9-1
- Update to 2.0.9-1

* Tue Jun 30 2020 Shimon Shtein <sshtein@redhat.com> 2.0.8-1
- Update to 2.0.8-1

* Mon May 25 2020 Shimon Shtein <sshtein@redhat.com> 2.0.7-1
- Update to 2.0.7-1

* Wed Apr 22 2020 Shimon Shtein <sshtein@redhat.com> 2.0.6-1
- Update to 2.0.6-1

* Tue Apr 07 2020 Shimon Shtein <sshtein@redhat.com> 2.0.5-1
- Update to 2.0.5-1

* Mon Mar 09 2020 Shimon Shtein <sshtein@redhat.com> 2.0.4-1
- Add rubygem-foreman_rh_cloud generated by gem2rpm using the foreman_plugin template

