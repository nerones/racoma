INSERT INTO `racoma-data`.`radios`
(`radio_id`,
`radio_name`,
`radio_estation`,
`radio_path_logo`,
`radio_adress`,
`radio_telephone`,
`radio_facebook`,
`radio_twitter`,
`radio_email`)
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
(`user_id`,
`user_username`,
`user_password`,
`user_type`)
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
(`program_id`,
`program_name`,
`program_hour_start`,
`program_duration`,
`program_description`,
`program_path_logo`,
`program_calendar`)
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
(`new_id`,
`new_creation_date`,
`new_content`,
`new_path_image`,
`users_user_id`)
VALUES
(
1,
CURRENT_TIMESTAMP,
'Una de estas noticias esta muy mal desarrollada pero no importa por que
el contenido de esta noticia es solo a fines de que se pueda ver algo
y nada mas que eso',
'',
1
),
(
2,
CURRENT_TIMESTAMP,
'Una de estas noticias esta muy mal desarrollada pero no importa por que
el contenido de esta noticia es solo a fines de que se pueda ver algo
y nada mas que eso',
'',
1
),
(
3,
CURRENT_TIMESTAMP,
'Una de estas noticias esta muy mal desarrollada pero no importa por que
el contenido de esta noticia es solo a fines de que se pueda ver algo
y nada mas que eso',
'',
1
);

