@extends('layouts.layout')

@section('content')

    <div class="container">
        <div class="card">
            <div class="card-header">
                <h2>{{ $post->title }}</h2>
            </div>
            <div class="card-block">
                <p>@markdown($post->body)</p>
                <a href="/" class="btn btn-primary" role="button" aria-disabled="true">Back to homepage</a>
            </div>
        </div>
    </div>

@endsection