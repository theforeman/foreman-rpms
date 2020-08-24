# template: foreman_plugin
%{?scl:%scl_package rubygem-%{gem_name}}
%{!?scl:%global pkg_name %{name}}
%{!?_root_sysconfdir:%global _root_sysconfdir %{_sysconfdir}}

%global gem_name redhat_access
%global plugin_name redhat_access
%global foreman_min_version 1.18

Name: %{?scl_prefix}rubygem-%{gem_name}
Version: 2.2.16
Release: 1%{?foremandist}%{?dist}
Summary: Plugin to add Redhat Access to Foreman
Group: Applications/Systems
License: GPLv3
URL: https://github.com/redhataccess/foreman-plugin
Source0: https://rubygems.org/gems/%{gem_name}-%{version}.gem

# start specfile generated dependencies
Requires: foreman >= %{foreman_min_version}
Requires: %{?scl_prefix_ruby}ruby(release)
Requires: %{?scl_prefix_ruby}ruby
Requires: %{?scl_prefix_ruby}ruby(rubygems)
Requires: %{?scl_prefix}rubygem(redhat_access_lib) >= 1.1.5
Requires: %{?scl_prefix}rubygem(angular-rails-templates) >= 0.0.4
Requires: %{?scl_prefix}rubygem(foreman-tasks)
Requires: %{?scl_prefix}rubygem(katello)
BuildRequires: foreman-assets >= %{foreman_min_version}
BuildRequires: foreman-plugin >= %{foreman_min_version}
BuildRequires: %{?scl_prefix}rubygem(redhat_access_lib) >= 1.1.5
BuildRequires: %{?scl_prefix}rubygem(angular-rails-templates) >= 0.0.4
BuildRequires: %{?scl_prefix}rubygem(foreman-tasks)
BuildRequires: %{?scl_prefix}rubygem(katello)
BuildRequires: %{?scl_prefix_ruby}ruby(release)
BuildRequires: %{?scl_prefix_ruby}ruby
BuildRequires: %{?scl_prefix_ruby}rubygems-devel
BuildArch: noarch
Provides: %{?scl_prefix}rubygem(%{gem_name}) = %{version}
Provides: foreman-plugin-%{plugin_name} = %{version}
# end specfile generated dependencies
Obsoletes: %{?scl_prefix}rubygem-foreman-%{gem_name} < %{version}

%description
This plugin adds Red Hat Access knowledge base search, case management and
diagnostics to Foreman.


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
mkdir -p %{buildroot}%{_root_sysconfdir}/%{plugin_name}

cp -a .%{gem_dir}/* \
        %{buildroot}%{gem_dir}/

# Copy config file
cp -pa $RPM_BUILD_DIR/%{gem_name}-%{version}/config/config.yml.example %{buildroot}%{_root_sysconfdir}/%{plugin_name}/config.yml

%foreman_bundlerd_file
%foreman_precompile_plugin -a -s

# This plugin is not able to compile static assets directly
mkdir -p %{buildroot}/%{gem_instdir}/public/assets
cp -r  $RPM_BUILD_DIR/%{gem_name}-%{version}/vendor/assets/images/*  %{buildroot}/%{gem_instdir}/public/assets
cp -r  $RPM_BUILD_DIR/%{gem_name}-%{version}/vendor/assets/fonts/*  %{buildroot}/%{gem_instdir}/public/assets

%files
%dir %{gem_instdir}
%license %{gem_instdir}/LICENSE.txt
%{gem_instdir}/app
%{gem_instdir}/ca
%{gem_instdir}/config
%{gem_instdir}/db
%{gem_libdir}
%{gem_instdir}/locale
%{gem_instdir}/public
%{gem_instdir}/script
%{gem_instdir}/vendor
%exclude %{gem_cache}
%{gem_spec}
%{foreman_bundlerd_plugin}
%{foreman_apipie_cache_foreman}
%{foreman_apipie_cache_plugin}
%{foreman_assets_plugin}

%config(noreplace) %{_root_sysconfdir}/%{plugin_name}/config.yml

%files doc
%doc %{gem_docdir}
%{gem_instdir}/Gemfile
%doc %{gem_instdir}/README.rdoc
%{gem_instdir}/Rakefile
%{gem_instdir}/redhat_access.gemspec
%{gem_instdir}/test

%changelog
* Mon Aug 24 2020 Marek Hulan <mhulan@redhat.com> 2.2.16-1
- Update to 2.2.16

* Tue Feb 25 2020 Evgeni Golov 2.2.11-1
- Update to 2.2.11-1

* Tue Jan 07 2020 Eric D. Helms <ericdhelms@gmail.com> - 2.2.6-2
- Drop migrate, seed and restart posttans

* Fri May 17 2019 Marek Hulan <mhulan@redhat.com> 2.2.6-1
- Update to 2.2.6

* Mon May 13 2019 Marek Hulan <mhulan@redhat.com> 2.2.5-1
- Update to 2.2.5

* Wed Apr 17 2019 Marek Hulan <mhulan@redhat.com> 2.2.4-1
- Update to 2.2.4

* Tue Mar 26 2019 Marek Hulan <mhulan@redhat.com> 2.2.3-1
- Update to 2.2.3

* Thu Feb 28 2019 Marek Hulan <mhulan@redhat.com> 2.2.2-1
- Update to 2.2.2

* Tue Nov 13 2018 Marek Hulan <mhulan@redhat.com> 2.2.0-1
- Update to 2.2.0

* Tue Sep 11 2018 Eric D. Helms <ericdhelms@gmail.com> - 2.1.6-3
- Rebuild for Rails 5.2 and Ruby 2.5

* Thu Aug 02 2018 Daniel Lobato <dlobatog@redhat.com> 2.1.6-2
- Include static assets

* Wed Jul 04 2018 Marek Hulan <mhulan@redhat.com> 2.1.6-1
- Update to 2.1.6

* Tue Jun 12 2018 Marek Hulan <mhulan@redhat.com> 2.1.5-1
- Update to 2.1.5

* Tue Apr 03 2018 Marek Hulan <mhulan@redhat.com>
- Add rubygem-redhat_access generated by gem2rpm using the foreman_plugin template

