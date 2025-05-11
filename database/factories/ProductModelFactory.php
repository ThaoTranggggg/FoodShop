<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ProductModel>
 */
class ProductModelFactory extends Factory
{
    private $product = [
        [
            'name' => 'Burger Bò Phô Mai',
            'slug' => 'burger-bo-pho-mai',
            'avatar' => 'Food/1.png',
            'price' => 50000,
            'description' => 'Burger Bò Phô Mai với lớp thịt bò mềm ngon, phô mai béo ngậy, rau sống tươi mát, sốt mayonnaise thơm ngon, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 1,
        ],
        [
            'name' => 'Khoai Tây Chiên Giòn',
            'slug' => 'khoai-tay-chien-gion',
            'avatar' => 'Food/2.png',
            'price' => 20000,
            'description' => 'Khoai Tây Chiên Giòn với lớp vỏ giòn tan, bên trong mềm thơm, ăn kèm sốt mayonnaise thơm ngon, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 1,
        ],
        [
            'name' => 'Gà Rán Cay',
            'slug' => 'ga-ran-cay',
            'avatar' => 'Food/3.png',
            'price' => 30000,
            'description' => 'Gà Rán Cay với lớp vỏ giòn tan, bên trong thịt gà mềm ngon, cay nồng, ăn kèm sốt mayonnaise thơm ngon, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 1,
        ],
        [
            'name' => 'Bún Chay Nấm',
            'slug' => 'bun-chay-nam',
            'avatar' => 'Food/4.png',
            'price' => 25000,
            'description' => 'Bún Chay Nấm với nước dùng chua ngọt, thơm ngon, bún mềm, nấm dai, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 2,
        ],
        [
            'name' => 'Cơm Chiên Rau Củ',
            'slug' => 'com-chien-rau-cu',
            'avatar' => 'Food/5.png',
            'price' => 30000,
            'description' => 'Cơm Chiên Rau Củ với cơm chiên giòn, thơm, rau củ tươi ngon, ăn kèm trứng chiên và sốt chua ngọt, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 2,
        ],
        [
            'name' => 'Gỏi Cuốn Chay',
            'slug' => 'goi-cuon-chay',
            'avatar' => 'Food/6.png',
            'price' => 20000,
            'description' => 'Gỏi Cuốn Chay với bánh tráng mềm, dai, rau sống tươi mát, chay ngon, ăn kèm nước mắm chua ngọt, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 2,
        ],
        [
            'name' => 'Bánh Tráng Trộn',
            'slug' => 'banh-trang-tron',
            'avatar' => 'Food/7.png',
            'price' => 15000,
            'description' => 'Bánh Tráng Trộn với bánh tráng giòn, thơm, ăn kèm rau sống tươi mát, chà bông, tôm khô, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 3,
        ],
        [
            'name' => 'Xoài Lắc Muối Ớt',
            'slug' => 'xoai-lac-muoi-ot',
            'avatar' => 'Food/8.png',
            'price' => 10000,
            'description' => 'Xoài Lắc Muối Ớt với xoài chua ngọt, giòn, ăn kèm muối ớt, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 3,
        ],
        [
            'name' => 'Bắp Xào Bơ',
            'slug' => 'bap-xao-bo',
            'avatar' => 'Food/9.png',
            'price' => 20000,
            'description' => 'Bắp Xào Bơ với bắp ngọt, giòn, ăn kèm bơ, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 3,
        ],
        [
            'name' => 'Bánh Mì Ốp La',
            'slug' => 'banh-mi-op-la',
            'avatar' => 'Food/10.png',
            'price' => 25000,
            'description' => 'Bánh Mì Ốp La với bánh mì giòn, thơm, ăn kèm trứng ốp la, pate, sốt chua ngọt, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 4,
        ],
        [
            'name' => 'Phở Bò',
            'slug' => 'pho-bo',
            'avatar' => 'Food/11.png',
            'price' => 30000,
            'description' => 'Phở Bò với nước dùng chua ngọt, thơm ngon, bò mềm, dai, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 4,
        ],
        [
            'name' => 'Xôi Gấc',
            'slug' => 'xoi-gac',
            'avatar' => 'Food/12.png',
            'price' => 20000,
            'description' => 'Xôi Gấc với xôi ngọt, thơm, ăn kèm hạt dẻ, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 4,
        ],
        [
            'name' => 'Cơm Tấm Sườn Bì Chả',
            'slug' => 'com-tam-suon-bi-cha',
            'avatar' => 'Food/13.png',
            'price' => 65000,
            'description' => 'Cơm Tấm Sườn Bì Chả với cơm chiên giòn, thơm, sườn nướng, bì chả, ăn kèm trứng chiên và sốt chua ngọt, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 5,
        ],
        [
            'name' => 'Bún Riêu Cua',
            'slug' => 'bun-rieu-cua',
            'avatar' => 'Food/14.png',
            'price' => 35000,
            'description' => 'Bún Riêu Cua với nước dùng chua ngọt, thơm ngon, bún mềm, cua dai, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 5,
        ],
        [
            'name' => 'Bánh Canh Cua',
            'slug' => 'banh-canh-cua',
            'avatar' => 'Food/15.png',
            'price' => 40000,
            'description' => 'Bánh Canh Cua với nước dùng chua ngọt, thơm ngon, bánh canh dai, cua dai, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 5,
        ],
        [
            'name' => 'Lẩu Thái Hải Sản',
            'slug' => 'lau-thai-hai-san',
            'avatar' => 'Food/16.png',
            'price' => 200000,
            'description' => 'Lẩu Thái Hải Sản với nước dùng chua ngọt, thơm ngon, hải sản tươi ngon, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 6,
        ],
        [
            'name' => 'Bò Lúc Lắc',
            'slug' => 'bo-luc-lac',
            'avatar' => 'Food/17.png',
            'price' => 70000,
            'description' => 'Bò Lúc Lắc với thịt bò mềm ngon, sốt lúc lắc thơm ngon, ăn kèm cơm chiên, rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 6,
        ],
        [
            'name' => 'Mì Xào Hải Sản',
            'slug' => 'mi-xao-hai-san',
            'avatar' => 'Food/18.png',
            'price' => 60000,
            'description' => 'Mì Xào Hải Sản với mì xào giòn, thơm, hải sản tươi ngon, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 6,
        ],
        [
            'name' => 'Cháo Lòng',
            'slug' => 'chao-long',
            'avatar' => 'Food/19.png',
            'price' => 25000,
            'description' => 'Cháo Lòng với lòng lợn, lòng gà, lòng bò, cháo mềm, thơm, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 7,
        ],
        [
            'name' => 'Hủ Tiếu Nam Vang',
            'slug' => 'hu-tieu-nam-vang',
            'avatar' => 'Food/20.png',
            'price' => 30000,
            'description' => 'Hủ Tiếu Nam Vang với nước dùng chua ngọt, thơm ngon, hủ tiếu mềm, thịt heo, tôm, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 7,
        ],
        [
            'name' => 'Bánh Bao Nhân Thịt',
            'slug' => 'banh-bao-nhan-thit',
            'avatar' => 'Food/21.png',
            'price' => 15000,
            'description' => 'Bánh Bao Nhân Thịt với bánh bao mềm, thơm, nhân thịt bò, thịt heo, ăn kèm sốt chua ngọt, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 7,
        ],
        [
            'name' => 'Trà Sữa Trân Châu Đen',
            'slug' => 'tra-sua-tran-chau-den',
            'avatar' => 'Food/22.png',
            'price' => 25000,
            'description' => 'Trà Sữa Trân Châu Đen với trà sữa thơm ngon, trân châu đen giòn, ăn kèm đá xay, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 8,
        ],
        [
            'name' => 'Cà Phê Sữa Đá',
            'slug' => 'ca-phe-sua-da',
            'avatar' => 'Food/23.png',
            'price' => 20000,
            'description' => 'Cà Phê Sữa Đá với cà phê thơm ngon, sữa ngọt, ăn kèm đá xay, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 8,
        ],
        [
            'name' => 'Nước Dừa',
            'slug' => 'nuoc-dua',
            'avatar' => 'Food/24.png',
            'price' => 15000,
            'description' => 'Nước Dừa với nước dừa tươi ngon, ăn kèm đá xay, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.',
            'category_id' => 8,
        ],
    ];

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        static $index = 0;        
        $product = $this->product[$index % count($this->product)];
        $index++;
        
        return [
            'name' => $product['name'],
            'slug' => $product['slug'],
            'avatar' => $product['avatar'],
            'price' => $product['price'],
            'description' => $product['description'],
            'category_id' => $product['category_id'],
        ];
    }
}
