<html>
   <head>
     <link rel="stylesheet" href="/static/css/blog.css">
     <title>My Blog: Home</title>
<%init>
	my $session = $m->req->session;
	$session->{message} = "";
</%init>

   </head>
   <body>

	  <& header.mi &>

	    <& delete_articles.mi &>


	  <& footer.mi &>

  </body>
</html>