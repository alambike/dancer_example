# MyWeb-App/bin/app.pl
#!/usr/bin/perl

use Dancer;

get '/' => sub {
    "Hello There!"
};

get '/hello/:name' => sub {
    "Hey ".params->{name}.", how are you?";
};

post '/new' => sub {
    "creating new entry: ".params->{name};
};

Dancer->dance;
