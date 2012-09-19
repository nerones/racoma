<div class="show_current">
        <h5>Emitiendo ahora:</h5>
        <img id="show_logo_medium" src="<?php echo 'www/img/trial-logo.jpeg'?>" width="110px" height="110px">
        <h4 ><?php echo anchor("shows/view/$current_show[id]",$current_show['name'], 'class = page-title') ?></h4>
        <p><strong>Hora de inicio: </strong><?php echo $current_show['hour_start']?></p>
        <p><strong>Duración: </strong><?php echo $current_show['duration']?></p>
        <p><?php echo anchor("shows/view/$current_show[id]",'Mas info')?></p> 
</div>

<h2>Ultimas noticias</h2>
<?php foreach ($news as $news_item): ?>

    <div class="new">
        <h2 ><?php echo anchor("news/view/$news_item[id]",$news_item['title'], 'class = page-title') ?></h2>
        <div class="new-text">
            <?php echo word_limiter($news_item['content'], 80) ?>
        </div>
        <br />
        <span>
            <?php echo anchor("news/view/$news_item[id]",'Ver noticia')?>
            | Creado el
            <?php echo $news_item['creation_date'] ?>    
        </span>
    </div>

<?php endforeach; ?>