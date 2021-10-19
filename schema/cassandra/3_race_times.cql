// ------------------- race_times ---
DROP TABLE IF EXISTS cycling.race_times;

CREATE TABLE cycling.race_times (
    race_name text,
    race_time time,
    finish_time duration,
    race_date date,
    cyclist_name text,
    PRIMARY KEY (race_date, race_name, cyclist_name));

INSERT INTO cycling.race_times (race_name, cyclist_name, race_time, race_date) VALUES ('17th Santos Tour Down Under Aalburg', 'Anna VAN DER BREGGEN', '19:15:18', '2017-04-14');
INSERT INTO cycling.race_times (race_name, cyclist_name, race_time, race_date) VALUES ('17th Santos Tour Down Under Aalburg', 'Alex FRAME', '19:15:23', '2017-04-14' );
INSERT INTO cycling.race_times (race_name, cyclist_name, race_time, race_date) VALUES ('17th Santos Tour Down Under Aalburg', 'Paolo TIRALONGO', '19:15:28', '2017-04-14');
INSERT INTO cycling.race_times (race_name, cyclist_name, race_time, race_date) VALUES ('17th Santos Tour Down Under Aalburg', 'Steven KRUIKSWIJK', '19:15:33', '2017-04-14');
INSERT INTO cycling.race_times (race_name, cyclist_name, race_time, race_date) VALUES ('17th Santos Tour Down Under Aalburg', 'Michael MATTHEWS', '19:15:38', '2017-04-14' );