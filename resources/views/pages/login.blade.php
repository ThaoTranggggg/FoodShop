<div class="page login">
    <form action="" method="post">
        @csrf
        <h1>Đăng nhập</h1>
        <div class="group">
            <label for="username">Tài khoản</label>
            <input type="text" name="username" id="username" required>
        </div>
        <div class="group">
            <label for="password">Mật khẩu</label>
            <input type="password" name="password" id="password" required>
        </div>
        <div class="group">
            <button class="btn btn-blue" type="submit" id="btn-login">Đăng nhập</button>
        </div>

        <div class="link">
            <label for="">Bạn chưa có tài khoản ? </label>
            <a href="{{ route('register') }}">Đăng ký</a>
        </div>
        <div class="link">
            <a href="{{ route('forgot_password') }}">Quên mật khẩu ?</a>
        </div>
    </form>
</div>