<html>
   <head>
     <link rel="stylesheet" href="/static/css/blog.css">
     <title>My Blog: Home</title>
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