<?php

/**
 * Created by PhpStorm .
 * User: trungphuna .
 * Date: 4/20/21 .
 * Time: 6:01 PM .
 */

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\File;

if (!function_exists('pare_url_file')) {
    function pare_url_file($image, $folder = 'uploads')
    {
        if (!$image) {
            return '/images/news-1.jpg';
        }
        $explode = explode('__', $image);

        if (isset($explode[0])) {
            $time = str_replace('_', '/', $explode[0]);
            return '/' . $folder . '/' . date('Y/m/d', strtotime($time)) . '/' . $image;
        }
    }
}

if (!function_exists('upload_image')) {
    /**
     * @param $file [tên file trùng tên input]
     * @param array $extend [ định dạng file có thể upload được]
     * @return array|int [ tham số trả về là 1 mảng - nếu lỗi trả về int ]
     */
    function upload_image($file, $folder = '', array $extend = array())
    {
        $code = 1;
        // lay duong dan hinhanh_ct
        $baseFilename = public_path() . '/uploads/' . $_FILES[$file]['name'];

        $size = $_FILES[$file]['size'];
        $size =  round($size / (1024), 1);

        // thong tin file
        $info = new SplFileInfo($baseFilename);

        // duoi file
        $ext = strtolower($info->getExtension());

        // kiem tra dinh dang file
        if (!$extend)
            $extend = ['png', 'jpg', 'jpeg', 'webp', 'gif'];

        if (!in_array($ext, $extend))
            return $data['code'] = 0;

        // Tên file mới
        $nameFile = trim(str_replace('.' . $ext, '', strtolower($info->getFilename())));
        $filename = date('Y-m-d__') . \Illuminate\Support\Str::slug($nameFile) . '.' . $ext;;

        // thu muc goc de upload
        $path = public_path() . '/uploads/' . date('Y/m/d/');
        if ($folder)
            $path = public_path() . '/' . $folder . '/' . date('Y/m/d/');

        if (!File::exists($path))
            @mkdir($path, 0777, true);

        // di chuyen file vao thu muc uploads
        move_uploaded_file($_FILES[$file]['tmp_name'], $path . $filename);
        $data = [
            'name'     => $filename,
            'code'     => $code,
            'ext'      => $ext,
            'path'     => $path,
            'size'     => $size,
            'path_img' => 'uploads/' . $filename
        ];

        return $data;
    }
}


if (!function_exists('gen_time')) {
    function gen_time($time)
    {
        $time = \Carbon\Carbon::parse($time)->format('M d, Y H:i:s');
        return $time;
    }
}

if (!function_exists('get_client_ip')) {
    function get_client_ip()
    {
        if (getenv('HTTP_CLIENT_IP'))
            $ipaddress = getenv('HTTP_CLIENT_IP');
        else if (getenv('HTTP_X_FORWARDED_FOR'))
            $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
        else if (getenv('HTTP_X_FORWARDED'))
            $ipaddress = getenv('HTTP_X_FORWARDED');
        else if (getenv('HTTP_FORWARDED_FOR'))
            $ipaddress = getenv('HTTP_FORWARDED_FOR');
        else if (getenv('HTTP_FORWARDED'))
            $ipaddress = getenv('HTTP_FORWARDED');
        else if (getenv('REMOTE_ADDR'))
            $ipaddress = getenv('REMOTE_ADDR');
        else
            $ipaddress = 'UNKNOWN';

        return $ipaddress;
    }
}

if (!function_exists('apart_time')) {
    function apart_time($start, $stop)
    {
        $start = \Carbon\Carbon::parse($start);
        $stop = \Carbon\Carbon::parse($stop);
        return $stop->diffInSeconds($start);
    }
}

if (!function_exists('detect_category_expenditure')) {
    function detect_category_expenditure($id)
    {
        $categories = (new \TrungPhuNA\Admin\Entities\Expenditure())->getCategories();
        foreach ($categories as $item) {
            if ($item['id'] === $id) return $item;
        }
        return  "[N\A]";
    }
}


if (!function_exists('get_name_short')) {
    function get_name_short($name)
    {
        if ($name == '') return "[N\A]";

        $name      = trim($name);

        $arrayName = explode(' ', $name, 2);
        $string = '';
        if (count($arrayName)) {
            foreach ($arrayName as $item) {
                $string .= mb_substr($item, 0, 1);
            }
        }

        return $string;
    }
}


function generateRandomString($length = 10)
{
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}


if (!function_exists('get_data_user')) {
    function get_data_user($type, $field = 'id')
    {
        return \Auth::guard($type)->user() ? \Auth::guard($type)->user()->$field : '';
    }
}
