// -------------- cyclist_races ----
DROP TABLE IF EXISTS cycling.cyclist_races;
DROP TYPE IF EXISTS cycling.race;

CREATE TYPE cycling.race (
   race_title text,
   race_date timestamp,
   race_time time);

CREATE TABLE cycling.cyclist_races (
  id UUID PRIMARY KEY,
  lastname text,
  firstname text,
  races list<FROZEN <race>> );

INSERT INTO cycling.cyclist_races (id,races) VALUES (
   e7ae5cf3-d358-4d99-b900-85902fda9bb0,
   [ { race_title:'17th Santos Tour Down Under Aalburg', race_date:'2017-04-14',race_time:'07:00:00' },
     { race_title:'17th Santos Tour Down Under Gelderland', race_date:'2017-04-14', race_time:'08:00:00' } ]);

INSERT INTO cycling.cyclist_races (id, lastname, firstname, races) 
VALUES (
	e7cd5752-bc0d-4157-a80f-7523add8dbcd, 'VAN DER BREGGEN', 'Anna', 
	[ {race_title:'Festival Luxembourgeois du cyclisme feminin Elsy Jacobs - Prologue - Garnich > Garnich',race_date:'2017-04-14',race_time:'08:00:00'},
		{race_title:'Festival Luxembourgeois du cyclisme feminin Elsy Jacobs - Stage 2 - Garnich > Garnich',race_date:'2017-04-14',race_time:'06:00:00'},
		{race_title:'Festival Luxembourgeois du cyclisme feminin Elsy Jacobs - Stage 3 - Mamer > Mamer',race_date:'2017-04-14',race_time:'10:00:00'} ]);

UPDATE cycling.cyclist_races
	SET 
    lastname = 'FRAME',
    firstname = 'Alex',
    races[1] = { race_time:'06:00:00'}
		WHERE id = e7ae5cf3-d358-4d99-b900-85902fda9bb0;