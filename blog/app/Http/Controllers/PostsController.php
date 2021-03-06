<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post\Post;

class PostsController extends Controller {

    public function index() {

        $posts = Post::all();

        return view('posts.index', compact('posts'));
    }

    public function show(Post $post) {

        return view('posts.show', compact('post'));

    }

    public function create() {

        return view('posts.create');
        
    }

    public function store(Request $request) {

        $this->validate($request, [
            'title' => 'required|max:255',
            'body' => 'required',
        ]);

        $post = new Post;

        $post->title = request('title');
        $post->body = request('body');

        $post->save();

        return redirect('/');
        
    }

}
