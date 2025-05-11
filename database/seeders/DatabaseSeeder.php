<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\AccountModel;
use App\Models\CategoryModel;
use App\Models\DiscountModel;
use App\Models\ProductModel;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        AccountModel::factory()->create([
            'name' => 'Admin',
            'username' => 'admin',
            'phone' => '0123456789',
            'role' => 'admin',
        ]);
        AccountModel::factory()->create([
            'name' => 'Shipper',
            'username' => 'shipper',
            'phone' => '0123456789',
            'role' => 'shipper',
        ]);
        AccountModel::factory()->create([
            'name' => 'Khách hàng',
            'username' => 'user001',
            'phone' => '0123456789',
            'role' => 'guest',
        ]);
        // AccountModel::factory(2)->create();

        CategoryModel::create(
            [
                'name' => 'Đồ ăn nhanh',
                'slug' => 'do-an-nhanh',
            ],
        );
        CategoryModel::create(
            [
                'name' => 'Đồ ăn chay',
                'slug' => 'do-an-chay',
            ],
        );
        CategoryModel::create(
            [
                'name' => 'Đồ ăn vặt',
                'slug' => 'do-an-vat',
            ],
        );
        CategoryModel::create(
            [
                'name' => 'Đồ ăn sáng',
                'slug' => 'do-an-sang',
            ],
        );
        CategoryModel::create(
            [
                'name' => 'Đồ ăn trưa',
                'slug' => 'do-an-trua',
            ],
        );
        CategoryModel::create(
            [
                'name' => 'Đồ ăn tối',
                'slug' => 'do-an-toi',
            ],
        );
        CategoryModel::create(
            [
                'name' => 'Đồ ăn đêm',
                'slug' => 'do-an-dem',
            ],
        );
        CategoryModel::create(
            [
                'name' => 'Đồ uống',
                'slug' => 'do-uong',
            ],
        );

        ProductModel::factory(24)->create();

        DiscountModel::create([
            'name' => 'Giảm giá 10%',
            'percent' => 10,
            'code' => 'demo',
            'start_at' => '2023-01-01 00:00:00',
            'end_at' => '2023-12-31 23:59:59',
        ]);
    }
}
