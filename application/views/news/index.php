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
            <?php 
            echo $news_item['creation_date'];
            if (isset($autenticated)) echo '| '.anchor("admin/news/edit/$news_item[id]", 'Editar'); 
            ?>
                
        </span>
    </div>

<?php endforeach;
echo $links?>
