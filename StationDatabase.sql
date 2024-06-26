--Show Databases; FOR MYSQL

SELECT name, database_id, create_date  
FROM sys.databases;  
GO

SELECT table_name, table_schema, table_type
FROM information_schema.tables
ORDER BY table_name ASC;


CREATE DATABASE STATION;
USE STATION;

CREATE TABLE STATION 
(
    Id	INT,
    City	VARCHAR(512),
    State	VARCHAR(512),
    Lat_N	INT,
    Long_W	INT
);

INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('794', 'Kissee Mills', 'MO', '139', '73');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('824', 'Loma Mar', 'CA', '48', '130');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('603', 'Sandy Hook', 'CT', '72', '148');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('478', 'Tipton', 'IN', '33', '97');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('619', 'Arlington', 'CO', '75', '92');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('711', 'Turner', 'AR', '50', '101');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('839', 'Slidell', 'LA', '85', '151');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('411', 'Negreet', 'LA', '98', '105');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('588', 'Glencoe', 'KY', '46', '136');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('665', 'Chelsea', 'IA', '98', '59');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('342', 'Chignik Lagoon', 'AK', '103', '153');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('733', 'Pelahatchie', 'MS', '38', '28');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('441', 'Hanna City', 'IL', '50', '136');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('811', 'Dorrance', 'KS', '102', '121');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('698', 'Albany', 'CA', '49', '80');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('325', 'Monument', 'KS', '70', '141');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('414', 'Manchester', 'MD', '73', '37');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('113', 'Prescott', 'IA', '39', '65');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('971', 'Graettinger', 'IA', '94', '150');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('266', 'Cahone', 'CO', '116', '127');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('617', 'Sturgis', 'MS', '36', '126');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('495', 'Upperco', 'MD', '114', '29');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('473', 'Highwood', 'IL', '27', '150');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('959', 'Waipahu', 'HI', '106', '33');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('438', 'Bowdon', 'GA', '88', '78');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('571', 'Tyler', 'MN', '133', '58');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('92', 'Watkins', 'CO', '83', '96');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('399', 'Republic', 'MI', '75', '130');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('426', 'Millville', 'CA', '32', '145');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('844', 'Aguanga', 'CA', '79', '65');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('321', 'Bowdon Junction', 'GA', '85', '33');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('606', 'Morenci', 'AZ', '104', '110');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('957', 'South El Monte', 'CA', '74', '79');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('833', 'Hoskinston', 'KY', '65', '65');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('843', 'Talbert', 'KY', '39', '58');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('166', 'Mccomb', 'MS', '74', '42');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('339', 'Kirk', 'CO', '141', '136');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('909', 'Carlock', 'IL', '117', '84');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('829', 'Seward', 'IL', '72', '90');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('766', 'Gustine', 'CA', '111', '140');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('392', 'Delano', 'CA', '126', '91');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('555', 'Westphalia', 'MI', '32', '143');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('33', 'Saint Elmo', 'AL', '27', '50');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('728', 'Roy', 'MT', '41', '51');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('656', 'Pattonsburg', 'MO', '138', '32');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('394', 'Centertown', 'MO', '133', '93');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('366', 'Norvell', 'MI', '125', '93');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('96', 'Raymondville', 'MO', '70', '148');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('867', 'Beaver Island', 'MI', '81', '164');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('977', 'Odin', 'IL', '53', '115');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('741', 'Jemison', 'AL', '62', '25');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('436', 'West Hills', 'CA', '68', '73');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('323', 'Barrigada', 'GU', '60', '147');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('3', 'Hesperia', 'CA', '106', '71');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('814', 'Wickliffe', 'KY', '80', '46');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('375', 'Culdesac', '"ID"', '47', '78');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('467', 'Roselawn', 'IN', '87', '51');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('604', 'Forest Lakes', 'AZ', '144', '114');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('551', 'San Simeon', 'CA', '37', '28');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('706', 'Little Rock', 'AR', '122', '121');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('647', 'Portland', 'AR', '83', '44');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('25', 'New Century', 'KS', '135', '79');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('250', 'Hampden', 'MA', '76', '26');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('124', 'Pine City', 'MN', '119', '129');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('547', 'Sandborn', 'IN', '55', '93');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('701', 'Seaton', 'IL', '128', '78');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('197', 'Milledgeville', 'IL', '90', '113');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('613', 'East China', 'MI', '108', '42');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('630', 'Prince Frederick', 'MD', '104', '57');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('767', 'Pomona Park', 'FL', '100', '163');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('679', 'Gretna', 'LA', '75', '142');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('896', 'Yazoo City', 'MS', '95', '85');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('403', 'Zionsville', 'IN', '57', '36');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('519', 'Rio Oso', 'CA', '29', '105');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('482', 'Jolon', 'CA', '66', '52');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('252', 'Childs', 'MD', '92', '104');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('600', 'Shreveport', 'LA', '136', '38');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('14', 'Forest', 'MS', '120', '50');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('260', 'Sizerock', 'KY', '116', '112');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('65', 'Buffalo Creek', 'CO', '47', '148');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('753', 'Algonac', 'MI', '118', '80');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('174', 'Onaway', 'MI', '108', '55');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('263', 'Irvington', 'IL', '96', '68');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('253', 'Winsted', 'MN', '68', '72');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('557', 'Woodbury', 'GA', '102', '93');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('897', 'Samantha', 'AL', '75', '35');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('98', 'Hackleburg', 'AL', '119', '120');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('423', 'Soldier', 'KS', '77', '152');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('361', 'Arrowsmith', 'IL', '28', '109');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('409', 'Columbus', 'GA', '67', '46');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('312', 'Bentonville', 'AR', '36', '78');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('854', 'Kirkland', 'AZ', '86', '57');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('160', 'Grosse Pointe', 'MI', '102', '91');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('735', 'Wilton', 'ME', '56', '157');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('608', 'Busby', 'MT', '104', '29');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('122', 'Robertsdale', 'AL', '97', '85');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('93', 'Dale', 'IN', '69', '34');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('67', 'Reeds', 'MO', '30', '42');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('906', 'Hayfork', 'CA', '35', '116');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('34', 'Mcbrides', 'MI', '74', '35');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('921', 'Lee Center', 'IL', '95', '77');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('401', 'Tennessee', 'IL', '55', '155');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('536', 'Henderson', 'IA', '77', '77');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('953', 'Udall', 'KS', '112', '59');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('370', 'Palm Desert', 'CA', '106', '145');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('614', 'Benedict', 'KS', '138', '95');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('998', 'Oakfield', 'ME', '47', '132');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('805', 'Tamms', 'IL', '59', '75');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('235', 'Haubstadt', 'IN', '27', '32');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('820', 'Chokio', 'MN', '81', '134');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('650', 'Clancy', 'MT', '45', '164');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('791', 'Scotts Valley', 'CA', '119', '90');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('324', 'Norwood', 'MN', '144', '34');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('442', 'Elkton', 'MD', '103', '156');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('633', 'Bertha', 'MN', '39', '105');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('109', 'Bridgeport', 'MI', '50', '79');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('780', 'Cherry', 'IL', '68', '46');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('492', 'Regina', 'KY', '131', '90');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('965', 'Griffin', 'GA', '38', '151');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('778', 'Pine Bluff', 'AR', '60', '145');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('337', 'Mascotte', 'FL', '121', '146');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('259', 'Baldwin', 'MD', '81', '40');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('955', 'Netawaka', 'KS', '109', '119');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('752', 'East Irvine', 'CA', '106', '115');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('886', 'Pony', 'MT', '99', '162');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('200', 'Franklin', 'LA', '82', '31');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('384', 'Amo', 'IN', '103', '159');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('518', 'Vulcan', 'MO', '108', '91');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('188', 'Prairie Du Rocher', 'IL', '75', '70');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('161', 'Alanson', 'MI', '90', '72');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('486', 'Delta', 'LA', '136', '49');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('406', 'Carver', 'MN', '45', '122');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('940', 'Paron', 'AR', '59', '104');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('237', 'Winchester', '"ID"', '38', '80');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('465', 'Jerome', 'AZ', '121', '34');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('591', 'Baton Rouge', 'LA', '129', '71');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('570', 'Greenview', 'CA', '80', '57');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('429', 'Lucerne Valley', 'CA', '35', '48');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('278', 'Cromwell', 'MN', '128', '53');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('927', 'Quinter', 'KS', '59', '25');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('59', 'Whitewater', 'MO', '82', '71');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('218', 'Round Pond', 'ME', '127', '124');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('291', 'Clarkdale', 'AZ', '58', '73');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('668', 'Rockton', 'IL', '116', '86');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('682', 'Pheba', 'MS', '90', '127');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('775', 'Eleele', 'HI', '80', '152');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('527', 'Auburn', 'IA', '95', '137');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('108', 'North Berwick', 'ME', '70', '27');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('190', 'Oconee', 'GA', '92', '119');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('232', 'Grandville', 'MI', '38', '70');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('405', 'Susanville', 'CA', '128', '80');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('273', 'Rosie', 'AR', '72', '161');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('813', 'Verona', 'MO', '109', '152');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('444', 'Richland', 'GA', '105', '113');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('899', 'Fremont', 'MI', '54', '150');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('738', 'Philipsburg', 'MT', '95', '72');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('215', 'Kensett', 'IA', '55', '139');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('743', 'De Tour Village', 'MI', '25', '25');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('377', 'Koleen', 'IN', '137', '110');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('727', 'Winslow', 'IL', '113', '38');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('363', 'Reasnor', 'IA', '41', '162');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('117', 'West Grove', 'IA', '127', '99');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('420', 'Frankfort Heights', 'IL', '71', '30');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('888', 'Bono', 'AR', '133', '150');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('784', 'Biggsville', 'IL', '85', '138');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('413', 'Linthicum Heights', 'MD', '127', '67');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('695', 'Amazonia', 'MO', '45', '148');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('609', 'Marysville', 'MI', '85', '132');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('471', 'Cape Girardeau', 'MO', '73', '90');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('649', 'Pengilly', 'MN', '25', '154');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('946', 'Newton Center', 'MA', '48', '144');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('380', 'Crane Lake', 'MN', '72', '43');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('383', 'Newbury', 'MA', '128', '85');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('44', 'Kismet', 'KS', '99', '156');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('433', 'Canton', 'ME', '98', '105');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('283', 'Clipper Mills', 'CA', '113', '56');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('474', 'Grayslake', 'IL', '61', '33');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('233', 'Pierre Part', 'LA', '52', '90');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('990', 'Bison', 'KS', '132', '74');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('502', 'Bellevue', 'KY', '127', '121');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('327', 'Ridgway', 'CO', '77', '110');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('4', 'South Britain', 'CT', '65', '33');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('228', 'Rydal', 'GA', '35', '78');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('642', 'Lynnville', 'KY', '25', '146');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('885', 'Deerfield', 'MO', '40', '35');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('539', 'Montreal', 'MO', '129', '127');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('202', 'Hope', 'MN', '140', '43');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('593', 'Aliso Viejo', 'CA', '67', '131');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('521', 'Gowrie', 'IA', '130', '127');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('938', 'Andersonville', 'GA', '141', '72');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('919', 'Knob Lick', 'KY', '135', '33');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('528', 'Crouseville', 'ME', '36', '81');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('331', 'Cranks', 'KY', '55', '27');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('45', 'Rives Junction', 'MI', '94', '116');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('944', 'Ledyard', 'CT', '134', '143');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('949', 'Norway', 'ME', '83', '88');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('88', 'Eros', 'LA', '95', '58');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('878', 'Rantoul', 'KS', '31', '118');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('35', 'Richmond Hill', 'GA', '39', '113');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('17', 'Fredericktown', 'MO', '105', '112');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('447', 'Arkadelphia', 'AR', '98', '49');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('498', 'Glen Carbon', 'IL', '60', '140');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('351', 'Fredericksburg', 'IN', '44', '78');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('774', 'Manchester', 'IA', '129', '123');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('116', 'Mc Henry', 'MD', '93', '112');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('963', 'Eriline', 'KY', '93', '65');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('643', 'Wellington', 'KY', '100', '31');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('781', 'Hoffman Estates', 'IL', '129', '53');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('364', 'Howard Lake', 'MN', '125', '78');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('777', 'Edgewater', 'MD', '130', '72');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('15', 'Ducor', 'CA', '140', '102');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('910', 'Salem', 'KY', '86', '113');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('612', 'Sturdivant', 'MO', '93', '86');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('537', 'Hagatna', 'GU', '97', '151');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('970', 'East Haddam', 'CT', '115', '132');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('510', 'Eastlake', 'MI', '134', '38');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('354', 'Larkspur', 'CA', '107', '65');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('983', 'Patriot', 'IN', '82', '46');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('799', 'Corriganville', 'MD', '141', '153');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('581', 'Carlos', 'MN', '114', '66');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('825', 'Addison', 'MI', '96', '142');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('526', 'Tarzana', 'CA', '135', '81');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('176', 'Grapevine', 'AR', '92', '84');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('994', 'Kanorado', 'KS', '65', '85');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('704', 'Climax', 'MI', '127', '107');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('582', 'Curdsville', 'KY', '84', '150');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('884', 'Southport', 'CT', '59', '63');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('196', 'Compton', 'IL', '106', '99');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('605', 'Notasulga', 'AL', '66', '115');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('430', 'Rumsey', 'KY', '70', '50');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('234', 'Rogers', 'CT', '140', '33');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('700', 'Pleasant Grove', 'AR', '135', '145');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('702', 'Everton', 'MO', '119', '51');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('662', 'Skanee', 'MI', '70', '129');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('171', 'Springerville', 'AZ', '124', '150');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('615', 'Libertytown', 'MD', '144', '111');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('26', 'Church Creek', 'MD', '39', '91');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('692', 'Yellow Pine', '"ID"', '83', '150');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('336', 'Dumont', 'MN', '57', '129');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('464', 'Gales Ferry', 'CT', '104', '37');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('315', 'Ravenna', 'KY', '79', '106');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('505', 'Williams', 'AZ', '73', '111');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('842', 'Decatur', 'MI', '63', '161');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('982', 'Holbrook', 'AZ', '134', '103');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('868', 'Sherrill', 'AR', '79', '152');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('554', 'Brownsdale', 'MN', '52', '50');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('199', 'Linden', 'MI', '53', '32');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('453', 'Sedgwick', 'AR', '68', '75');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('451', 'Fort Atkinson', 'IA', '142', '140');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('950', 'Peachtree City', 'GA', '80', '155');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('326', 'Rocheport', 'MO', '114', '64');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('189', 'West Somerset', 'KY', '73', '45');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('638', 'Clovis', 'CA', '92', '138');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('156', 'Heyburn', '"ID"', '82', '121');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('861', 'Peabody', 'KS', '75', '152');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('722', 'Marion Junction', 'AL', '53', '31');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('428', 'Randall', 'KS', '47', '135');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('677', 'Hayesville', 'IA', '119', '42');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('183', 'Jordan', 'MN', '68', '35');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('322', 'White Horse  Beach', 'MA', '54', '59');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('827', 'Greenville', 'IL', '50', '153');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('242', 'Macy', 'IN', '138', '152');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('621', 'Flowood', 'MS', '64', '149');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('960', 'Deep River', 'IA', '75', '38');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('180', 'Napoleon', 'IN', '32', '160');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('382', 'Leavenworth', 'IN', '100', '121');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('853', 'Coldwater', 'KS', '47', '26');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('105', 'Weldon', 'CA', '134', '118');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('357', 'Yellville', 'AR', '35', '42');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('710', 'Turners Falls', 'MA', '31', '125');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('520', 'Delray Beach', 'FL', '27', '158');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('920', 'Eustis', 'FL', '42', '39');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('684', 'Mineral Point', 'MO', '91', '41');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('355', 'Weldona', 'CO', '32', '58');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('389', 'Midpines', 'CA', '106', '59');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('303', 'Cascade', '"ID"', '31', '157');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('501', 'Tefft', 'IN', '93', '150');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('673', 'Showell', 'MD', '44', '163');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('834', 'Bayville', 'ME', '106', '143');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('255', 'Brighton', 'IL', '107', '32');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('595', 'Grimes', 'IA', '42', '74');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('709', 'Nubieber', 'CA', '132', '49');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('100', 'North Monmouth', 'ME', '130', '78');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('522', 'Harmony', 'MN', '124', '126');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('16', 'Beaufort', 'MO', '71', '85');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('231', 'Arispe', 'IA', '31', '137');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('923', 'Union Star', 'MO', '79', '132');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('891', 'Humeston', 'IA', '74', '122');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('165', 'Baileyville', 'IL', '82', '61');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('757', 'Lakeville', 'CT', '59', '94');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('506', 'Firebrick', 'KY', '49', '95');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('76', 'Pico Rivera', 'CA', '143', '116');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('246', 'Ludington', 'MI', '30', '120');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('583', 'Channing', 'MI', '117', '56');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('666', 'West Baden Springs', 'IN', '30', '96');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('373', 'Pawnee', 'IL', '85', '81');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('504', 'Melber', 'KY', '37', '55');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('901', 'Manchester', 'MN', '71', '84');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('306', 'Bainbridge', 'GA', '62', '56');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('821', 'Sanders', 'AZ', '130', '96');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('586', 'Ottertail', 'MN', '100', '44');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('95', 'Dupo', 'IL', '41', '29');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('524', 'Montrose', 'CA', '136', '119');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('716', 'Schleswig', 'IA', '119', '51');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('849', 'Harbor Springs', 'MI', '141', '148');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('611', 'Richmond', 'IL', '113', '163');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('904', 'Ermine', 'KY', '119', '62');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('740', 'Siler', 'KY', '137', '117');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('439', 'Reeves', 'LA', '35', '51');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('57', 'Clifton', 'AZ', '30', '135');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('155', 'Casco', 'MI', '138', '109');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('755', 'Sturgis', 'MI', '117', '135');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('11', 'Crescent City', 'FL', '58', '117');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('287', 'Madisonville', 'LA', '112', '53');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('435', 'Albion', 'IN', '44', '121');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('672', 'Lismore', 'MN', '58', '103');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('572', 'Athens', 'IN', '75', '120');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('890', 'Eufaula', 'AL', '140', '103');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('975', 'Panther Burn', 'MS', '116', '164');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('914', 'Hanscom Afb', 'MA', '129', '136');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('119', 'Wildie', 'KY', '69', '111');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('540', 'Mosca', 'CO', '89', '141');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('678', 'Bennington', 'IN', '35', '26');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('208', 'Lottie', 'LA', '109', '82');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('512', 'Garland', 'ME', '108', '134');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('352', 'Clutier', 'IA', '61', '127');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('948', 'Lupton', 'MI', '139', '53');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('503', 'Northfield', 'MN', '61', '37');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('288', 'Daleville', 'AL', '121', '136');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('560', 'Osage City', 'KS', '110', '89');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('479', 'Cuba', 'MO', '63', '87');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('826', 'Norris', 'MT', '47', '37');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('651', 'Clopton', 'AL', '40', '84');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('143', 'Renville', 'MN', '142', '99');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('240', 'Saint Paul', 'KS', '66', '163');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('102', 'Kirksville', 'MO', '140', '143');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('69', 'Kingsland', 'AR', '78', '85');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('181', 'Fairview', 'KS', '80', '164');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('175', 'Lydia', 'LA', '41', '39');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('80', 'Bridgton', 'ME', '93', '140');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('596', 'Brownstown', 'IL', '48', '63');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('301', 'Monona', 'IA', '144', '81');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('987', 'Hartland', 'MI', '136', '107');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('973', 'Andover', 'CT', '51', '52');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('981', 'Lakota', 'IA', '56', '92');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('440', 'Grand Terrace', 'CA', '37', '126');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('110', 'Mesick', 'MI', '82', '108');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('396', 'Dryden', 'MI', '69', '47');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('637', 'Beverly', 'KY', '57', '126');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('566', 'Marine On  Saint  Croix', 'MN', '126', 0);
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('801', 'Pocahontas', 'IL', '109', '83');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('739', 'Fort Meade', 'FL', '43', '35');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('130', 'Hayneville', 'AL', '109', '157');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('345', 'Yoder', 'IN', '83', '143');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('851', 'Gatewood', 'MO', '76', '145');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('489', 'Madden', 'MS', '81', '99');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('223', 'Losantville', 'IN', '112', '106');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('538', 'Cheswold', 'DE', '31', '59');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('329', 'Caseville', 'MI', '102', '98');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('815', 'Pomona', 'MO', '52', '50');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('789', 'Hopkinsville', 'KY', '27', '47');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('269', 'Jack', 'AL', '49', '85');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('969', 'Dixie', 'GA', '27', '36');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('271', 'Hillside', 'CO', '99', '68');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('667', 'Hawarden', 'IA', '90', '46');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('350', 'Cannonsburg', 'MI', '91', '120');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('49', 'Osborne', 'KS', '70', '139');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('332', 'Elm Grove', 'LA', '45', '29');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('172', 'Atlantic Mine', 'MI', '131', '99');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('699', 'North Branford', 'CT', '37', '95');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('417', 'New Liberty', 'IA', '139', '94');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('99', 'Woodstock Valley', 'CT', '117', '162');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('404', 'Farmington', 'IL', '91', '72');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('23', 'Honolulu', 'HI', '110', '139');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('1', 'Pfeifer', 'KS', '37', '65');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('127', 'Oshtemo', 'MI', '100', '135');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('657', 'Gridley', 'KS', '118', '55');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('261', 'Fulton', 'KY', '111', '51');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('182', 'Winter Park', 'FL', '133', '32');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('328', 'Monroe', 'LA', '28', '108');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('779', 'Del Mar', 'CA', '59', '95');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('646', 'Greens Fork', 'IN', '133', '135');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('756', 'Garden City', 'AL', '96', '105');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('157', 'Blue River', 'KY', '116', '161');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('400', 'New Ross', 'IN', '134', '120');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('61', 'Brilliant', 'AL', '86', '159');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('610', 'Archie', 'MO', '40', '28');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('985', 'Winslow', 'AR', '126', '126');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('207', 'Olmitz', 'KS', '29', '38');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('941', 'Allerton', 'IA', '61', '112');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('70', 'Norphlet', 'AR', '144', '61');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('343', 'Mechanic Falls', 'ME', '71', '71');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('531', 'North Middletown', 'KY', '42', '141');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('996', 'Keyes', 'CA', '76', '85');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('167', 'Equality', 'AL', '106', '116');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('750', 'Neon', 'KY', '101', '147');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('410', 'Calhoun', 'KY', '95', '56');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('725', 'Alpine', 'AR', '116', '114');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('988', 'Mullan', '"ID"', '143', '154');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('55', 'Coalgood', 'KY', '57', '149');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('640', 'Walnut', 'MS', '40', '76');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('302', 'Saint Petersburg', 'FL', '51', '119');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('387', 'Ojai', 'CA', '68', '119');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('476', 'Julian', 'CA', '130', '101');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('907', 'Veedersburg', 'IN', '78', '94');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('294', 'Orange Park', 'FL', '59', '137');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('661', 'Payson', 'AZ', '126', '154');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('745', 'Windom', 'KS', '114', '126');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('631', 'Urbana', 'IA', '142', '29');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('356', 'Ludlow', 'CA', '110', '87');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('419', 'Lindsay', 'MT', '143', '67');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('494', 'Palatka', 'FL', '94', '52');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('625', 'Bristol', 'ME', '87', '95');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('459', 'Harmony', 'IN', '135', '70');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('636', 'Ukiah', 'CA', '86', '89');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('106', 'Yuma', 'AZ', '111', '153');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('204', 'Alba', 'MI', '91', '103');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('344', 'Zachary', 'LA', '60', '152');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('599', 'Esmond', 'IL', '75', '90');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('515', 'Waresboro', 'GA', '144', '153');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('497', 'Hills', 'MN', '137', '134');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('162', 'Montgomery City', 'MO', '70', '44');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('499', 'Delavan', 'MN', '32', '64');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('362', 'Magnolia', 'MS', '112', '31');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('545', 'Byron', 'CA', '136', '120');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('712', 'Dundee', 'IA', '61', '105');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('257', 'Eureka Springs', 'AR', '72', '34');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('154', 'Baker', 'CA', '31', '148');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('715', 'Hyde Park', 'MA', '65', '156');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('493', 'Groveoak', 'AL', '53', '87');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('836', 'Kenner', 'LA', '91', '126');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('82', 'Many', 'LA', '36', '94');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('644', 'Seward', 'AK', '120', '35');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('391', 'Berryton', 'KS', '60', '139');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('696', 'Chilhowee', 'MO', '79', '49');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('905', 'Newark', 'IL', '72', '129');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('81', 'Cowgill', 'MO', '136', '27');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('31', 'Novinger', 'MO', '108', '111');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('299', 'Goodman', 'MS', '101', '117');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('84', 'Cobalt', 'CT', '87', '26');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('754', 'South Haven', 'MI', '144', '52');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('144', 'Eskridge', 'KS', '107', '63');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('305', 'Bennington', 'KS', '93', '83');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('226', 'Decatur', 'MS', '71', '117');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('224', 'West Hyannisport', 'MA', '58', '96');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('694', 'Ozona', 'FL', '144', '120');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('623', 'Jackson', 'AL', '111', '67');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('543', 'Lapeer', 'MI', '128', '114');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('819', 'Peaks Island', 'ME', '59', '110');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('243', 'Hazlehurst', 'MS', '49', '108');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('457', 'Chester', 'CA', '69', '123');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('871', 'Clarkston', 'MI', '93', '80');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('470', 'Healdsburg', 'CA', '111', '54');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('705', 'Hotchkiss', 'CO', '69', '71');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('690', 'Ravenden Springs', 'AR', '67', '108');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('62', 'Monroe', 'AR', '131', '150');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('365', 'Payson', 'IL', '81', '92');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('922', 'Kell', 'IL', '70', '58');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('838', 'Strasburg', 'CO', '89', '47');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('286', 'Five Points', 'AL', '45', '122');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('968', 'Norris City', 'IL', '53', '76');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('928', 'Coaling', 'AL', '144', '52');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('746', 'Orange City', 'IA', '93', '162');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('892', 'Effingham', 'KS', '132', '97');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('193', 'Corcoran', 'CA', '81', '139');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('225', 'Garden City', 'IA', '54', '119');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('573', 'Alton', 'MO', '79', '112');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('830', 'Greenway', 'AR', '119', '35');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('241', 'Woodsboro', 'MD', '76', '141');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('783', 'Strawn', 'IL', '29', '51');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('675', 'Dent', 'MN', '70', '136');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('270', 'Shingletown', 'CA', '61', '102');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('378', 'Clio', 'IA', '46', '115');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('104', 'Yalaha', 'FL', '120', '119');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('460', 'Leakesville', 'MS', '107', '72');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('804', 'Fort Lupton', 'CO', '38', '93');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('53', 'Shasta', 'CA', '99', '155');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('448', 'Canton', 'MN', '123', '151');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('751', 'Agency', 'MO', '59', '95');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('29', 'South Carrollton', 'KY', '57', '116');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('718', 'Taft', 'CA', '107', '146');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('213', 'Calpine', 'CA', '46', '43');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('624', 'Knobel', 'AR', '95', '62');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('908', 'Bullhead City', 'AZ', '94', '30');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('845', 'Tina', 'MO', '131', '28');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('685', 'Anthony', 'KS', '45', '161');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('731', 'Emmett', '"ID"', '57', '31');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('311', 'South Haven', 'MN', '30', '87');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('866', 'Haverhill', 'IA', '61', '109');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('598', 'Middleboro', 'MA', '108', '149');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('541', 'Siloam', 'GA', '105', '92');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('889', 'Lena', 'LA', '78', '129');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('654', 'Lee', 'IL', '27', '51');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('841', 'Freeport', 'MI', '113', '50');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('446', 'Mid Florida', 'FL', '110', '50');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('249', 'Acme', 'LA', '73', '67');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('376', 'Gorham', 'KS', '111', '64');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('136', 'Bass Harbor', 'ME', '137', '61');
INSERT INTO STATION (Id, City, State, Lat_N, Long_W) VALUES ('455', 'Granger', 'IA', '33', '102');

SELECT * FROM STATION;

-- Q7. Query a list of CITY and STATE from the STATION table

SELECT CITY , STATE FROM STATION;

-- Q8. Query a list of CITY names from STATION for cities that have an even ID number. Print the results
-- in any order, but exclude duplicates from the answer.

SELECT CITY FROM STATION WHERE ID%2 = 0;

-- Q9. Find the difference between the total number of CITY entries in the table and the number of
-- distinct CITY entries in the table.

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS DIFFERNCE FROM STATION;

-- Q10. Query the two cities in STATION with the shortest and longest CITY names, as well as their
-- respective lengths (i.e.: number of characters in the name). If there is more than one smallest or
-- largest city, choose the one that comes first when ordered alphabetically.

(SELECT CITY, length(CITY) as city_len from STATION order by city_len asc, CITY asc limit 1)
UNION
(SELECT CITY, length(CITY) as city_len from STATION order by city_len desc, CITY asc limit 1);

-- Q11. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result
-- cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%';

-- Q12. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot
-- contain duplicates.

 SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U';

-- Q13. Query the list of CITY names from STATION that do not start with vowels. Your result cannot
-- contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE NOT (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%');

-- Q14. Query the list of CITY names from STATION that do not end with vowels. Your result cannot
-- contain duplicates

 SELECT DISTINCT CITY FROM STATION WHERE NOT (CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U');

-- Q15. Query the list of CITY names from STATION that either do not start with vowels or do not end
-- with vowels. Your result cannot contain duplicates.

 SELECT DISTINCT CITY FROM STATION WHERE NOT ((CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%') 
 OR (CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U'));
 
 -- Q16. Query the list of CITY names from STATION that do not start with vowels and do not end with
-- vowels. Your result cannot contain duplicates

SELECT DISTINCT CITY FROM STATION WHERE NOT ((CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%') 
 AND (CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U'));