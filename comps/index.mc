<html>
    <head>
        <link rel="stylesheet" href="/static/css/blog.css">
        <title>My Blog: Home</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    </head>
<%init>
	my $session = $m->req->session;
	$session->{message} = "";
</%init>

   <body>
	  <& header.mi &>
    <div align="center" >
    <h2> Welcome to my blog.</h2>
	  <h4> Hello world! The local time is <% scalar(localtime) %>. </h4>
    <br>
	  <h6> <b> News page </b>    :  To view all code commits  </h6>
	  <h6> <b> Contact Page </b> :  Hierarchy details of the organization  </h6>
	  <h6> <b> Create Article </b>:  Create new article  </h6>
	  <h6> <b> All Article </b>  :   List of all article in our organization  </h6>

    </div>


	  <& footer.mi &>

  </body>
</html>