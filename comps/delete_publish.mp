has 'content';
has 'title';
use Article;

method handle () {
	  my $session = $m->req->session;
	  print $session;
      if ( !$.title ) {
          $session->{message} = "Title and Content required.";
          $session->{form_data} = $.args;
          $session->{message} = sprintf( "Article with the Title: '%s' Issue while Deleting.", $.title );
          $m->redirect('/all_articles');
      }
      my $article = Article->delete
          ( $.title );
      $article->delete_articles;
      $session->{message} = sprintf( "Article with the Title: '%s' Deleted.", $.title );
      $m->redirect('/all_articles');
}