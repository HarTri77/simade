<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PesananBumdes extends Model
{
    public function pesanan()
{
    return $this->hasMany(PesananBumdes::class);
}
}
