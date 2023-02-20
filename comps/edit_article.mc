<html>
   <head>
     <link rel="stylesheet" href="/static/css/blog.css">
     <title>My Blog: Home</title>
   </head>
   <body>
        <& header.mi &>

<%init>

warn("============eidt_article is being executed!\n");

use Article;

use URI;
my $path_args = $m->req->{'env'}->{'REQUEST_URI'};

my $uri = URI->new($path_args);
my $query = $uri->query;
my @array = split("=", $query);

my @articles = @{ Article -> edit_articles($array[1]) };


</%init>

    </div>
        <div align="center">
			<h2>Edit your article</h2>
% if (@articles) {
%   foreach my $article (@articles) {

			<form action="edit_publish" type="POST">
                <p>Argument 1: <% $path_args %></p>
                <p>$queryquery 1: <% $query %></p>
                <p>$arrayarray 1wwwwwwwwww: <% $array[1] %></p>
				<div class="mt-2">
				<input type="text" id="title" class="fadeIn third" name="title" value=<% $article -> {_title} %>>
				</div>
				<br />
				<div class="mt-2">
				<input type="text" id="content" class="fadeIn second" name="content" value=<% $article -> {_content} %>>
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
%   }
% }

		<div>

        <& footer.mi &>

  </body>
</html>
