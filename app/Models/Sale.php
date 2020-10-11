<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    use HasFactory;
    protected $fillable = [
        'code', 'date', 'client_id',
        'user_id', 'voucher_type_id', 'total',
    ];
}
