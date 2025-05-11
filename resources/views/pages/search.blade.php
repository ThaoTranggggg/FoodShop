<div class="page">
    <section>
        <div class="path">
            <a href="{{ route("home") }}">Trang chủ</a>
            <i class="fa fa-angle-right"></i>
            <a href="{{ route("search") }}" >Tìm kiếm</a>
        </div>
        <div class="title"><span class="text-gradient">Từ khóa tìm kiếm: </span><i class="highlight-text">`{{ $KEYWORD }}`</i></div>
        <div class="carts-product">
            @if (count($PRODUCTS) == 0)
                <p class="product-empty">Không tìm thấy sản phẩm nào</p>
            @else
                @foreach ($PRODUCTS as $PRODUCT)
                    {{ view('component.cart', ['PRODUCT' => $PRODUCT]) }}
                @endforeach
            @endif
        </div>
    </section>
</div>
