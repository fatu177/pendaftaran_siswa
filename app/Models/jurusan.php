<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class jurusan extends Model
{
    protected $fillable = [
        'nama_jurusan'
    ];
    use HasFactory, SoftDeletes;
}
