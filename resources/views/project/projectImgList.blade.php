@foreach($project_file as $k=>$file)
    <div >
        <b>图片{{++$k}}</b>
        类型：{{$file->file_type}} &nbsp;&nbsp;&nbsp;
        创建时间：{{$file->created_at}}&nbsp;&nbsp;&nbsp;
        描述：{{$file->file_name}}
    </div>
    <div style="padding-bottom: 20px">
        <img src="/storage/{{$file->file_url}}" style="min-width: 300px;max-width:1000px;max-height: 700px" >
    </div>

@endforeach