<div class="page login">
    <form action="" method="post">
        @csrf
        <h1>Quên mật khẩu</h1>
        <p>Lưu ý: Sau khi xác nhận thành công, mật khẩu sẽ được đổi thành ngẫu nhiên và hiện ở thông báo.</p>
        <div class="group">
            <label for="username">Tài khoản</label>
            <input type="text" name="username" id="username" required>
        </div>
        <div class="group">
            <label for="phone">Số điện thoại</label>
            <input type="text" name="phone" id="phone" required>
        </div>
        <div class="group">
            <button class="btn btn-blue" type="submit" id="btn-forgot-password">Xác nhận</button>
        </div>

        <div class="link">
            <label for="">Bạn đã có tài khoản ? </label>
            <a href="{{ route('login') }}">Đăng nhập</a>
        </div>
        <div class="link">
            <label for="">Bạn chưa có tài khoản ? </label>
            <a href="{{ route('register') }}">Đăng ký</a>
        </div>
    </form>
</div>