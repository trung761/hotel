<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserUpdatePhoneRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'phone_new' => 'required',
            'ma'      => 'required',
        ];
    }

    public function messages()
    {
        return [
            'phone_new.required' => 'Số điện thoại mới không được để trống',
            'ma.required'      => 'Mã code không được để trống',
        ];
    }
}
