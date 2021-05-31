# template: smart_proxy_plugin
%{?scl:%scl_package rubygem-%{gem_name}}
%{!?scl:%global pkg_name %{name}}

%{!?_root_bindir:%global _root_bindir %{_bindir}}
%{!?_root_datadir:%global _root_datadir %{_datadir}}
%{!?_root_localstatedir:%global _root_localstatedir %{_localstatedir}}
%{!?_root_sysconfdir:%global _root_sysconfdir %{_sysconfdir}}

%global gem_name smart_proxy_acd
%global plugin_name acd

%global foreman_proxy_min_version 2.0
%global foreman_proxy_dir %{_root_datadir}/foreman-proxy
%global foreman_proxy_statedir %{_root_localstatedir}/lib/foreman-proxy
%global foreman_proxy_bundlerd_dir %{foreman_proxy_dir}/bundler.d
%global foreman_proxy_settingsd_dir %{_root_sysconfdir}/foreman-proxy/settings.d
%global smart_proxy_dynflow_bundlerd_dir %{_datadir}/smart_proxy_dynflow_core/bundler.d

Name: %{?scl_prefix}rubygem-%{gem_name}
Version: 0.2.0
Release: 1%{?foremandist}%{?dist}
Summary: Application Centric Deployment smart proxy plugin
Group: Applications/Internet
License: GPLv3
URL: http://github.com/ATIX-AG/smart_proxy_acd
Source0: https://rubygems.org/gems/%{gem_name}-%{version}.gem

Requires: %{?scl_prefix}rubygem(smart_proxy_dynflow_core) >= 0.2.2
Requires: %{?scl_prefix}rubygem(smart_proxy_acd_core)

# start specfile generated dependencies
Requires: foreman-proxy >= %{foreman_proxy_min_version}
Requires: %{?scl_prefix_ruby}ruby(release)
Requires: %{?scl_prefix_ruby}ruby
Requires: %{?scl_prefix_ruby}ruby(rubygems)
BuildRequires: %{?scl_prefix_ruby}ruby(release)
BuildRequires: %{?scl_prefix_ruby}ruby
BuildRequires: %{?scl_prefix_ruby}rubygems-devel
BuildArch: noarch
Provides: %{?scl_prefix}rubygem(%{gem_name}) = %{version}
Provides: foreman-proxy-plugin-%{plugin_name} = %{version}
# end specfile generated dependencies

%description
Application Centric Deployment smart proxy plugin.


%package doc
Summary: Documentation for %{name}
Group: Documentation
Requires: %{name} = %{version}-%{release}
BuildArch: noarch

%{?scl:Obsoletes: rubygem-%{gem_name}-doc}

%description doc
Documentation for %{name}.

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

# bundler file
mkdir -p %{buildroot}%{foreman_proxy_bundlerd_dir}
mv %{buildroot}%{gem_instdir}/bundler.d/%{plugin_name}.rb \
   %{buildroot}%{foreman_proxy_bundlerd_dir}

# sample config
mkdir -p %{buildroot}%{foreman_proxy_settingsd_dir}
mv %{buildroot}%{gem_instdir}/settings.d/acd.yml.example \
   %{buildroot}%{foreman_proxy_settingsd_dir}/acd.yml

# bundler.d file for smart_proxy_acd_core
mkdir -p %{buildroot}%{smart_proxy_dynflow_bundlerd_dir}
cat <<EOF | tee %{buildroot}%{smart_proxy_dynflow_bundlerd_dir}/smart_proxy_acd_core.rb \
                %{buildroot}%{foreman_proxy_bundlerd_dir}/smart_proxy_acd_core.rb \
                >/dev/null
gem 'smart_proxy_acd_core'
EOF

%files
%dir %{gem_instdir}
%config(noreplace) %attr(0640, root, foreman-proxy) %{foreman_proxy_settingsd_dir}/acd.yml
%license %{gem_instdir}/LICENSE
%{gem_instdir}/bundler.d
%{gem_libdir}
%{gem_instdir}/settings.d
%{foreman_proxy_bundlerd_dir}/%{plugin_name}.rb
%{foreman_proxy_bundlerd_dir}/smart_proxy_acd_core.rb
%{smart_proxy_dynflow_bundlerd_dir}/smart_proxy_acd_core.rb
%exclude %{gem_cache}
%{gem_spec}

%files doc
%doc %{gem_docdir}
%doc %{gem_instdir}/README.md

%changelog
* Mon May 31 2021 Bernhard Suttner <suttner@atix.de> 0.2.0-1
- Update to 0.2.0

* Tue Apr 06 2021 Eric D. Helms <ericdhelms@gmail.com> - 0.1.0-3
- Rebuild plugins for Ruby 2.7

* Wed Mar 17 2021 Adam Ruzicka <aruzicka@redhat.com> 0.1.0-2
- Deploy bundlerd file for foreman proxy

* Tue Mar 09 2021 Bernhard Suttner <suttner@atix.de> 0.1.0-1
- Update to 0.1.0

* Tue Jan 19 2021 Bernhard Suttner <suttner@atix.de> 0.0.1-1
- Add rubygem-smart_proxy_acd generated by gem2rpm using the smart_proxy_plugin template

