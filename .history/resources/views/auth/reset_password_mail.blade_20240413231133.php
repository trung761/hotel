<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nhận mật khẩu</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .message {
            margin-bottom: 20px;
        }

        .message p {
            margin: 10px 0;
        }

        .message p:first-child {
            font-weight: bold;
        }

        .cta {
            text-align: center;
        }

        .cta a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #0a8066;
            color: #fff;
            text-decoration: none;
            border-radius: 3px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="message">
            <p>Xin chào <strong>{{ $name }}</strong></p>
            <p>Bạn đã yêu cầu thiết lập lại mật khẩu cho tài khoản của mình.</p>
            <p>Mật khẩu mới của bạn là: <strong>{{ $randomString }}</strong></p>
        </div>
        <div class="cta">
            <a href="http://127.0.0.1:8000/dang-nhap.html">Quay lại trang đăng nhập</a>
        </div>
    </div>
</body>

</html>
