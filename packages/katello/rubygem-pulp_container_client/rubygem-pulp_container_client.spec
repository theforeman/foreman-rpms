# template: scl
%{?scl:%scl_package rubygem-%{gem_name}}
%{!?scl:%global pkg_name %{name}}

%global gem_name pulp_container_client

%global release 1
# %%global prerelease rc1
# %%global prereleaserpm %{?prerelease:.}%{?prerelease}

Name: %{?scl_prefix}rubygem-%{gem_name}
Version: 1.4.1

Release: %{?prereleaserpm:0.}%{release}%{?prereleaserpm}%{?dist}
Summary: Pulp container plugin for Pulp3 API Ruby Gem
Group: Development/Languages
License: GPLv2+
URL: https://github.com/pulp/pulp_container/
Source0: https://rubygems.org/gems/%{gem_name}-%{version}%{?prerelease}.gem

Obsoletes: %{?scl_prefix_ruby}rubygem-pulp_docker_client

# start specfile generated dependencies
Requires: %{?scl_prefix_ruby}ruby(release)
Requires: %{?scl_prefix_ruby}ruby >= 1.9
Requires: %{?scl_prefix_ruby}ruby(rubygems)
Requires: %{?scl_prefix}rubygem(faraday) >= 0.14.0
Requires: %{?scl_prefix_ruby}rubygem(json) >= 2.1.0
Requires: %{?scl_prefix_ruby}rubygem(json) >= 2.1
Requires: %{?scl_prefix_ruby}rubygem(json) < 3
BuildRequires: %{?scl_prefix_ruby}ruby(release)
BuildRequires: %{?scl_prefix_ruby}ruby >= 1.9
BuildRequires: %{?scl_prefix_ruby}rubygems-devel
BuildArch: noarch
Provides: %{?scl_prefix}rubygem(%{gem_name}) = %{version}
# end specfile generated dependencies

%description
Autogenerated bindings for the pulp_container plugin for pulp3

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

%setup -q -D -T -n  %{gem_name}-%{version}%{?prerelease}

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
%gem_install -n %{SOURCE0}
%{?scl:EOF}

%install
mkdir -p %{buildroot}%{gem_dir}
cp -a .%{gem_dir}/* \
        %{buildroot}%{gem_dir}/

%files
%dir %{gem_instdir}
%exclude %{gem_instdir}/git_push.sh
%{gem_libdir}
%exclude %{gem_cache}
%{gem_spec}

%files doc
%doc %{gem_docdir}
%{gem_instdir}/Gemfile
%doc %{gem_instdir}/README.md
%{gem_instdir}/Rakefile
%doc %{gem_instdir}/docs
%{gem_instdir}/pulp_container_client.gemspec
%{gem_instdir}/spec

%changelog
* Mon Jun 08 2020 James Jeffers 1.4.1-1
- Update to 1.4.1

* Mon May 04 2020 Justin Sherrill <jsherril@redhat.com> 1.3.0-1
- Update to 1.3.0

* Thu Mar 26 2020 Samir Jha <sjha4@ncsu.edu> 1.2.0-1
- Update to 1.2.0

* Mon Dec 02 2019 Justin Sherrill <jlsherrill@gmail.com> 1.0.0-1
- 1.0.0 build

* Mon Dec 02 2019 Justin Sherrill <jlsherrill@gmail.com> 1.0.0-0.1.rc1
- Initial build
