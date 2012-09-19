<?php foreach ($shows as $show): ?>

    <div class="show_box">
        <img src="<?php echo 'www/img/trial-logo.jpeg'?>" width="110px" height="110px">
        <h3 ><?php echo anchor("shows/view/$show[id]",$show['name'], 'class = page-title') ?></h3>
        <p><strong>Hora de inicio: </strong><?php echo $show['hour_start']?></p>
        <p><strong>Duración: </strong><?php echo $show['duration']?></p>
        <p><strong>Dias que transmite: </strong><?php echo convert_to_days($show['calendar'])?></p>
        <!--<?php echo word_limiter($show['description'], 80) ?>-->
        <?php echo anchor("shows/view/$show[id]",'Mas info')?> 
    </div>

<?php endforeach ?>
