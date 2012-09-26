<h2>Bienvenido <?=$autenticated?></h2>
<br />
<h4>Puede realizar algunas de las siguientes tareas</h4>
<ul>
    <li> <?php echo anchor('admin/news/create', 'Crear una nueva noticia') ?> </li>
    <li><?php echo anchor('admin/shows/create', 'Registrar un nuevo programa') ?></li>
</ul>