<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductModel extends Model
{
    use HasFactory;

    protected $table = 'products';

    protected $fillable = [
        'name',
        'description',
        'price',
        'category_id',
        'avatar',
        'slug',
    ];

    public static function formatPrice($products)
    {
        foreach ($products as $product) {
            $product->priceFormatted = number_format($product->price, 0, ',', '.');
        }

        return $products;
    }

    public static function search($keyword)
    {
        $products = ProductModel::where('name', 'like', "%$keyword%")
                                ->orWhere('description', 'like', "%$keyword%")
                                ->orderBy('created_at', 'desc')
                                ->orderBy('id', 'desc')
                                ->get();

        return ProductModel::formatPrice($products);
    }
}
