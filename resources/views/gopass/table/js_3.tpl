var has_init = JSON.parse(localStorage.getItem(window.location.href + '-hasinit'));
if (has_init != true) {
    localStorage.setItem(window.location.href + '-hasinit', true);
} else {
    {foreach $table_config['total_column'] as $key => $value}
        var checked = JSON.parse(localStorage.getItem(window.location.href + '-haschecked-checkbox_{$key}'));
        if (checked == true) {
            document.getElementById('checkbox_{$key}').checked = true;
        } else {
            document.getElementById('checkbox_{$key}').checked = false;
        }
    {/foreach}
}

{foreach $table_config['total_column'] as $key => $value}
  modify_table_visible('checkbox_{$key}', '{$key}');
{/foreach}