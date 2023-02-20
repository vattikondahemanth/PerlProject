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

    <div class="card">")

    <form action="delete_publish" method="POST"  class="card-body" >

    <div class="form-group">
    <h1 align="center"> {username} </h1>
    <p align="center"> Are you sure you want to delete <strong> {username} </strong> </p>
    </div>

    <div  class="form-group" align="center" >
    <button type="submit" id="delete_btn" class="btn btn-primary">Submit</button>
    <button type="button" class="btn btn-danger">
            <a href="http://localhost:8080/cgi-bin/home/home.py"> Cancel </a> </button>
    </div>
    </form>
    </div>

	  <& footer.mi &>

  </body>
</html>