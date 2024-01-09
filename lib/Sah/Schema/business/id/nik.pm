package Sah::Schema::business::id::nik;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'Indonesian citizenship registration number (NIK)',
    prefilters => ['Str::remove_nondigit', 'Business::ID::NIK::check_nik'],
    description => <<'MARKDOWN',

MARKDOWN
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>'123', valid=>0, summary=>'Too short'},
        {value=>'3273010131900005', valid=>0, summary=>'Invalid date (month 13)'},
        {value=>'3273010101900005', valid=>1},
        {value=>'3273 0101 0190 0005', valid=>1, summary=>'Non-digits removed', validated_value=>'3273010101900005'},
    ],
}];

1;

# ABSTRACT:
