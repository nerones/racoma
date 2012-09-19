<div class="show">
        <img id="show_logo_medium" src="<?php echo 'www/img/trial-logo.jpeg'?>" width="150px" height="150px">
        <h3 ><?php echo anchor("shows/view/$show[id]",$show['name'], 'class = page-title') ?></h3>
        <p><strong>Hora de inicio: </strong><?php echo $show['hour_start']?></p>
        <p><strong>Duración: </strong><?php echo $show['duration']?></p>
        <p><strong>Dias que transmite: </strong><?php echo convert_to_days($show['calendar'])?></p>
        <h4 style="clear: right;">Conductores: </h4>
        <div class='inner_box'>
        
        <?php if (count($broadcasters) === 0){ ?>
            <p>No hay informacion de los conductores.</p>
        <?php }else foreach ($broadcasters as $broadcaster): ?>
            <div class='broadcaster_box'>
            <img src="<?php echo $broadcaster['profile_photo'] ? $broadcaster['profile_photo'] :'www/img/no_logo_robado.gif'?>" alt="Not found" width="90px" height="90px">
            <p><strong>Nombre: </strong><?php echo $broadcaster['first_name'].' '.$broadcaster['last_name']?></p>
            <p><?php echo anchor($broadcaster['facebook_url'], 'Facebook').' '.anchor($broadcaster['twitter_url'], 'Twitter')?></p>
            </div>
        <?php endforeach ?>
        </div>
        <h4> Descripción </h4>
        <p><?php echo $show['description'] ?></p>
        <p><?php echo anchor("shows/view/$show[id]",'Mas info')?></p> 
</div>