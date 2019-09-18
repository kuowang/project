@extends('layouts.web')

@section('content')

    @if($status == 2)
        <div class="alert alert-block alert-error fade in">
            <button data-dismiss="alert" class="close" type="button">
                ×
            </button>
            <h4 class="alert-heading">
                失败
            </h4>
            <p>
                {{$notice}}
            </p>
        </div>
    @elseif($status ==1)
        <div class="alert alert-block alert-success fade in">
            <button data-dismiss="alert" class="close" type="button">
                ×
            </button>
            <h4 class="alert-heading">
                成功!
            </h4>
            <p>
                {{$notice}}
            </p>
        </div>
    @endif


    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-header">
                        <div class="title">
                            创建用户
                            <span class="mini-title">
                       &nbsp;
                      </span>
                        </div>
                        <span class="tools">
                      <a class="fs1" aria-hidden="true" data-icon="" data-original-title=""></a>
                    </span>
                    </div>
                    <div class="widget-body">

                        <form class="form-horizontal no-margin" action="/admin/post_add_user" method="post">
                            <div class="control-group">
                                <label class="control-label" for="name">
                                    姓名:
                                </label>
                                <div class="controls controls-row">
                                    <input class="span6" type="text" name="username" placeholder="姓名">

                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="email">
                                    邮箱:
                                </label>
                                <div class="controls">
                                    <input type="text" name="email" id="email" class="span6" placeholder="电子邮箱">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="email">
                                    邮箱密码:
                                </label>
                                <div class="controls">
                                    <input type="text" name="email_password" id="email_password" class="span6" placeholder="电子邮箱密码，采购人员发送邮件时使用">
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="password">
                                    登录密码:
                                </label>
                                <div class="controls">
                                    <input type="password" name="password" id="password" class="span6" placeholder="6位以上的字符或数字">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="repPassword">
                                    确认密码:
                                </label>
                                <div class="controls">
                                    <input type="password" name="repPassword" id="repPassword" class="span6" placeholder="再输一次">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="role">
                                    部门:
                                </label>
                                <div class="controls">

                                    <select class="span6 " name="department" >
                                        @foreach ($departmentList as $val )
                                            <option value="{{$val->id}}"> {{$val->department}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="role">
                                    角色:
                                </label>
                                <div class="controls">
                                    @foreach ($role_list as $val )
                                        <label class="checkbox">
                                            <input type="checkbox"  name="roleid[]" value="{{ $val->id }}">
                                            {{ $val->name }}
                                        </label>
                                    @endforeach
                                </div>
                            </div>
                            <div class="form-actions no-margin">
                                <button type="submit" class="btn btn-success pull-right">
                                    创建用户
                                </button>
                                <div class="clearfix">
                                </div>
                            </div>

                        </form>

                    </div>
                </div>
            </div>

        </div>


    </div>
    <style>
        .dashboard-wrapper .left-sidebar {
            margin:auto;
        }
    </style>
@endsection
