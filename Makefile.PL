sub readme_from {
    warn
        "You need to install Module::Install::ReadmeFromPod to generate README";
}

sub use_test_base {
    warn "You need to install Test::Base to run make test from git clone";
}

sub author_requires {
    warn
        "You need to install Module::Install::AuthorRequires to install modules author requires";
}
sub author_tests        { }
sub auto_set_repository { }

use inc::Module::Install;

name 'App-checkstyle';
all_from 'lib/App/checkstyle.pm';

requires(
    'Perl::Metrics::Simple' => 0,
    'Text::Xslate'          => 0,
    'Data::Section::Simple' => 0
);

test_requires( 'Test::More' => 0.88, );
install_script('bin/pm-checkstyle');
auto_include;
WriteAll;
