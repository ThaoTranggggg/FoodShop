<div class="page login">
    <form action="" method="post">
        @csrf
        <h1>Đăng ký</h1>
        <div class="group">
            <label for="name">Họ tên</label>
            <input type="text" name="name" id="name" required>
        </div>
        <div class="group">
            <label for="username">Tài khoản</label>
            <input type="text" name="username" id="username" required>
        </div>
        <div class="group">
            <label for="phone">Số điện thoại</label>
            <input type="text" name="phone" id="phone" required>
        </div>
        <div class="group">
            <label for="password">Mật khẩu</label>
            <input type="password" name="password" id="password" required>
        </div>
        <div class="group">
            <label for="password">Nhập lại mật khẩu</label>
            <input type="password" name="confirm-password" id="confirm-password" required>
        </div>
        <div class="group">
            <button class="btn btn-blue" type="submit" id="btn-register">Đăng ký</button>
        </div>

        <div class="link">
            <label for="">Bạn đã có tài khoản ? </label>
            <a href="{{ route('login') }}">Đăng nhập</a>
        </div>
        <div class="link">
            <a href="{{ route('forgot_password') }}">Quên mật khẩu ?</a>
        </div>
    </form>
</div>