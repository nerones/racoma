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
cuatro años de aire no se puede dudar de su calidad',
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

