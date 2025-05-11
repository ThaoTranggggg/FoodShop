@csrf
{!! $MODAL_ORDER_DETAIL !!}
<div class="box-dashboard">
    <table id="order-manager" class="table-datatables ui celled table">
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
                        <button class="btn btn-gray" id="btn-order-detail" data-id="{{ $ORDER->id }}" >Xem chi tiết</button>
                        <button class="btn btn-green" id="btn-order-browsing" data-id="{{ $ORDER->id }}">Duyệt đơn</button>
                        <button class="btn btn-red" id="btn-order-cancel-admin" data-id="{{ $ORDER->id }}" >Hủy</button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>