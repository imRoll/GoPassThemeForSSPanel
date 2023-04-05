{foreach $table_config['total_column'] as $key => $value}
<div class="checkbox-inline custom-control custom-checkbox">
  <input href="javascript:void(0);" onClick="modify_table_visible('checkbox_{$key}', '{$key}')" {if in_array($key, $table_config['default_show_column']) || count($table_config['default_show_column']) == 0}checked=""{/if} class="custom-control-input" id="checkbox_{$key}" name="checkbox_{$key}" type="checkbox">
  <label class="custom-control-label" for="checkbox_{$key}">{$value}</label>
</div>
{/foreach}