{include file='admin/main.tpl'}

<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading">用户列表</h1>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12 col-sm-12">
            <section class="content-inner margin-top-no">

                <div class="card">
                    <div class="card-main">
                        <div class="card-inner">
                            <p>系统中所有用户的列表。</p>
                            <p>
                                付费用户：{$user->paidUserCount()}
                            </p>
                            <p>显示表项:
                                {include file='table/checkbox.tpl'}
                            </p>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-main">
                        <div class="card-inner">
                            <div class="form-group form-group-label">
                                <label class="floating-label" for="quick_create"> 输入 email 快速创建新用户 </label>
                                <input class="form-control maxwidth-edit" id="quick_create" type="text">
                            </div>
                        </div>
                        <div class="card-action">
                            <div class="card-action-btn pull-left">
                                <a class="btn btn-flat waves-attach waves-light" id="quick_create_confirm"><span
                                            class="icon">check</span>&nbsp;创建</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="table-responsive">
                    {include file='table/table.tpl'}
                </div>
                
                
				<div class="card">
					<div class="card-main">
						<h5>&nbsp;&nbsp;用户补单</h5>
				        <div class="card-inner">
							<div class="tab-content">
							<nav class="tab-nav margin-top-no">
								<ul class="nav nav-list">
									<li class="active">
										<a class="" data-toggle="tab" href="#addclass_hour"> 补单时长</a>
									</li>
									<li class="">
										<a class="" data-toggle="tab" href="#addTraffic_gb"> 补单流量</a>
									</li>
									<li class="">
										<a class="" data-toggle="tab" href="#addMoney_cny"> 补单余额</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="card-inner">
							<div class="tab-pane fade active in" id="addclass_hour">
								<p>
									<i class="ni ni-air-baloon"></i> 批量增加时长:
								</p>
								<div class="form-group">
									<label class="form-control-label" for="vip">补单哪个VIP等级&nbsp;:&nbsp;</label>
									<input id="vip" class="form-control form-control-sm" type="number" placeholder="请输入整数...">
								</div>
								<div class="form-group">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="exprice_in" name="exprice_in" class="custom-control-input">
										<label class="custom-control-label" for="exprice_in">增加账号有效期</label>&nbsp;&nbsp;&nbsp;
									 
										<input type="radio" id="class_exprice" name="exprice_in" class="custom-control-input" checked>
										<label class="custom-control-label" for="class_exprice">增加等级有效期</label>
									</div>
								</div> 
								<div class="form-group">
									<label class="form-control-label">填写时长(H):</label>
									<input id="class_h" class="form-control form-control-sm" type="number" placeholder="请输入整数(小时)...">
								</div>
									<button id="addclass_h" type="button" class="btn btn-primary">确认提交</button>
							</div>
							<div class="tab-pane fade" id="addTraffic_gb">
								<p>
									<i class="ni ni-air-baloon"></i> 批量增加流量:
								</p>
								<div class="form-group">
									<label class="form-control-label" for="vip_traffic">补单哪个VIP等级&nbsp;:&nbsp;</label>
									<input id="vip_traffic" class="form-control form-control-sm" type="number" placeholder="请输入整数...">
								</div>
								<div class="form-group">
									<label class="form-control-label">填写流量(GB):</label>
									<input id="user_traffic" class="form-control form-control-sm" type="number" placeholder="请输入整数(GB)...">
								</div>
								
									<button id="addTraffic" type="button" class="btn btn-primary">确认提交</button>
							</div>
							<div class="tab-pane fade" id="addMoney_cny">
							    <p>
									<i class="ni ni-air-baloon"></i> 批量增加余额:
								</p>
								<div class="form-group">
									<label class="form-control-label" for="vip_money">补单哪个VIP等级&nbsp;:&nbsp;</label>
									<input id="vip_money" class="form-control form-control-sm" type="number" placeholder="请输入整数...">
								</div>
								
								<div class="form-group">
									<label class="form-control-label">填写金额(元):</label>
									<input id="user_money" class="form-control form-control-sm" type="number" placeholder="请输入整数(元)...">
								</div>
								
									<button id="addMoney" type="button" class="btn btn-primary">确认提交</button>
							
							</div>
						</div>
					</div>
				</div><!--card-->
				
				
                <div aria-hidden="true" class="modal modal-va-middle fade" id="delete_modal" role="dialog"
                     tabindex="-1">
                    <div class="modal-dialog modal-xs">
                        <div class="modal-content">
                            <div class="modal-heading">
                                <a class="modal-close" data-dismiss="modal">×</a>
                                <h2 class="modal-title">确认要删除？</h2>
                            </div>
                            <div class="modal-inner">
                                <p>请您确认。</p>
                            </div>
                            <div class="modal-footer">
                                <p class="text-right">
                                    <button class="btn btn-flat btn-brand-accent waves-attach waves-effect"
                                            data-dismiss="modal" type="button">取消
                                    </button>
                                    <button class="btn btn-flat btn-brand-accent waves-attach" data-dismiss="modal"
                                            id="delete_input" type="button">确定
                                    </button>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div aria-hidden="true" class="modal modal-va-middle fade" id="changetouser_modal" role="dialog"
                     tabindex="-1">
                    <div class="modal-dialog modal-xs">
                        <div class="modal-content">
                            <div class="modal-heading">
                                <a class="modal-close" data-dismiss="modal">×</a>
                                <h2 class="modal-title">确认要切换为该用户？</h2>
                            </div>
                            <div class="modal-inner">
                                <p>请您确认。</p>
                            </div>
                            <div class="modal-footer">
                                <p class="text-right">
                                    <button class="btn btn-flat btn-brand-accent waves-attach waves-effect"
                                            data-dismiss="modal" type="button">取消
                                    </button>
                                    <button class="btn btn-flat btn-brand-accent waves-attach" data-dismiss="modal"
                                            id="changetouser_input" type="button">确定
                                    </button>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                {include file='dialog.tpl'}


        </div>


    </div>
</main>


{include file='admin/footer.tpl'}

<script>

    function delete_modal_show(id) {
        deleteid = id;
        $("#delete_modal").modal();
    }

    function changetouser_modal_show(id) {
        changetouserid = id;
        $("#changetouser_modal").modal();
    }

    {include file='table/js_1.tpl'}

    window.addEventListener('load', () => {
        table_1 = $('#table_1').DataTable({
            order: [[1, 'asc']],
            stateSave: true,
            serverSide: true,
            ajax: {
                url: "/admin/user/ajax",
                type: "POST",
            },
            columns: [
                {literal}
                {"data": "op", "orderable": false},
                {"data": "id"},
                {"data": "user_name"},
                {"data": "remark"},
                {"data": "email"},
                {"data": "money"},
                {"data": "is_agent"},
                {"data": "im_type"},
                {"data": "im_value"},
                {"data": "node_group"},
                {"data": "expire_in"},
                {"data": "class"},
                {"data": "class_expire"},
                {"data": "passwd"},
                {"data": "port"},
                {"data": "method"},
                {"data": "protocol"},
                {"data": "obfs"},
                {"data": "obfs_param"},
                {"data": "online_ip_count", "orderable": false},
                {"data": "last_ss_time", "orderable": false},
                {"data": "used_traffic"},
                {"data": "enable_traffic"},
                {"data": "last_checkin_time", "orderable": false},
                {"data": "today_traffic"},
                {"data": "enable"},
                {"data": "reg_date"},
                {"data": "reg_ip"},
                {"data": "auto_reset_day"},
                {"data": "auto_reset_bandwidth"},
                {"data": "ref_by"},
                {"data": "ref_by_user_name", "orderable": false},
                {"data": "top_up", "orderable": false}
                {/literal}
            ],
            "columnDefs": [
                {
                    targets: ['_all'],
                    className: 'mdl-data-table__cell--non-numeric'
                }
            ],

            {include file='table/lang_chinese.tpl'}
        });

        var has_init = JSON.parse(localStorage.getItem(`${ldelim}window.location.href{rdelim}-hasinit`));

        if (has_init !== true) {
            localStorage.setItem(`${ldelim}window.location.href{rdelim}-hasinit`, true);
        } else {
            {foreach $table_config['total_column'] as $key => $value}
            var checked = JSON.parse(localStorage.getItem(window.location.href + '-haschecked-checkbox_{$key}'));
            if (checked) {
                $$.getElementById('checkbox_{$key}').checked = true;
            } else {
                $$.getElementById('checkbox_{$key}').checked = false;
            }
            {/foreach}
        }

        {foreach $table_config['total_column'] as $key => $value}
        modify_table_visible('checkbox_{$key}', '{$key}');
        {/foreach}

        function delete_id() {
            $.ajax({
                type: "DELETE",
                url: "/admin/user",
                dataType: "json",
                data: {
                    id: deleteid
                },
                success: data => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                        {include file='table/js_delete.tpl'}
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: jqXHR => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${ldelim}jqXHR{rdelim} 发生了错误。`;
                }
            });
        }


        $$.getElementById('delete_input').addEventListener('click', delete_id);

        // $$.getElementById('search_button').addEventListener('click', () => {
        //     if ($$.getElementById('search') !== '') search();
        // });


        function changetouser_id() {
            $.ajax({
                type: "POST",
                url: "/admin/user/changetouser",
                dataType: "json",
                data: {
                    userid: changetouserid,
                    adminid: {$user->id},
                    local: '/admin/user'
                },
                success: data => {
                    if (data.ret) {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                        window.setTimeout("location.href='/user'", {$config['jump_delay']});
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: jqXHR => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${ldelim}jqXHR{rdelim} 发生了错误。`;
                }
            });
        }

        $$.getElementById('changetouser_input').addEventListener('click', changetouser_id);

        function quickCreate() {
            $.ajax({
                type: 'POST',
                url: '/admin/user/create',
                dataType: 'json',
                data: {
                    userEmail: $$getValue('quick_create')
                },
                success: data => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = data.msg;
                    window.setTimeout("location.href='/admin/user'", 5000);
                },
                error: jqXHR => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `${ldelim}jqXHR{rdelim} 发生了错误。`;
                }
            })
        }

        $$.getElementById('quick_create_confirm').addEventListener('click', quickCreate)
    })
</script>

<script>
 $(document).ready(function () {
   function addclass_h () {
	  var class_h = $$.getElementById("class_h").value;
      if (class_h <= 0) {
          $("#result").modal();
          $("#msg").html("输入有误, 请检查后提交.");
          return;
      }  
      if ($$.getElementById('class_exprice').checked) {
		 var change_class=1;
      } else {
		 var change_class=0;
	  }
      $.ajax({
          type: "POST",
          url: "/admin/user/addclass",
          dataType: "json",
          data: {
              vip: $('#vip').val(),
              change_class,
			  class_h: $('#class_h').val()
          },
          success: data => {
              if (data.ret) {
                  $("#result").modal();
                  $('#msg').html(data.msg);
                window.setTimeout("location.href=window.location.href", 2000);
              } else {
                  $("#result").modal();
                  $('#msg').html(data.msg);
              }
          },
          error: jqXHR => {
              $("#result").modal();
              $('#msg').html("发生错误："+jqXHR.status);
          }
      });
    }
    $("#addclass_h").on('click',addclass_h);
  });

 $(document).ready(function () {
   function addTraffic () {
	  var user_traffic = $$.getElementById("user_traffic").value;
      if (user_traffic <= 0) {
          $("#result").modal();
          $("#msg").html("输入有误, 请检查后提交.");
          return;
      }  
      $.ajax({
          type: "POST",
          url: "/admin/user/addtraffic",
          dataType: "json",
          data: {
              vip: $('#vip_traffic').val(),
			  user_traffic: $('#user_traffic').val()
          },
          success: data => {
              if (data.ret) {
                  $("#result").modal();
                  $('#msg').html(data.msg);
                window.setTimeout("location.href=window.location.href", 2000);
              } else {
                  $("#result").modal();
                  $('#msg').html(data.msg);
              }
          },
          error: jqXHR => {
              $("#result").modal();
              $('#msg').html("发生错误："+jqXHR.status);
          }
      });
    }
    $("#addTraffic").on('click',addTraffic);
  });

 $(document).ready(function () {
   function addMoney () {
	  var user_money = $$.getElementById("user_money").value;
      if (user_money <= 0) {
          $("#result").modal();
          $("#msg").html("输入有误, 请检查后提交.");
          return;
      }
      $.ajax({
          type: "POST",
          url: "/admin/user/addmoney",
          dataType: "json",
          data: {
              vip: $('#vip_money').val(),
			  user_money: $('#user_money').val()
          },
          success: data => {
              if (data.ret) {
                  $("#result").modal();
                  $('#msg').html(data.msg);
                window.setTimeout("location.href=window.location.href", 2000);
              } else {
                  $("#result").modal();
                  $('#msg').html(data.msg);
              }
          },
          error: jqXHR => {
              $("#result").modal();
              $('#msg').html("发生错误："+jqXHR.status);
          }
      });
    }
    $("#addMoney").on('click',addMoney);
  });
</script>
