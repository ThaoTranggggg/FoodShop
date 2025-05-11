@csrf
{!! $MODAL_ORDER_DETAIL !!}
@if ($PRODUCTS_RECEIVED != [])
    <div class="box-dashboard">
        <div class="row">
            <div class="title">Đơn hàng đã nhận</div>
            <button class="btn btn-green" id="btn-order-complete">Hoàn thành đơn hàng</button>
        </div>
        <div class="row">
            <h4>Tổng tiền:</h4>
            <h4 id="total-price">{{ number_format($TOTAL) }}đ</h4>
        </div>
        <table class="table-datatables ui celled table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Hình ảnh</th>
                    <th>Tên sản phẩm</th>
                    <th>Số lượng</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($PRODUCTS_RECEIVED as $PRODUCT)
                    <tr>
                        <td>{{ $PRODUCT->id }}</td>
                        <td><img src="{{ asset( 'Images/' . $PRODUCT->avatar) }}" alt=""></td>
                        <td>{{ $PRODUCT->name }}</td>
                        <td>{{ $PRODUCT->quantity }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@else
    <div class="box-dashboard">
        <table id="order-approved" class="table-datatables ui celled table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Số lượng</th>
                    <th>Tổng giá</th>
                    <th>Thời gian</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($ORDERS as $ORDER)
                    <tr>
                        <td>{{ $ORDER->id }}</td>
                        <td>{{ $ORDER->count }}</td>
                        <td>{{ number_format($ORDER->total_discount) }}đ</td>
                        <td>{{ $ORDER->updated_at }}</td>
                        <td>
                            <button class="btn btn-gray" id="btn-order-detail-shipper" data-id="{{ $ORDER->id }}" >Xem chi tiết</button>
                            <button class="btn btn-green" id="btn-order-receiving" data-id="{{ $ORDER->id }}">Nhận đơn</button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endif