# template: scl
%{?scl:%scl_package rubygem-%{gem_name}}
%{!?scl:%global pkg_name %{name}}

%global gem_name openscap_parser

Name: %{?scl_prefix}rubygem-%{gem_name}
Version: 1.0.2
Release: 1%{?dist}
Summary: Parse OpenSCAP content
Group: Development/Languages
License: MIT
URL: https://github.com/OpenSCAP/openscap_parser
Source0: https://rubygems.org/gems/%{gem_name}-%{version}.gem

# start specfile generated dependencies
Requires: %{?scl_prefix_ruby}ruby(release)
Requires: %{?scl_prefix_ruby}ruby
Requires: %{?scl_prefix_ruby}ruby(rubygems)
Requires: %{?scl_prefix}rubygem(nokogiri) >= 1.6
Requires: %{?scl_prefix}rubygem(nokogiri) < 2
BuildRequires: %{?scl_prefix_ruby}ruby(release)
BuildRequires: %{?scl_prefix_ruby}ruby
BuildRequires: %{?scl_prefix_ruby}rubygems-devel
BuildArch: noarch
Provides: %{?scl_prefix}rubygem(%{gem_name}) = %{version}
# end specfile generated dependencies

%description
This gem is a Ruby interface into SCAP content. It can parse SCAP datastream
files (i.e. ssg-rhel7-ds.xml), scan result files output by oscap eval, and
tailoring files.


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

mkdir -p %{buildroot}%{_bindir}
cp -a .%{_bindir}/* \
        %{buildroot}%{_bindir}/
find %{buildroot}%{gem_instdir}/bin -type f | xargs chmod a+x

%files
%dir %{gem_instdir}
%exclude %{_bindir}/console
%exclude %{_bindir}/setup
%exclude %{gem_instdir}/.gitignore
%exclude %{gem_instdir}/.travis.yml
%exclude %{gem_instdir}/Dockerfile
%license %{gem_instdir}/LICENSE.txt
%{gem_instdir}/bin
%{gem_libdir}
%exclude %{gem_cache}
%{gem_spec}

%files doc
%doc %{gem_docdir}
%{gem_instdir}/Gemfile
%doc %{gem_instdir}/README.md
%doc %{gem_instdir}/CODE_OF_CONDUCT.md
%{gem_instdir}/Rakefile
%{gem_instdir}/openscap_parser.gemspec

%changelog
* Mon Jan 18 2021 Ondrej Prazak <oprazak@redhat.com> 1.0.2-1
- Update to 1.0.2

* Fri Jan 17 2020 Zach Huntington-Meath <zhunting@redhat.com> - 1.0.0-3
- Update spec to remove the ror scl

* Wed Jan 08 2020 Eric D. Helms <ericdhelms@gmail.com> - 1.0.0-2
- Rebuild into SCL

* Wed Nov 27 2019 Ondrej Prazak <oprazak@redhat.com> 1.0.0-1
- Add rubygem-openscap_parser generated by gem2rpm using the nonscl template
