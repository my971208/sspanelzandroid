{include file='admin/main.tpl'}

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            最近登陆记录
           
        </h1>
    </section>


    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body table-responsive no-padding">
                        {$logs->render()}
						
						<table class="table table-hover">
							<tr>
								<th>ID</th>
								<th>用户ID</th>
								<th>用户名</th>
								<th>IP</th>
								<th>归属地</th>
								<th>时间</th>
								<th>类型</th>
							</tr>
							{foreach $logs as $log}
								<tr>
									<td>#{$log->id}</td>
									<td>{$log->userid}</td>
									<td>{$log->user()->user_name}</td>
									<td>{$log->ip}</td>
									<td>{$loc[$log->ip]}</td>
									<td>{$log->datetime()}</td>
									{if $log->type==0}
										<td>成功</td>
									{else}
										<td>失败</td>
									{/if}
								</tr>
							{/foreach}
						</table>
                        {$logs->render()}
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>
        </div>

    </section><!-- /.content -->
</div><!-- /.content-wrapper -->

{include file='user/footer.tpl'}