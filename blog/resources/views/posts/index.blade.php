@extends('layouts.layout')

@section('content')
    <div class="container">
        <div class="mb-5">
            <h3 >My Blog</h3>
        </div>

        @foreach ($posts as $post)
            <div class="card mb-5">
                <div class="card-header">
                    {{ $post->title }}
                </div>
                <div class="card-block">
                    <p class="card-text">
                        {{ $post->body }}
                    </p>
                    <a href="/posts/{{ $post->id }}" class="btn btn-primary">Read more</a>
                </div>
            </div>
        @endforeach

    <a href="/posts/create" class="btn btn-primary" role="button" aria-disabled="true">Create new post</a>
    </div>
@endsection
