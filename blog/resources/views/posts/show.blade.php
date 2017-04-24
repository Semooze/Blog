@extends('layouts.layout')

@section('content')

    <div class="container">
        <h2>{{ $post->title }}</h2>
        <p>@markdown($post->body)</p>
        <a href="/" class="btn btn-primary" role="button" aria-disabled="true">Back to homepage</a>
    </div>

@endsection