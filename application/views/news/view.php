<div class="new">
        <h3 ><?php echo $news_item['title'] ?></h3>
        <div class="new-text">
            <?php echo $news_item['content'] ?>
            <?php echo $news_item['id'] ?>
        </div>
        <p>Permalink <?php echo anchor("news/view/$news_item[id]",'Ver noticia')?></p>
    </div>
