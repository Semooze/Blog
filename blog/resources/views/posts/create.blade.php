@extends('layouts.layout')

@section('content')

    <div class="container">
        <form method="POST" action="/posts">

        {{ csrf_field() }}
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" name="title" class="form-control" id="title" placeholder="Title">
        </div>
        <div class="form-group">
            <label for="body">Body</label>
            <textarea class="form-control" name="body" id="body" rows="5" placeholder="Article"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
        </form>
    </div>

@endsection