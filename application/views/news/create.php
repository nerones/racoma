<h2>Crear una nueva noticia</h2>

<?php echo validation_errors(); ?>

<?php echo form_open('admin/news/create') ?>

    <label for="title">Titulo: </label> 
    <input type="input" name="title" /><br />

    <label for="content">Cuerpo: </label>
    <textarea name="content"></textarea><br />
    
    <input type="submit" name="submit" value="Crear nueva noticia" /> 

</form>