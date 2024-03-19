<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRoomRequest extends FormRequest
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
            'qhuyen_id'     => 'required',
            'phuongxa_id' => 'required',
            // 'huyen_id'    => 'required',
            'ten'        => 'required',
            'mota' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'qhuyen_id.required'     => 'Quận huyện không được để trống',
            'phuongxa_id.required' => 'Phường xã không được để trống',
            // 'huyen_id.required'    => 'Phường xã không được để trống',
            'ten.required'        => 'Tiêu đề không được để trống',
            'mota.required' => 'Mô tả không được để trống',
        ];
    }
}
