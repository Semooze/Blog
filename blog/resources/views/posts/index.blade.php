<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
    <head>

    </head>
    <body>
        <h3>My Blog</h3>
        <ul>
            @foreach ($posts as $post)
                <li>{{ $post }}</li>
            @endforeach
        </ul>
    </body>
</html>
