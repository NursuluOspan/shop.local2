<?php /* Smarty version Smarty-3.1.6, created on 2020-11-23 13:50:45
         compiled from "../views/admin\adminleftcolumn.tpl" */ ?>
<?php /*%%SmartyHeaderCode:93795fbb9c12022bd0-94454336%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5bfc4a485d21ee775f10f43855e52c6c96921cbf' => 
    array (
      0 => '../views/admin\\adminleftcolumn.tpl',
      1 => 1606135839,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '93795fbb9c12022bd0-94454336',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_5fbb9c12031e6',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5fbb9c12031e6')) {function content_5fbb9c12031e6($_smarty_tpl) {?>

<div id="leftColumn">


<div id="leftMenu">
    <div class="menuCaption">Меню:</div>
        <a href="/admin/">Админ-Панель</a><br/>
        <a href="/">Главная</a><br/>
        <a href="/admin/category/">Категории</a><br/>
        <a href="/admin/products/">Товар</a><br/>
        <a href="/admin/orders/">Заказы</a>
</div>



<?php }} ?>