INSERT INTO `racoma-data`.`radios`
(`id`,
`name`,
`estation`,
`path_logo`,
`adress`,
`telephone`,
`facebook_url`,
`twitter_url`,
`email`)
VALUES
(
1,
'Test Radio',
89.9,
'',
'Mi calle 3154',
42568941,
'http://facebook/LaRadio',
'http://twitter.com/LaRadio',
'laradio@compuserve.com'
);

#------------------------------------------
#          Users
#------------------------------------------

INSERT INTO `racoma-data`.`users`
(`id`,
`username`,
`password`,
`type`)
VALUES
(
1,
'admin',
'admin',
'ADMIN'
);


#------------------------------------------
#          Programs
#------------------------------------------

INSERT INTO `racoma-data`.`programs`
(`id`,
`name`,
`hour_start`,
`duration`,
`description`,
`path_logo`,
`calendar`)
VALUES
(
1,
'Programa 1',
'14:00:00',
2,
'Este programa es uno de los mas escuchados de las radios salteñas, con mas de
cuatro años de aire no se puede dudar de su calidad.
adeamsassd de dle ascascas aedfefef uefwcaopfarvnev wv rvhpravh rv aerv vregr
refgerpavnarvarbpaǜbèv
ververververververvniervnriepenv eprj perjv erpvj er vperv epr verjẀEWFWfere.

Adeasmasd aesdfefe',
'',
'1,1,1,1,1,0,0'
),
(
2,
'Programa 2',
'16:00:00',
2,
'Este programa es uno de los mas escuchados de las radios salteñas, con mas de
cuatro años de aire no se puede dudar de su calidad',
'',
'1,1,1,1,1,0,0'
),
(
3,
'Programa 3',
'18:00:00',
2,
'Este programa es uno de los mas escuchados de las radios salteñas, con mas de
cuatro años de aire no se puede dudar de su calidad',
'',
'1,1,1,1,1,0,0'
),
(
4,
'Programa 4',
'22:00:00',
2,
'Este programa es uno de los mas escuchados de las radios salteñas, con mas de
cuatro años de aire no se puede dudar de su calidad',
'',
'1,1,1,1,1,0,0'
),
(
5,
'Programa 5',
'10:00:00',
2,
'Este programa es uno de los mas escuchados de las radios salteñas, con mas de
cuatro años de aire no se puede dudar de su calidad',
'',
'1,1,1,1,1,0,0'
);

#------------------------------------------
#          News
#------------------------------------------


INSERT INTO `racoma-data`.`news`
(`id`,
`creation_date`,
`content`,
`path_image`,
`user_id`,
`title`)
VALUES
(
1,
CURRENT_TIMESTAMP,
'Una de estas noticias esta muy mal desarrollada pero no importa por que
el contenido de esta noticia es solo a fines de que se pueda ver algo
y nada mas que eso',
'',
1,
'Noticia 1'
),
(
2,
CURRENT_TIMESTAMP,
'Una de estas noticias esta muy mal desarrollada pero no importa por que
el contenido de esta noticia es solo a fines de que se pueda ver algo
y nada mas que eso',
'',
1,
'Noticia 2'
),
(
3,
CURRENT_TIMESTAMP,
'Una de estas noticias esta muy mal desarrollada pero no importa por que
el contenido de esta noticia es solo a fines de que se pueda ver algo
y nada mas que eso',
'',
1,
'Noticia 3'
);


#------------------------------------------
#          Broadcasters
#------------------------------------------


INSERT INTO `racoma-data`.`broadcasters`
(`id`,
`first_name`,
`last_name`,
`email`,
`bio`,
`facebook_url`,
`twitter_url`)
VALUES
(
1,
'Fulano',
'Alvarez',
'mail1@compuserve.com',
'A estado trabajando desde que le salieron los primeros granos, pero se puede decir
que poco a cambaido su vida desde entonces ya no se puede pretender que sea
un simple locutor por que la fama lo persigue hasta en la ducha.',
'http://www.facebook.com/alvareezz',
'http://www.twitter.com/el_incomfrota'
),
(
2,
'Fulano2',
'Alvarez2',
'mail12@compuserve.com',
'A estado trabajando desde que le salieron los primeros granos, pero se puede decir
que poco a cambaido su vida desde entonces ya no se puede pretender que sea
un simple locutor por que la fama lo persigue hasta en la ducha.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas at libero nisi, vel eleifend massa. Nulla non erat nec purus ullamcorper eleifend. Praesent elementum, lectus sed commodo placerat, nulla est rhoncus dui, sit amet congue dui erat non lectus. Pellentesque iaculis tellus mollis ipsum hendrerit tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla porttitor massa, vel adipiscing quam adipiscing et. Maecenas mauris erat, elementum iaculis facilisis quis, interdum et lorem. Duis mattis facilisis sapien sed semper. Ut vehicula ullamcorper orci quis euismod. 
Phasellus feugiat lobortis tempus',
'http://www.facebook.com/alvareezz2',
'http://www.twitter.com/el_incomfrota2'
),
(
3,
'Amercio Fulano',
'Alvarez Zapata',
'mail13@compuserve.com',
'A estado trabajando desde que le salieron los primeros granos, pero se puede decir
que poco a cambaido su vida desde entonces ya no se puede pretender que sea
un simple locutor por que la fama lo persigue hasta en la ducha.',
'http://www.facebook.com/americio_alvareezz',
'http://www.twitter.com/el_icofrota'
),
(
4,
'Ernesto',
'Mauricio',
'mail_to_me@compuserve.com',
'A estado trabajando desde que le salieron los primeros granos, pero se puede decir
que poco a cambaido su vida desde entonces ya no se puede pretender que sea
un simple locutor por que la fama lo persigue hasta en la ducha.
Desde entonces no es el mismo de antes ahora se viste distinto se persigue
piensa que lo miran con ojos de billetera pero aun asi deleita con sus disparates.',
'http://www.facebook.com/MauriErnest',
'http://www.twitter.com/el_incomta'
);


#------------------------------------------
#          broadcasters_programs
#------------------------------------------
INSERT INTO `racoma-data`.`broadcasters_programs`
(`id`,
`program_id`,
`broadcaster_id`)
VALUES
(
1,
1,
1
),
(
2,
1,
2
),
(
3,
2,
3
),
(
4,
3,
4
),
(
5,
3,
1
),
(
6,
3,
2
);


