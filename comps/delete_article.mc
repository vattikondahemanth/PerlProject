<html>
   <head>
     <link rel="stylesheet" href="/static/css/blog.css">
     <title>My Blog: Home</title>
<%init>
	my $session = $m->req->session;
	$session->{message} = "";


use URI;
my $path_args = $m->req->{'env'}->{'REQUEST_URI'};

my $uri = URI->new($path_args);
my $query = $uri->query;
my @array = split("=", $query);


</%init>

   </head>
   <body>

	  <& header.mi &>

	    <& delete_articles.mi &>

	  <& footer.mi &>

  </body>
</html>