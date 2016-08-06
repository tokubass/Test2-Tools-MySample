use Test2::Bundle::Extended -target => 'Test2::Tools::MySample';

package Temp {
    use Test2::Tools::MySample;
    main::imported_ok('ok');
};


pass('Testing Pass');



done_testing;
