%define build_timestamp %(date +"%Y%m%d%H%M")

Name:           valadate
Version:        1.0
Release:        1%{?dist}.%{build_timestamp}
Summary:        Valadate

License:        LGPL-3.0+
URL:            https://github.com/chebizarro/valadate
Group:          Development/Tools
Packager:       Jenkins User <jenkins@valadate.org>
Source0:        valadate.tar.gz

BuildRequires:  libtool

%description
For Vala developers who need to test their code, Valadate is a powerful
testing framework that provides behavioral, functional and unit testing
features to help them write great Open Source software. Unlike other testing
frameworks, Valadate is designed especially for Vala while integrating
seamlessly into existing toolchains.


%check
make check


%prep
%setup -q
./autogen.sh

%build
%configure
make %{?_smp_mflags}


%install
rm -rf $RPM_BUILD_ROOT
%make_install


%files
%doc README.md COPYING
%{_libdir}/*
%{_datadir}/*
%{_includedir}/*

%changelog
* Tue Feb 23 2016 Chris Daley <chebizarro@gmail.com> - 1.0.0-1
- Initial RPM release
