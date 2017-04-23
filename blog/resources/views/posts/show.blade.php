<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    </head>
    <body>
        
        <div class="container">

            <h2>{{ $post->title }}</h2>
            <p>{{ $post->body }}</p>
            <a href="/" class="btn btn-primary" role="button" aria-disabled="true">Back to homepage</a>
        </div>
        </div>
    </body>
</html>
