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
   <body>
        <& header.mi &>


<%init>

warn("============new_article is being executed!\n");

</%init>
			<div align="center">
			<h2>Create your article</h2>
			<form action="publish" type="POST">
				<div class="mt-2">
				<input type="text" id="title" class="fadeIn third" name="title" placeholder="Enter your title">
				</div>
				<br />
				<div class="mt-2">
				<input type="text" id="content" class="fadeIn second" name="content" placeholder="Enter your content">
				</div>
				<br />
				<div class="mt-2">
				<input type="submit" class="fadeIn fourth" value="Submit">
				<button > <a href="/">Cancel</a> </button>
				</div>
				<br />
				<h2 style="color:#069">
				<% $m -> req -> session -> {message} %>
				</h2>

				</br>
				</br>
			</form>
			<div>
		<& footer.mi &>

	</body>
</html>