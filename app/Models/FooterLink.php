<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FooterLink extends Model
{
    use HasFactory;
    protected $table = 'footer_link';
    protected $fillable = ['image', 'title', 'link', 'footer_id'];
}
