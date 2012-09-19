<?php echo validation_errors(); ?>

<?php echo form_open('auth/login') ?>

    <label for="usuario">Usuario</label> 
    <input type="input" name="identity" /><br />

    <label for="password">Contraseña</label>
    <input type="password" name="password" /><br />
    
    <input type="submit" name="submit" value="Ingresar" /> 

</form>