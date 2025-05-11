<div class="flex flex-column ">
    <div class="flex flex-row">
        <input type="radio" id="pay" name="pay" value="direct" checked><label>Thanh toán khi nhận hàng</label>
    </div>
    <div class="flex flex-row">
        <input type="radio" id="pay" name="pay" value="bank"><label>Chuyển khoản ngân hàng</label>
    </div>
</div>
<div class="pay-info hide">
    <p>Số tài khoản: <b>{{ $SHOP_PAYMENT_CARD }}</b></p>
    <p>Chủ tài khoản: <b>{{ $SHOP_PAYMENT_NAME }}</b></p>
    <p>Ngân hàng: <b>{{ $SHOP_PAYMENT_BANK }}</b></p>
    <p>Chi nhánh: <b>{{ $SHOP_PAYMENT_BRANCH }}</b></p>
    <p>Nội dung chuyển khoản: <b>{{ $SHOP_PAYMENT_CONTENT . $ORDER_ID }}</b></p>
</div>