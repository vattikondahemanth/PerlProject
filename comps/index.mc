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

    <h2>Welcome to my blog.</h2>
	 Hello world! The local time is <% scalar(localtime) %>.

  <p> ------------------------------------------------------------------------------------------------</p>
	<& dynamic_articles.mi &>
	
    <a href="/new_article">Add an article</a>
    <a href="/article_01"> Article - 1</a>


	  <& footer.mi &>

  </body>
</html>