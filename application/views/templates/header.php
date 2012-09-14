<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <base href="<?php echo $this->config->item('base_url') ?>" />
    <link rel="stylesheet" href="www/css/estilo_nel.css" type="text/css" media="screen" />
    <title><?php echo $title ?> - Racoma</title>
</head>
<body>
<div align="center"><div class="body">
    
    <!--<div class="header_menu">
    <!-- #MENU-SUP# 
    <ul>
        <?php echo $this->config->item('base_url') ?>
        <li><a href="index.php" class="button">Inicio</a></li>
        <li><a href="experiences_view.php" class="button">Ver experiencias</a></li>
        <li><a href="" class="button">Texto Ejemplo</a></li>
        <li><a href="" class="button">menu iten</a></li>
        <li><a href="" class="button">menu iten</a></li>
    </ul>
    
    </div>-->
    <div class="header">
        <img src="<?php echo 'www/img/trial-logo.jpeg'?>" class="title_logo" width="90px" height="90px">
        <h1><?php echo 'Radio Livre!'?></h1>
        <h4><?php echo 'La radio del norte'?></h4>
    </div>
    <!-- area derecha sub menu -->
    <div class="left_area">
        <!--<ul>
            <li><a href="" >Institucional</a></li>
            <li><a href="" >Programación</a></li>
            <li><a href="" >Noticias</a></li>
            <li><a href="" >Contacto</a></li>
        </ul>-->
        <?php echo $menu ?>
    </div>
    <!-- cuerpo -->
    <div class="main_area">