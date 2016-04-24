



{include file='header.tpl'}
<div class="android-content mdl-layout__content">
	<div class="android-more-section">
		<div class="android-more-section">
        	<div class="android-section-title mdl-typography--display-1-color-contrast">邀请码</div>
            	<div class="android-card-container mdl-grid">
                	<div class="mdl-cell mdl-cell--10-col mdl-cell--10-col-tablet mdl-cell--10-col-phone mdl-card mdl-shadow--3dp">
                    <div class="mdl-card__title">
                 <h4 class="mdl-card__title-text">小梯梯的邀请码</h4>
              </div>
						<table>
											<thead>
											<tr>
												<th>###</th>
												<th>邀请码 (点击邀请码进入注册页面)</th>
												<th>状态</th>
											</tr>
											</thead>
											<tbody>
											{foreach $codes as $code}
											<tr>
												<td>{$code->id}</td>
												<td><a href="/auth/register?code={$code->code}">{$code->code}</a></td>
												<td>可用</td>
											</tr>
											{/foreach}
											</tbody>
										</table>
			</div>
    	</div>
	</div>
</div>

{include file='footer.tpl'}