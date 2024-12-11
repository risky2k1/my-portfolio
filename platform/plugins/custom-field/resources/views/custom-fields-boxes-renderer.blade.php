<textarea
    class="hidden form-control"
    id="custom_fields_json"
    name="custom_fields"
    style="display: none !important;"
    cols="30"
    rows="10"
>{!! isset($customFieldBoxes) ? base64_encode($customFieldBoxes) : '' !!}</textarea>
<div id="custom_fields_container"></div>
