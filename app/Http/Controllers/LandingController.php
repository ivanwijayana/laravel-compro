<?php

namespace App\Http\Controllers;

use App\Models\About;
use App\Models\Alasan;
use App\Models\Client;
use App\Models\Footer;
use App\Models\FooterLink;
use App\Models\Gallery;
use App\Models\Hero;
use App\Models\Layanan;
use App\Models\Maps;
use App\Models\Project;
use App\Models\ProjectCategory;
use App\Models\Setting;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;

class LandingController extends Controller
{
    public function index()
    {
        $setting = Setting::first();
        $hero = Hero::where('is_active', 1)->get();
        $alasan = Alasan::where('is_active', 1)->first();
        $layanan = Layanan::where('is_active', 1)->get();
        $client = Client::where('is_active', 1)->get();
        $gallery = Gallery::where('is_active', 1)->get();
        $map = Maps::where('is_active', 1)->first();
        $footer = Footer::first();
        $links = FooterLink::all();
        return ($hero->count() >= 0 || $alasan->count() >= 0 || $client->count() >= 0 || $gallery->count() >= 0 || $map->count() >= 0 ) ? view('welcome', compact(['setting', 'hero', 'alasan', 'layanan', 'client', 'gallery', 'map', 'footer', 'links'])) : "<code> You haven't setup the landing page! Sign in to the admin panel <a href='/admin/home'>here</a></code>";
        // return view('welcome', compact(['hero', 'alasan', 'layanan', 'client', 'gallery', 'map']));
    }

    public function about(){
        $setting = Setting::first();
        $about = About::first();
        $footer = Footer::first();
        $links = FooterLink::all();
        return view('about', compact(['setting', 'about', 'footer', 'links']));
    }

    public function projects(){
        $setting = Setting::first();
        $data = DB::table('project')->select('project.*', 'project_category.name AS category_name')->join('project_category', 'project_category.id', '=', 'project.category_id')->get()->groupBy('project.id');
        $data = Collection::unwrap($data);
        $data = reset($data);
        $projects = $data;
        $project_category = ProjectCategory::get();
        $footer = Footer::first();
        $links = FooterLink::all();
        // dd($projects);
        return view('projects', compact(['setting', 'projects', 'project_category', 'footer', 'links']));
    }

    public function blogs(){
        $setting = Setting::first();
        $data = DB::table('blog')->select('blog.*', 'blog_category.name AS category_name')->join('blog_category', 'blog_category.id', '=', 'blog.category_id')->get()->groupBy('blog.id');
        $data = Collection::unwrap($data);
        $data = reset($data);
        $blogs = $data;
        $footer = Footer::first();
        $links = FooterLink::all();
        // dd($blogs);
        return view('blogs', compact(['setting', 'blogs', 'footer', 'links']));
    }

    public function blog_read($id){
        $setting = Setting::first();
        $blog = DB::table('blog')->select('blog.*', 'blog_category.name AS category_name')->join('blog_category', 'blog_category.id', '=', 'blog.category_id')->where('blog.id', $id)->first();
        // dd($blog);
        $footer = Footer::first();
        $links = FooterLink::all();
        return view('blog-read', compact(['setting', 'blog', 'footer', 'links']));
    }
}
