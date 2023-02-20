has 'content';
has 'title';
use Article;

method handle () {
	  my $session = $m->req->session;
	  print $session;
      if ( !$.content || !$.title ) {
          $session->{message} = "Title and Content required.";
          $session->{form_data} = $.args;
          $m->redirect('/edit_article');
      }
      my $article = Article->new
          ( $.title,  $.content, create_time => time() );
      $article->save_edit_articles;
      $session->{message} = sprintf( "Article with the Title: '%s' saved.", $.title );
      $m->redirect('/all_articles');
}