-- ----------------------------------------
-- Added to prevent timeout's while loading
-- ----------------------------------------
SET GLOBAL net_read_timeout=30;
SET GLOBAL net_write_timeout=60;
SET GLOBAL net_buffer_length=1000000; 
SET GLOBAL max_allowed_packet=1000000000;
SET GLOBAL connect_timeout=10000000;

-- --------------------------------------------------------------------------------
-- This is an attempt to create a full transactional MaNGOS update (v1.3)
-- --------------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS `update_mangos`; 

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_mangos`()
BEGIN
    DECLARE bRollback BOOL  DEFAULT FALSE ;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `bRollback` = TRUE;

    -- Current Values (TODO - must be a better way to do this)
    SET @cCurVersion := (SELECT `version` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
    SET @cCurStructure := (SELECT structure FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
    SET @cCurContent := (SELECT content FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);

    -- Expected Values
    SET @cOldVersion = '21'; 
    SET @cOldStructure = '06'; 
    SET @cOldContent = '032';

    -- New Values
    SET @cNewVersion = '21';
    SET @cNewStructure = '06';
    SET @cNewContent = '033';
                            -- DESCRIPTION IS 30 Characters MAX    
    SET @cNewDescription = 'Azuremyst_Isle_Pt1';

                        -- COMMENT is 150 Characters MAX
    SET @cNewComment = 'Azuremyst_Isle_Pt1';

    -- Evaluate all settings
    SET @cCurResult := (SELECT description FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
    SET @cOldResult := (SELECT description FROM db_version WHERE `version`=@cOldVersion AND `structure`=@cOldStructure AND `content`=@cOldContent);
    SET @cNewResult := (SELECT description FROM db_version WHERE `version`=@cNewVersion AND `structure`=@cNewStructure AND `content`=@cNewContent);

    IF (@cCurResult = @cOldResult) THEN    -- Does the current version match the expected version
        -- APPLY UPDATE
        START TRANSACTION;

        -- UPDATE THE DB VERSION
        -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
        INSERT INTO `db_version` VALUES (@cNewVersion, @cNewStructure, @cNewContent, @cNewDescription, @cNewComment);
        SET @cNewResult := (SELECT description FROM db_version WHERE `version`=@cNewVersion AND `structure`=@cNewStructure AND `content`=@cNewContent);

        -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
        -- -- PLACE UPDATE SQL BELOW -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
        -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
-- Azuremyst Isle

-- Duplicates
DELETE FROM creature WHERE guid IN (57365,57401,57367,57392);
DELETE FROM creature_addon WHERE guid IN (57365,57401,57367,57392);
DELETE FROM creature_movement WHERE id IN (57365,57401,57367,57392);

-- Vale Moth
UPDATE creature SET position_x = -4056.166748, position_y = -13679.827148, position_z = 70.195099, orientation = 2.894147 WHERE guid = 57400;
UPDATE creature SET position_x = -4009.254883, position_y = -13751.575195, position_z = 69.994392, orientation = 1.271510 WHERE guid = 57362;
UPDATE creature SET position_x = -4002.972168, position_y = -13721.668945, position_z = 66.997993, orientation = 5.467894 WHERE guid = 57364;

-- Mutated Root Lasher
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 16517);
UPDATE creature SET position_x = -4072.798828, position_y = -13457.387695, position_z = 53.739014, orientation = 0.767300 WHERE guid = 57304;

-- Megelon
-- should kneel
DELETE FROM creature_template_addon WHERE entry = 16475;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(16475,0,8,1,0,0,0,NULL);

-- Red Crystal Bunny
UPDATE creature_template SET inhabittype = 4 WHERE entry = 17947;

-- Inoculated Nestlewood Owlkin
UPDATE creature_template SET MinLevelHealth = 71 WHERE entry = 16534;

SET @GUID := (SELECT MAX(guid) FROM `creature`);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(@GUID+1,16521,530,1,1,0,306,-4577.68,-13315.6,87.9318,5.06332,300,0,0,83,104,0,0);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (57429,57418,57435,57419,57417,57425,57431);
UPDATE creature SET position_x = -4494.916016, position_y = -13426.375977, position_z = 50.020802, orientation = 0.199758 WHERE guid = 57424;
UPDATE creature SET position_x = -4493.666016, position_y = -13412.100586, position_z = 49.711666, orientation = 5.910391 WHERE guid = 57426;
UPDATE creature SET position_x = -4489.001953, position_y = -13347.736328, position_z = 55.123600, spawndist = 5 WHERE guid = 57433;
UPDATE creature SET position_x = -4558.07, position_y = -13383, position_z = 84.0283, orientation = 0.980421, spawndist = 0, MovementType = 0 WHERE guid = 57415;
UPDATE creature SET position_x = -4561.61, position_y = -13332, position_z = 78.297, orientation = 4.36313, spawndist = 0, MovementType = 0 WHERE guid = 57438;
UPDATE creature SET position_x = -4495.072754, position_y = -13341.267578, position_z = 54.948174, orientation = 0.872046, spawndist = 0, MovementType = 2 WHERE guid = 57432;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (57436,57420);
DELETE FROM creature_movement WHERE id IN (57432,57436,57420); 
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #57432
(57432, 1,-4503.06,-13357.7,54.1247, 0, 0,4.34743, 0, 0),
(57432, 2,-4506.78,-13373.2,53.7056, 0, 0,4.55163, 0, 0),
(57432, 3,-4507.36,-13387,53.8641, 0, 0,4.68515, 0, 0),
(57432, 4,-4506.39,-13372.9,53.7694, 0, 0,1.32521, 0, 0),
(57432, 5,-4502.84,-13357.5,54.1533, 0, 0,1.22232, 0, 0),
(57432, 6,-4495.22,-13341.5,54.8385, 0, 0,0.923088, 0, 0),
-- #57436
(57436, 1,-4537.6,-13317.9,77.7301, 0, 0,0.308909, 0, 0),
(57436, 2,-4531.29,-13317.2,77.917, 15000, 1652101,5.98263, 0, 0),
(57436, 3,-4538.35,-13312.8,77.9808, 15000, 1652101,2.37765, 0, 0),
(57436, 4,-4538.11,-13320.2,77.6869, 0, 0,4.91841, 0, 0),
(57436, 5,-4536.77,-13324.9,77.5682, 15000, 1652101,5.1069, 0, 0),
(57436, 6,-4537,-13320.7,77.6223, 0, 0,1.36841, 0, 0),
(57436, 7,-4533.12,-13307.4,77.7173, 0, 0,0.970211, 0, 0),
(57436, 8,-4525.5,-13301.3,77.8192, 0, 0,0.398441, 0, 0),
(57436, 9,-4516,-13301.1,76.9484, 0, 0,6.03368, 0, 0),
(57436, 10,-4508.35,-13305,74.2754, 0, 0,5.65669, 0, 0),
(57436, 11,-4503.76,-13309.2,70.6749, 0, 0,5.27027, 0, 0),
(57436, 12,-4502.26,-13315,68.1374, 0, 0,4.84773, 0, 0),
(57436, 13,-4500.93,-13322.2,64.4202, 0, 0,5.08728, 0, 0),
(57436, 14,-4502.32,-13314.8,68.1939, 0, 0,1.8373, 0, 0),
(57436, 15,-4505.17,-13307.9,71.7238, 0, 0,2.1813, 0, 0),
(57436, 16,-4511.36,-13302.8,75.8496, 0, 0,2.60463, 0, 0),
(57436, 17,-4521.51,-13300.4,77.5693, 0, 0,3.3649, 0, 0),
(57436, 18,-4529.88,-13303.2,77.7191, 0, 0,3.67951, 0, 0),
(57436, 19,-4536.49,-13312.7,77.9282, 0, 0,4.24578, 0, 0),
(57436, 20,-4542.37,-13324.8,77.5282, 0, 0,3.9921, 0, 0),
(57436, 21,-4550.38,-13333.2,77.7908, 0, 0,4.28191, 0, 0),
(57436, 22,-4550.78,-13344.5,78.0558, 0, 0,5.07987, 0, 0),
(57436, 23,-4548.2,-13347.2,77.6171, 0, 0,5.94223, 0, 0),
(57436, 24,-4544.49,-13348.3,76.6312, 15000, 1652101,6.26031, 0, 0),
(57436, 25,-4550.57,-13355.2,78.4657, 0, 0,5.072, 0, 0),
(57436, 26,-4541.91,-13366.4,75.7633, 0, 0,5.29034, 0, 0),
(57436, 27,-4537.09,-13379.5,72.2425, 0, 0,5.1529, 0, 0),
(57436, 28,-4526.18,-13391.8,63.0653, 0, 0,5.59664, 0, 0),
(57436, 29,-4535.68,-13382.6,70.6931, 0, 0,2.07178, 0, 0),
(57436, 30,-4540.1,-13371.5,74.4121, 0, 0,1.95239, 0, 0),
(57436, 31,-4543.29,-13364.2,76.4836, 0, 0,2.1833, 0, 0),
(57436, 32,-4549.18,-13357.4,78.4678, 0, 0,2.75821, 0, 0),
(57436, 33,-4553.56,-13358.2,78.9982, 0, 0,3.75096, 0, 0),
(57436, 34,-4556.42,-13365.6,82.0062, 0, 0,4.51429, 0, 0),
(57436, 35,-4557.25,-13379.6,84.2324, 15000, 1652101,4.5889, 0, 0),
(57436, 36,-4556.48,-13368.8,83.0642, 0, 0,1.39233, 0, 0),
(57436, 37,-4554.17,-13357.4,78.9413, 0, 0,1.17634, 0, 0),
(57436, 38,-4550.83,-13348.5,78.0941, 0, 0,1.3295, 0, 0),
(57436, 39,-4551.95,-13326,78.1122, 15000, 1652101,1.80859, 0, 0),
(57436, 40,-4552.54,-13331.4,77.8854, 0, 0,4.10981, 0, 0),
(57436, 41,-4555.86,-13336.1,77.8128, 0, 0,3.56788, 0, 0),
(57436, 42,-4560.8,-13337.2,77.8925, 0, 0,2.38193, 0, 0),
(57436, 43,-4561.78,-13335,78.0228, 15000, 1652101,1.41354, 0, 0),
(57436, 44,-4560.34,-13337.7,77.8832, 0, 0,6.16834, 0, 0),
(57436, 45,-4551.95,-13333.7,77.7376, 0, 0,0.7161, 0, 0),
(57436, 46,-4543.65,-13322.2,77.7184, 0, 0,0.987848, 0, 0),
-- #57420
(57420, 1,-4570.33,-13342,79.7079, 0, 0,2.60371, 0, 0),
(57420, 2,-4572.42,-13338.7,81.9836, 0, 0,1.91963, 0, 0),
(57420, 3,-4573.8,-13332.1,85.5403, 0, 0,1.64081, 0, 0),
(57420, 4,-4573.62,-13325.4,88.0573, 0, 0,1.4476, 0, 0),
(57420, 5,-4571.77,-13319.3,88.317, 0, 0,1.05648, 0, 0),
(57420, 6,-4558.65,-13302.6,85.9795, 0, 0,0.56246, 0, 0),
(57420, 7,-4550.41,-13299,82.8511, 0, 0,0.3559, 0, 0),
(57420, 8,-4542.54,-13296.4,79.706, 30000, 0,6.19298, 0, 0),
(57420, 9,-4551.81,-13299.4,83.4887, 0, 0,3.45037, 0, 0),
(57420, 10,-4558,-13302.1,85.7307, 0, 0,3.77867, 0, 0),
(57420, 11,-4569.98,-13314.4,87.7967, 0, 0,4.20671, 0, 0),
(57420, 12,-4574.35,-13325.8,87.9575, 0, 0,4.68423, 0, 0),
(57420, 13,-4574.1,-13333.5,84.9354, 0, 0,4.79732, 0, 0),
(57420, 14,-4572.79,-13338.5,82.1879, 0, 0,5.06435, 0, 0),
(57420, 15,-4570.21,-13342.1,79.6678, 0, 0,5.77356, 0, 0),
(57420, 16,-4565.7,-13343.3,78.4452, 30000, 0,6.2016, 0, 0);
DELETE FROM db_scripts WHERE id = 1652101; 
INSERT INTO db_scripts (script_type, id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3,1652101,1,31,16521,10,0,0,0,-13000,0,0,0,0,0,0,0,'search for 16521'),
(3,1652101,2,1,1,0,16521,10,7,6,273,274,0,0,0,0,0,'buddy - random emote'),
(3,1652101,4,1,1,0,0,0,0,6,273,274,0,0,0,0,0,'random emote'),
(3,1652101,6,31,16521,10,0,0,0,-8000,0,0,0,0,0,0,0,'search for 16521'),
(3,1652101,7,1,1,0,16521,10,7,6,273,274,0,0,0,0,0,'buddy - random emote'),
(3,1652101,9,1,1,0,0,0,0,6,273,274,0,0,0,0,0,'random emote'),
(3,1652101,10,31,16521,10,0,0,0,-4000,0,0,0,0,0,0,0,'search for 16521'),
(3,1652101,11,1,2,0,16521,10,7,0,0,0,0,0,0,0,0,'buddy - emote'),
(3,1652101,13,1,2,0,0,0,0,0,0,0,0,0,0,0,0,'emote');

-- Mutated Owlkin
-- patch 3.3.2 - no longer hostile.
UPDATE creature_template SET FactionAlliance = 7, FactionHorde = 7 WHERE entry = 16537;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (57473,57466,57319,57321,57468,57467,57320,57470,57472,57474,57471,57316,57457,57458,57450,57462,57318,57463,57465,57464,57461);
UPDATE creature SET position_x = -4471.007813, position_y = -14096.670898, position_z = 109.848373, orientation = 2.725909 WHERE guid = 57464;
UPDATE creature SET position_x = -4643.638672, position_y = -13940.991211, position_z = 85.342995, orientation = 5.246780 WHERE guid = 57474;
-- missing added - -- UDB free guid used
DELETE FROM creature WHERE guid IN (57401,57367,57392,87653,87654,87655,87656,87657,87658,87659);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(@GUID+2,16537,530,1,1,0,0,-4434.66,-13759.4,56.6934,6.16494,300,0,0,71,0,0,2),
(@GUID+3,16537,530,1,1,0,0,-4447.7,-13871.1,100.039,0.550673,300,0,0,71,0,0,2),
(@GUID+4,16537,530,1,1,0,0,-4589.24,-13965.9,82.7032,3.97444,300,0,0,71,0,0,2),
(@GUID+5,16537,530,1,1,0,0,-4594.7,-14003.5,86.0174,1.36692,300,0,0,71,0,0,2),
(@GUID+6,16537,530,1,1,0,0,-4654.6,-13981.2,85.2454,0.550101,300,5,0,71,0,0,1),
 -- Nestlewwod Owlkin
(@GUID+7,16518,530,1,1,0,0,-4523.47,-14045.3,108.254,1.15354,300,0,0,86,0,0,2),
(@GUID+8,16518,530,1,1,0,0,-4622.08,-13980.5,83.0399,5.28298,300,0,0,86,0,0,0),
(@GUID+9,16518,530,1,1,0,0,-4637.72,-13935.3,86.0136,5.21538,300,0,0,71,0,0,0),
(@GUID+10,16518,530,1,1,0,0,-4667.34,-13966,87.076,5.68662,300,0,0,86,0,0,0),
(@GUID+11,16518,530,1,1,0,0,-4646.43,-14010,88.6244,2.11305,300,0,0,71,0,0,0);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- @GUID+2
(@GUID+2, 1,-4397.45,-13759,52.5403, 0, 0,0.468445, 0, 0),
(@GUID+2, 2,-4387.6,-13750.7,51.187, 0, 0,1.00016, 0, 0),
(@GUID+2, 3,-4384.44,-13738.6,50.5713, 0, 0,1.56565, 0, 0),
(@GUID+2, 4,-4385.32,-13731.1,50.4359, 0, 0,1.96384, 0, 0),
(@GUID+2, 5,-4391.07,-13724.8,50.5065, 0, 0,2.79951, 0, 0),
(@GUID+2, 6,-4426.98,-13722.3,51.7162, 0, 0,3.03434, 0, 0),
(@GUID+2, 7,-4437.56,-13719.7,51.5869, 0, 0,2.65578, 0, 0),
(@GUID+2, 8,-4446.66,-13713.5,49.9453, 0, 0,2.20967, 0, 0),
(@GUID+2, 9,-4450.02,-13707.3,48.3929, 0, 0,1.76324, 0, 0),
(@GUID+2, 10,-4448.54,-13698.3,47.5457, 0, 0,1.15377, 0, 0),
(@GUID+2, 11,-4440.44,-13690.5,45.7925, 0, 0,0.514452, 0, 0),
(@GUID+2, 12,-4434.76,-13689.6,45.5794, 0, 0,5.91878, 0, 0),
(@GUID+2, 13,-4430.11,-13694,46.9106, 0, 0,5.25904, 0, 0),
(@GUID+2, 14,-4423.66,-13715.8,51.0542, 0, 0,5.16244, 0, 0),
(@GUID+2, 15,-4418.28,-13721.3,51.1114, 0, 0,6.01537, 0, 0),
(@GUID+2, 16,-4391.7,-13722.8,50.4426, 0, 0,6.03815, 0, 0),
(@GUID+2, 17,-4381.61,-13727.8,50.2699, 0, 0,5.53, 0, 0),
(@GUID+2, 18,-4380.06,-13739.4,50.4521, 0, 0,4.60166, 0, 0),
(@GUID+2, 19,-4383.25,-13752.4,50.4515, 0, 0,4.2341, 0, 0),
(@GUID+2, 20,-4392.68,-13769.2,52.2511, 0, 0,4.55532, 0, 0),
(@GUID+2, 21,-4390.35,-13775.7,52.1454, 0, 0,5.31008, 0, 0),
(@GUID+2, 22,-4370.44,-13787.6,52.2808, 0, 0,5.61639, 0, 0),
(@GUID+2, 23,-4368.16,-13791.2,52.3032, 0, 0,4.70062, 0, 0),
(@GUID+2, 24,-4369.71,-13795.9,52.4165, 0, 0,3.98826, 0, 0),
(@GUID+2, 25,-4379.54,-13798.8,52.1976, 0, 0,3.04029, 0, 0),
(@GUID+2, 26,-4391,-13795.6,53.3708, 0, 0,2.0389, 0, 0),
(@GUID+2, 27,-4392.48,-13786.4,52.7211, 0, 0,1.94701, 0, 0),
(@GUID+2, 28,-4409.88,-13759.7,53.5569, 0, 0,3.05207, 0, 0),
(@GUID+2, 29,-4434.79,-13759.4,56.6967, 0, 0,3.17773, 0, 0),
-- @GUID+3
(@GUID+3, 1,-4438.31,-13862.6,91.776, 0, 0,0.689689, 0, 0),
(@GUID+3, 2,-4431.32,-13855.8,84.8948, 0, 0,0.690474, 0, 0),
(@GUID+3, 3,-4426.89,-13851,80.9621, 0, 0,1.12794, 0, 0),
(@GUID+3, 4,-4425.11,-13841,79.7135, 0, 0,1.47509, 0, 0),
(@GUID+3, 5,-4425.27,-13831.5,80.3198, 0, 0,1.65573, 0, 0),
(@GUID+3, 6,-4428.9,-13821.8,80.8588, 0, 0,1.91098, 0, 0),
(@GUID+3, 7,-4431.14,-13808.6,82.159, 0, 0,1.67929, 0, 0),
(@GUID+3, 8,-4428.98,-13822,80.8303, 0, 0,5.01016, 0, 0),
(@GUID+3, 9,-4425.5,-13831.3,80.3171, 0, 0,4.76041, 0, 0),
(@GUID+3, 10,-4425.99,-13848.9,80.3403, 0, 0,4.97404, 0, 0),
(@GUID+3, 11,-4422.94,-13853.1,79.9921, 0, 0,5.73284, 0, 0),
(@GUID+3, 12,-4405.51,-13848.8,71.1473, 0, 0,0.311239, 0, 0),
(@GUID+3, 13,-4394.64,-13843.8,69.9378, 0, 0,0.487954, 0, 0),
(@GUID+3, 14,-4373.31,-13829.4,69.2241, 0, 0,0.438474, 0, 0),
(@GUID+3, 15,-4367.44,-13827.8,69.2241, 0, 0,0.19343, 0, 0),
(@GUID+3, 16,-4374.24,-13829.8,69.2241, 0, 0,3.69473, 0, 0),
(@GUID+3, 17,-4395.14,-13844.2,69.9654, 0, 0,3.51017, 0, 0),
(@GUID+3, 18,-4401.71,-13847.1,70.3372, 0, 0,3.15595, 0, 0),
(@GUID+3, 19,-4408.22,-13846.1,70.6981, 0, 0,2.34385, 0, 0),
(@GUID+3, 20,-4410.12,-13840.5,68.5303, 0, 0,1.61971, 0, 0),
(@GUID+3, 21,-4407.06,-13825,62.3528, 0, 0,1.38723, 0, 0),
(@GUID+3, 22,-4406.01,-13816.6,60.4572, 0, 0,1.18539, 0, 0),
(@GUID+3, 23,-4401.2,-13811.8,58.4539, 0, 0,0.719645, 0, 0),
(@GUID+3, 24,-4395.99,-13804.2,55.897, 0, 0,1.07386, 0, 0),
(@GUID+3, 25,-4401.33,-13812.3,58.5553, 0, 0,3.88559, 0, 0),
(@GUID+3, 26,-4405.57,-13815.9,60.3377, 0, 0,4.28928, 0, 0),
(@GUID+3, 27,-4407.42,-13829.5,63.9209, 0, 0,4.45028, 0, 0),
(@GUID+3, 28,-4409.96,-13840.7,68.609, 0, 0,4.73067, 0, 0),
(@GUID+3, 29,-4407.79,-13845.8,70.5699, 0, 0,5.48859, 0, 0),
(@GUID+3, 30,-4401.1,-13847.4,70.3476, 0, 0,0.124312, 0, 0),
(@GUID+3, 31,-4393.45,-13843.7,69.9347, 0, 0,0.642675, 0, 0),
(@GUID+3, 32,-4373.67,-13829.4,69.2235, 0, 0,0.48481, 0, 0),
(@GUID+3, 33,-4366.85,-13827.6,69.2235, 0, 0,0.104677, 0, 0),
(@GUID+3, 34,-4374.52,-13829.8,69.228, 0, 0,3.75128, 0, 0),
(@GUID+3, 35,-4397.51,-13845.3,70.0348, 0, 0,3.63504, 0, 0),
(@GUID+3, 36,-4405.96,-13849.2,71.4118, 0, 0,3.5565, 0, 0),
(@GUID+3, 37,-4420.98,-13853.4,79.1551, 0, 0,2.82922, 0, 0),
(@GUID+3, 38,-4425.01,-13851.3,80.4895, 0, 0,2.10273, 0, 0),
(@GUID+3, 39,-4426.2,-13842.6,79.8567, 0, 0,1.49955, 0, 0),
(@GUID+3, 40,-4425.92,-13830.4,80.3672, 0, 0,1.91267, 0, 0),
(@GUID+3, 41,-4429.15,-13820.9,80.9154, 0, 0,1.73831, 0, 0),
(@GUID+3, 42,-4431.09,-13808.4,82.1788, 0, 0,1.7226, 0, 0),
(@GUID+3, 43,-4429.49,-13822.1,80.7973, 0, 0,5.09667, 0, 0),
(@GUID+3, 44,-4425.68,-13831.3,80.2927, 0, 0,4.80529, 0, 0),
(@GUID+3, 45,-4425.49,-13843.3,79.8208, 0, 0,4.62072, 0, 0),
(@GUID+3, 46,-4426.59,-13851.3,80.9487, 0, 0,4.30185, 0, 0),
(@GUID+3, 47,-4431.98,-13856.3,85.4742, 0, 0,3.85496, 0, 0),
(@GUID+3, 48,-4438.4,-13862.8,91.9377, 0, 0,3.96491, 0, 0),
(@GUID+3, 49,-4446.83,-13869.7,99.5607, 0, 0,3.84711, 0, 0),
(@GUID+3, 50,-4450.92,-13879.3,102.427, 0, 0,4.90032, 0, 0),
(@GUID+3, 51,-4447.55,-13889,107.062, 0, 0,5.19955, 0, 0),
(@GUID+3, 52,-4439.39,-13901.1,116.042, 0, 0,5.21321, 0, 0),
(@GUID+3, 53,-4435.46,-13912.5,124.001, 0, 0,4.87313, 0, 0),
(@GUID+3, 54,-4434.29,-13919.4,128.474, 0, 0,5.00036, 0, 0),
(@GUID+3, 55,-4429.09,-13933.4,138.171, 0, 0,4.81658, 0, 0),
(@GUID+3, 56,-4429.81,-13941.6,143.975, 0, 0,4.78517, 0, 0),
(@GUID+3, 57,-4426.58,-13948.8,149.331, 0, 0,5.2132, 0, 0),
(@GUID+3, 58,-4424.46,-13957.5,154.731, 0, 0,4.67285, 0, 0),
(@GUID+3, 59,-4424.99,-13971.4,161.606, 0, 0,4.67914, 0, 0),
(@GUID+3, 60,-4425,-13966.8,160.317, 0, 0,1.57289, 0, 0),
(@GUID+3, 61,-4424.71,-13954.9,153.1, 0, 0,1.7763, 0, 0),
(@GUID+3, 62,-4426.49,-13948.2,149.01, 0, 0,2.0292, 0, 0),
(@GUID+3, 63,-4429.64,-13942,144.229, 0, 0,1.79358, 0, 0),
(@GUID+3, 64,-4429.46,-13931.9,137.163, 0, 0,1.77552, 0, 0),
(@GUID+3, 65,-4433.91,-13920.2,129.02, 0, 0,1.96401, 0, 0),
(@GUID+3, 66,-4436.84,-13906.8,119.518, 0, 0,1.93338, 0, 0),
(@GUID+3, 67,-4439.42,-13900.3,115.63, 0, 0,2.16429, 0, 0),
(@GUID+3, 68,-4445.36,-13893.5,110.394, 0, 0,2.08732, 0, 0),
(@GUID+3, 69,-4449.88,-13882.6,103.797, 0, 0,1.7386, 0, 0),
(@GUID+3, 70,-4450.84,-13875.1,101.276, 0, 0,1.2116, 0, 0),
(@GUID+3, 71,-4448.44,-13870.8,100.18, 0, 0,0.785916, 0, 0),
-- @GUID+7
(@GUID+7, 1,-4517.82,-14036.6,109.638, 0, 0,0.858612, 0, 0),
(@GUID+7, 2,-4512.34,-14031.9,111.705, 0, 0,0.125084, 0, 0),
(@GUID+7, 3,-4504.76,-14032,115.22, 0, 0,6.09018, 0, 0),
(@GUID+7, 4,-4495.7,-14035,120.769, 0, 0,6.16401, 0, 0),
(@GUID+7, 5,-4485.96,-14035.7,125.867, 0, 0,0.0402612, 0, 0),
(@GUID+7, 6,-4477.07,-14034.1,130.216, 0, 0,0.553912, 0, 0),
(@GUID+7, 7,-4468.08,-14026.7,135.697, 0, 0,0.893204, 0, 0),
(@GUID+7, 8,-4463.56,-14019.2,139.389, 0, 0,1.29611, 0, 0),
(@GUID+7, 9,-4462.25,-14008.6,144.543, 0, 0,1.48461, 0, 0),
(@GUID+7, 10,-4462.15,-13995.7,151.398, 0, 0,1.42335, 0, 0),
(@GUID+7, 11,-4459.33,-13989.3,155.012, 0, 0,0.970173, 0, 0),
(@GUID+7, 12,-4453.88,-13984,158.884, 0, 0,0.447098, 0, 0),
(@GUID+7, 13,-4442.96,-13977.9,162.913, 0, 0,0.553127, 0, 0),
(@GUID+7, 14,-4437.08,-13973.9,163.54, 0, 0,0.449454, 0, 0),
(@GUID+7, 15,-4442.83,-13978.1,162.882, 0, 0,3.75362, 0, 0),
(@GUID+7, 16,-4447.89,-13981.6,160.698, 0, 0,3.66095, 0, 0),
(@GUID+7, 17,-4454.41,-13984.3,158.621, 0, 0,3.61854, 0, 0),
(@GUID+7, 18,-4459.15,-13988.9,155.249, 0, 0,4.15025, 0, 0),
(@GUID+7, 19,-4462.06,-13995.7,151.433, 0, 0,4.53745, 0, 0),
(@GUID+7, 20,-4463.62,-14005.8,145.88, 0, 0,4.59635, 0, 0),
(@GUID+7, 21,-4464.5,-14015.9,140.278, 0, 0,4.58065, 0, 0),
(@GUID+7, 22,-4465.92,-14022.3,137.806, 0, 0,4.09684, 0, 0),
(@GUID+7, 23,-4473.41,-14032,132.139, 0, 0,3.65859, 0, 0),
(@GUID+7, 24,-4480.65,-14035.1,128.564, 0, 0,3.22976, 0, 0),
(@GUID+7, 25,-4489.53,-14035.6,123.745, 0, 0,2.90304, 0, 0),
(@GUID+7, 26,-4499.66,-14033.4,118.385, 0, 0,2.84413, 0, 0),
(@GUID+7, 27,-4509.38,-14031.3,113.055, 0, 0,3.27218, 0, 0),
(@GUID+7, 28,-4516.56,-14033.5,110.339, 0, 0,3.79761, 0, 0),
(@GUID+7, 29,-4522.55,-14042.1,108.413, 0, 0,4.46598, 0, 0),
(@GUID+7, 30,-4522.58,-14049.5,108.513, 0, 0,5.04403, 0, 0),
(@GUID+7, 31,-4511.73,-14069.1,108.323, 0, 0,5.29142, 0, 0),
(@GUID+7, 32,-4494.98,-14092.5,108.716, 0, 0,5.42494, 0, 0),
(@GUID+7, 33,-4480.21,-14106.9,109.008, 0, 0,5.92366, 0, 0),
(@GUID+7, 34,-4476.78,-14106.6,109.331, 0, 0,0.369877, 0, 0),
(@GUID+7, 35,-4480.54,-14107,109.074, 0, 0,2.69379, 0, 0),
(@GUID+7, 36,-4501.89,-14085,108.471, 0, 0,2.1075, 0, 0),
(@GUID+7, 37,-4513.44,-14066.2,108.282, 0, 0,2.1075, 0, 0),
(@GUID+7, 38,-4523.29,-14045.9,108.31, 0, 0,1.43677, 0, 0),
(@GUID+7, 39,-4531.47,-14045.2,107.159, 0, 0,2.98743, 0, 0),
(@GUID+7, 40,-4540.48,-14042.7,104.373, 0, 0,2.50205, 0, 0),
(@GUID+7, 41,-4545.76,-14038.1,101.742, 0, 0,2.12506, 0, 0),
(@GUID+7, 42,-4549.34,-14028.7,97.4769, 0, 0,1.84075, 0, 0),
(@GUID+7, 43,-4550.8,-14014.1,91.238, 0, 0,1.88238, 0, 0),
(@GUID+7, 44,-4549.57,-14028.6,97.381, 0, 0,5.01533, 0, 0),
(@GUID+7, 45,-4545.99,-14038.1,101.736, 0, 0,5.38917, 0, 0),
(@GUID+7, 46,-4540.46,-14042.4,104.306, 0, 0,5.97822, 0, 0),
(@GUID+7, 47,-4531.34,-14045,107.178, 0, 0,5.93031, 0, 0),
(@GUID+7, 48,-4522.13,-14050.4,108.592, 0, 0,5.35383, 0, 0),
(@GUID+7, 49,-4503.35,-14075.6,108.32, 0, 0,5.46378, 0, 0),
(@GUID+7, 50,-4475.96,-14095.1,109.774, 0, 0,5.64835, 0, 0),
(@GUID+7, 51,-4473.36,-14101.2,109.944, 0, 0,4.78127, 0, 0),
(@GUID+7, 52,-4474.57,-14105.7,109.152, 0, 0,4.08934, 0, 0),
(@GUID+7, 53,-4480.68,-14108,109.006, 0, 0,2.97015, 0, 0),
(@GUID+7, 54,-4502.26,-14085.2,108.472, 0, 0,2.15569, 0, 0),
(@GUID+7, 55,-4522.41,-14050.8,108.626, 0, 0,1.88237, 0, 0),
(@GUID+7, 56,-4522.98,-14042.5,108.354, 0, 0,1.24777, 0, 0),
-- @GUID+4
(@GUID+4, 1,-4592.27,-13969.7,82.8063, 0, 0,3.77887, 0, 0),
(@GUID+4, 2,-4598.27,-13970.8,82.8528, 0, 0,2.89373, 0, 0),
(@GUID+4, 3,-4602.71,-13969,82.9031, 0, 0,2.47354, 0, 0),
(@GUID+4, 4,-4605.37,-13963.2,82.86, 0, 0,1.64809, 0, 0),
(@GUID+4, 5,-4604.43,-13957.7,82.9402, 0, 0,1.10773, 0, 0),
(@GUID+4, 6,-4599.52,-13953.3,83.2446, 0, 0,0.406371, 0, 0),
(@GUID+4, 7,-4593.36,-13953.8,83.11, 0, 0,5.94971, 0, 0),
(@GUID+4, 8,-4588.46,-13958.5,82.7968, 0, 0,5.09206, 0, 0),
(@GUID+4, 9,-4588.68,-13965.4,82.7122, 0, 0,4.35536, 0, 0),
-- @GUID+5
(@GUID+5, 1,-4592.98,-13982.5,84.4159, 0, 0,1.31665, 0, 0),
(@GUID+5, 2,-4586.16,-13971.4,82.9927, 0, 0,0.968984, 0, 0),
(@GUID+5, 3,-4580.24,-13956.1,83.3117, 0, 0,1.23995, 0, 0),
(@GUID+5, 4,-4572.24,-13945.5,83.977, 0, 0,0.721584, 0, 0),
(@GUID+5, 5,-4553.06,-13927.5,84.9424, 0, 0,0.780489, 0, 0),
(@GUID+5, 6,-4540.27,-13916,87.0233, 0, 0,0.780489, 0, 0),
(@GUID+5, 7,-4533.76,-13907.4,89.6782, 0, 0,0.976838, 0, 0),
(@GUID+5, 8,-4526.08,-13901.9,91.075, 0, 0,0.505599, 0, 0),
(@GUID+5, 9,-4511.39,-13896.2,93.3214, 0, 0,0.160024, 0, 0),
(@GUID+5, 10,-4501.98,-13896,95.7497, 0, 0,6.25314, 0, 0),
(@GUID+5, 11,-4513.02,-13896.4,92.8177, 0, 0,3.34167, 0, 0),
(@GUID+5, 12,-4524.08,-13900.5,91.1834, 0, 0,3.6739, 0, 0),
(@GUID+5, 13,-4533.81,-13907.2,89.7356, 0, 0,3.86946, 0, 0),
(@GUID+5, 14,-4537.63,-13911.7,87.7131, 0, 0,4.06581, 0, 0),
(@GUID+5, 15,-4543.6,-13919.2,87.4545, 0, 0,4.01868, 0, 0),
(@GUID+5, 16,-4552.8,-13927.3,84.9588, 0, 0,3.84982, 0, 0),
(@GUID+5, 17,-4576.24,-13949,83.6602, 0, 0,3.75558, 0, 0),
(@GUID+5, 18,-4589.23,-13952,83.2427, 0, 0,3.08013, 0, 0),
(@GUID+5, 19,-4604.19,-13952,83.5327, 0, 0,2.97018, 0, 0),
(@GUID+5, 20,-4616.22,-13947.2,83.8974, 0, 0,2.78561, 0, 0),
(@GUID+5, 21,-4627.14,-13943.9,84.4674, 0, 0,3.11155, 0, 0),
(@GUID+5, 22,-4637.3,-13944.4,85.009, 0, 0,3.44063, 0, 0),
(@GUID+5, 23,-4649.9,-13949.8,85.5586, 0, 0,3.8781, 0, 0),
(@GUID+5, 24,-4657.77,-13959.4,86.2783, 0, 0,4.1412, 0, 0),
(@GUID+5, 25,-4664.29,-13969.3,86.5976, 0, 0,4.63679, 0, 0),
(@GUID+5, 26,-4662.94,-13981.2,86.5135, 0, 0,5.16693, 0, 0),
(@GUID+5, 27,-4659.69,-13991.1,87.4205, 0, 0,4.76324, 0, 0),
(@GUID+5, 28,-4659.05,-14002.6,88.7217, 0, 0,4.92031, 0, 0),
(@GUID+5, 29,-4658.11,-13991.3,87.3414, 0, 0,1.30355, 0, 0),
(@GUID+5, 30,-4652.72,-13982.8,85.1681, 0, 0,0.650887, 0, 0),
(@GUID+5, 31,-4644.96,-13980.1,83.6062, 0, 0,0.116817, 0, 0),
(@GUID+5, 32,-4629.25,-13979.6,82.8775, 0, 0,0.283321, 0, 0),
(@GUID+5, 33,-4612.33,-13973.1,83.1243, 0, 0,0.328873, 0, 0),
(@GUID+5, 34,-4597.79,-13975.3,83.3084, 0, 0,5.701, 0, 0),
(@GUID+5, 35,-4592.27,-13985.8,84.9837, 0, 0,4.70119, 0, 0),
(@GUID+5, 36,-4594.39,-14003.7,86.0171, 0, 0,4.60694, 0, 0);
    
    

        -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
        -- -- PLACE UPDATE SQL ABOVE -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
        -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -

        -- If we get here ok, commit the changes
        IF bRollback = TRUE THEN
            ROLLBACK;
            SHOW ERRORS;
            SELECT '* UPDATE FAILED *' AS `===== Status =====`,@cCurResult AS `===== DB is on Version: =====`;



        ELSE
            COMMIT;
            SELECT '* UPDATE COMPLETE *' AS `===== Status =====`,@cNewResult AS `===== DB is now on Version =====`;
        END IF;
    ELSE    -- Current version is not the expected version
        IF (@cCurResult = @cNewResult) THEN    -- Does the current version match the new version
            SELECT '* UPDATE SKIPPED *' AS `===== Status =====`,@cCurResult AS `===== DB is already on Version =====`;
        ELSE    -- Current version is not one related to this update
            IF(@cCurResult IS NULL) THEN    -- Something has gone wrong
                SELECT '* UPDATE FAILED *' AS `===== Status =====`,'Unable to locate DB Version Information' AS `============= Error Message =============`;
            ELSE
		IF(@cOldResult IS NULL) THEN    -- Something has gone wrong
		    SET @cCurVersion := (SELECT `version` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
		    SET @cCurStructure := (SELECT `STRUCTURE` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
		    SET @cCurContent := (SELECT `Content` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
                    SET @cCurOutput = CONCAT(@cCurVersion, '_', @cCurStructure, '_', @cCurContent, ' - ',@cCurResult);
                    SET @cOldResult = CONCAT('Rel',@cOldVersion, '_', @cOldStructure, '_', @cOldContent, ' - ','IS NOT APPLIED');
                    SELECT '* UPDATE SKIPPED *' AS `===== Status =====`,@cOldResult AS `=== Expected ===`,@cCurOutput AS `===== Found Version =====`;
		ELSE
		    SET @cCurVersion := (SELECT `version` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
		    SET @cCurStructure := (SELECT `STRUCTURE` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
		    SET @cCurContent := (SELECT `Content` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
                    SET @cCurOutput = CONCAT(@cCurVersion, '_', @cCurStructure, '_', @cCurContent, ' - ',@cCurResult);
                    SELECT '* UPDATE SKIPPED *' AS `===== Status =====`,@cOldResult AS `=== Expected ===`,@cCurOutput AS `===== Found Version =====`;
                END IF;
            END IF;
        END IF;
    END IF;
END $$

DELIMITER ;

-- Execute the procedure
CALL update_mangos();

-- Drop the procedure
DROP PROCEDURE IF EXISTS `update_mangos`;
