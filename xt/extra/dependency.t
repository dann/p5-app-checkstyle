use Test::Dependencies
    exclude => [qw/Test::Dependencies Test::Base Test::Perl::Critic App::checkstyle/],
    style   => 'light';
ok_dependencies();
