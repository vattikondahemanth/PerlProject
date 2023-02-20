

sub get_req_params{
    use URI;
    my $path_args = $m->req->{'env'}->{'REQUEST_URI'};

    my $uri = URI->new($path_args);
    my $query = $uri->query;
    my @array = split("=", $query);

    foreach
    return 
}