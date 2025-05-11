<div class="cart-product">
    <div class="image">
        <img src="{{ asset('Images/' . $PRODUCT->avatar) }}" alt="">
        <span>Xem chi tiết</span>
    </div>
    <div class="info">
        <div class="name">{{ $PRODUCT->name }}</div>
        <div class="price">{{ $PRODUCT->priceFormatted }}đ</div>
        <div class="vote">
            @if ($PRODUCT->total != 0)
                {{ $PRODUCT->ratio }}
                <ion-icon name='star-outline'></ion-icon>
                ({{ $PRODUCT->total }} đánh giá)
            @else
                Chưa có đánh giá
            @endif
        </div>
        <div class="description hide">{{ $PRODUCT->description }}</div>
        <div class="add-to-cart">
            <button class="btn btn-blue" id="btn-add-product-to-cart" data-id="{{ $PRODUCT->id }}">Thêm vào giỏ hàng</button>
        </div>
    </div>
</div>