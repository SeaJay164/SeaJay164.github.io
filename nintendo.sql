CREATE TABLE systems (
	system_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	system TEXT,
	system_order INTEGER
);

CREATE TABLE franchises (
	franchise_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	franchise TEXT
);

CREATE TABLE subfranchises (
	subfranchise_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	subfranchise TEXT
);

CREATE TABLE games (
	game_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	game TEXT,
	first_release DATE,
	japan_release DATE,
	na_release DATE,
	system_id INTEGER REFERS TO systems (system_id),
	system_release_num INTEGER,
	franchise_id INTEGER REFERS TO franchises (franchis_id)
	subfranchise_id INTEGER REFERS TO subfranchises (subfranchise_id),
	order_num INTEGER,
	note TEXT,
	played TEXT
);

INSERT INTO systems (system, system_order)
VALUES
	('NES', 1),
	('Gameboy', 2),
	('SNES', 3),
	('N64', 4),
	('Gameboy Color', 5),
	('GBA', 6),
	('Gamecube', 7),
	('NDS', 8),
	('Wii', 9),
	('N3DS', 10),
	('Wii U', 11),
	('Switch', 12),
	('Switch 2', 13);

INSERT INTO franchises (franchise)
VALUES
	($$Mario$$),
	($$Sport$$),
	($$Shoot$$),
	($$Fight$$),
	($$Game$$),
	($$Balloon Fight$$),
	($$Ice Climber$$),
	($$Zelda$$),
	($$Metroid$$),
	($$Kid Icarus$$),
	($$Metal Gear$$),
	($$Tetris$$),
	($$EarthBound$$),
	($$Fire Emblem$$),
	($$F-Zero$$),
	($$Pilotwings$$),
	($$Sim$$),
	($$Kirby$$),
	($$Battle Clash$$),
	($$Star Fox$$),
	($$Pokemon$$),
	($$Picross$$),
	($$Cruis'n$$),
	($$Star Wars$$),
	($$007$$),
	($$Banjo-Kazooie$$),
	($$Smash$$),
	($$Pikmin$$),
	($$Animal Crossing$$),
	($$Final Fantasy$$),
	($$Xenoblade$$),
	($$Bayonetta$$),
	($$Splatoon$$);
'
INSERT INTO subfranchises (subfranchise)
VALUES
	('None'),
	('Mario/Donkey Kong'),
	('Mario'),
	('Baseball'),
	('Tennis'),
	('Light Gun'),
	('Golf'),
	('Donkey Kong'),
	('Excite'),
	('Soccer'),
	('Race'),
	('Volley Ball'),
	('Wrestle'),
	('Punch-Out!'),
	('Hockey'),
	('Puzzle'),
	('Football'),
	('Yoshi'),
	('Kart'),
	('Wario'),
	('Main'),
	('Snowboard'),
	('Basketball'),
	('Party'),
	('TCG'),
	('Sport'),
	('Fishing'),
	('Paper Mario'),
	('Luigi'),
	('Remake'),
	('Peach'),
	('Mystery Dungeon'),
	('Ranger'),
	('Toad'),
	('Rabbids'),
	('Legends');

INSERT INTO games (game, first_release, japan_release, na_release, system_id, system_release_num, franchise_id, subfranchise_id, order_num, note, played)
VALUES
	('', '', '', '', , , , , , '', '');
	
