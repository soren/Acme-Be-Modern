use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Acme::Be::Modern',
    license             => 'gpl3',
    create_license      => 1,
    dist_author         => q{Søren Lund <soren@lund.org>},
    dist_version_from   => 'lib/Acme/Be/Modern.pm',
    requires => {
        'Filter::Util::Call' => 0,
        'Modern::Perl' => 0,
    },
    build_requires => {
        'Test::More' => 0,
        'Module::Loaded' => 0,
        'Test::CheckManifest' => 0
    },
    configure_requires  => { 
        'Module::Build' => 0.38,
        'Software::License' => 0,
    },
    add_to_cleanup      => [ 'Acme-Be-Modern-*' ],
    create_makefile_pl => 'traditional',
    meta_merge => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url => 'https://github.com/soren/Acme-Be-Modern.git',
                web => 'https://github.com/soren/Acme-Be-Modern/'
            },
            bugtracker => {
                web => 'https://github.com/soren/Acme-Be-Modern/issues'
            }
        }
    }
);

$builder->create_build_script();
