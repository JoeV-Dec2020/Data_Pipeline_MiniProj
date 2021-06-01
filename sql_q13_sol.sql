-- find all the defenders who scored a goal for their teams
select player_mast.jersey_no, player_mast.player_name, count(*) goals_scored
 from  goal_details, player_mast, playing_position
 where goal_details.player_id = player_mast.player_id
  and  player_mast.posi_to_play = playing_position.position_id
  and  playing_position.position_desc = 'Defenders'
 group by player_mast.jersey_no, player_mast.player_name;

-- jersey_no, player_name,              goals_scored
-- '9',       'Olivier Giroud',         '3'
-- '19',      'Bogdan Stancu',          '2'
-- '22',      'Fabian Schar',           '1'
-- '11',      'Gareth Bale',            '3'
-- '9',       'Hal Robson-Kanu',        '2'
-- '14',      'Vasili Berezutski',      '1'
-- '7',       'Arkadiusz Milik',        '1'
-- '13',      'Thomas Muller',          '1'
-- '3',       'Gerard Pique',           '1'
-- '3',       'Ciaran Clark',           '1'
-- '9',       'Graziano Pelle',         '2'
-- '9',       'Adam Szalai',            '1'
-- '17',      'Nani',                   '3'
-- '18',      'Admir Mehmedi',          '1'
-- '7',       'Antoine Griezmann',      '6'
-- '11',      'Jamie Vardy',            '1'
-- '15',      'Daniel Sturridge',       '1'
-- '4',       'Gareth McAuley',         '2'
-- '7',       'Niall McGinn',           '1'
-- '17',      'Eder',                   '1'
-- '12',      'Milan Skoda',            '1'
-- '7',       'TomasNecid',             '1'
-- '7',       'Alvaro Morata',          '3'
-- '22',      'Nolito',                 '1'
-- '9',       'Romelu Lukaku',          '2'
-- '2',       'Birkir Saevarsson',      '1'
-- '10',      'Armando Sadiku',         '1'
-- '3',       'Neil Taylor',            '1'
-- '23',      'Mario Gomez',            '2'
-- '17',      'Burak Yilmaz',           '1'
-- '16',      'Nikola Kalinic',         '1'
-- '15',      'Jon Dadi Bodvarsson',    '2'
-- '10',      'Zoltan Gera',            '1'
-- '7',       'Balazs Dzsudzsak',       '2'
-- '7',       'Cristiano Ronaldo',      '3'
-- '20',      'Ricardo Quaresma',       '1'
-- '17',      'Jerome Boateng',         '1'
-- '2',       'Toby Alderweireld',      '1'
-- '22',      'Michy Batshuayi',        '1'
-- '3',       'Giorgio Chiellini',      '1'
-- '10',      'Wayne Rooney',           '1'
-- '21',      'Arnor Ingvi Traustason', '1'
-- '9',       'Kolbeinn Sigthorsson',   '2'
-- '9',       'Robert Lewandowski',     '1'
-- '6',       'Ashley Williams',        '1'
-- '18',      'Sam Vokes',              '1'
-- '19',      'Leonardo Bonucci',       '1'
-- '9',       'Eder',                   '1'
