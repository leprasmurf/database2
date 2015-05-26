--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@SESSION.TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `spell_target_position`
--

DROP TABLE IF EXISTS `spell_target_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_target_position` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `target_map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `target_position_x` float NOT NULL DEFAULT '0',
  `target_position_y` float NOT NULL DEFAULT '0',
  `target_position_z` float NOT NULL DEFAULT '0',
  `target_orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_target_position`
--

LOCK TABLES `spell_target_position` WRITE;
/*!40000 ALTER TABLE `spell_target_position` DISABLE KEYS */;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (442,129,2592.55,1107.5,51.29,4.74),
(444,1,-4658.12,-2526.35,82.9671,0),
(446,109,-319.24,99.9,-131.85,3.19),
(3561,0,-8998.14,861.254,29.6206,5.28),
(3562,0,-4613.71,-915.287,501.062,3.88),
(3563,0,1773.42,61.7391,-46.3215,0.54),
(3565,1,9656.54,2518.26,1331.66,3.06),
(3566,1,-967.375,284.82,110.773,3.02),
(3567,1,1469.96,-4222.51,58.9938,5.98),
(17334,0,-8998.14,861.254,29.6206,2.28),
(17608,1,9656.54,2518.26,1331.66,3.06),
(17609,1,1469.96,-4222.51,58.9938,5.98),
(17610,1,-967.375,284.82,110.773,3.02),
(17611,0,1773.42,61.7391,-46.3215,0.54),
(18960,1,7992.62,-2680.04,512.099,0.034183),
(23442,1,6755.22,-4658.04,724.795,3.4049),
(32571,530,-2260.27,3211.04,14.1116,3.7),
(30141,530,-589.83,4079.29,143.26,4.4),
(28147,532,-11100,-2001.64,49.8927,0.799535),
(32268,530,-4031.24,-11569.6,-138.299,2.43),
(32270,530,9998.46,-7106.55,47.7054,2.44),
(32271,530,-4031.24,-11569.6,-138.299,2.43),
(32272,530,9998.46,-7106.55,47.7054,2.44),
(30140,530,-594.2,4079.54,93.83,5.2),
(25649,0,1804.87,326.886,70.3975,1.57473),
(33690,530,-1824.32,5417.23,-12.4277,2.81),
(33728,530,-1824.32,5417.23,-12.4277,2.81),
(35715,530,-1902.49,5442.86,-12.428,5.96),
(35718,530,-1902.49,5442.86,-12.428,5.96),
(36890,530,3092.58,3644.72,143.136,1.5796),
(36941,530,2054.05,5569.16,263.571,0.9953),
(12510,1,3778,-4612,228,4.23263),
(26572,530,9334.2,-7880.19,74.9102,2.18185),
(26566,530,9330.76,-7811.45,136.57,5.26268),
(29273,533,3498.28,-5349.9,144.968,1.31324),
(33,0,-10643,1052,34,0),
(31,0,-9464,62,56,0),
(34,0,-10368,-422,66,0),
(35,0,-9104,-70,83,0),
(427,189,1688.99,1053.48,18.6775,0.00117),
(428,0,-11020,1436,44,0),
(445,0,-10566,-1189,28,0),
(4996,1,1552.5,-4420.66,8.94802,0),
(4997,0,-14457,496.45,39.1392,0),
(4998,0,-12415,207.618,31.5017,0.124875),
(4999,1,-998.359,-3827.52,5.44507,4.16654),
(6348,0,-3752.81,-851.558,10.1153,0),
(6349,1,6581.05,767.5,5.78428,6.01616),
(6483,1,5483.9,-749.881,334.621,0),
(6719,1,-3615.49,-4467.34,24.3141,0),
(8735,48,-151.89,106.96,-39.87,4.53),
(9268,1,8786.36,967.445,30.197,3.39632),
(11362,0,-5095,757,261,4.42),
(11409,0,-14462,460,16,3.49),
(447,0,16229,16265,14,3.19),
(3721,0,16229,16265,14,3.19),
(1936,0,16229,16265,14,0),
(443,0,16229,16265,14,4.74),
(4801,531,-8340.78,2083.81,125.649,0),
(12520,1,3641,-4702,121,6.25),
(32569,530,-2307.35,3123.92,13.69,2.15),
(32568,530,-2260.26,3114.48,136.35,4.57),
(32572,530,-2259.74,3215.03,-4.05,3.14),
(35730,530,10021,-7014,50,3.90972),
(12241,1,-3254.76,2022.67,250.716,4.15),
(31613,530,-3286.63,-12908.6,11.7562,5.92033),
(6766,1,-2354.03,-1902.07,95.78,4.6),
(44089,0,-4613.71,-915.287,501.062,3.88),
(12885,0,-11238.4,-2831.97,157.93,5.11),
(13142,0,-11238.4,-2831.97,157.93,5.11),
(39567,532,-11164.5,-1909.56,232.009,3.65587),
(42711,1,-3722.91,-4413.96,26.13,3.87),
(30115,532,-11234.2,-1698.46,179.24,0.67621),
(25725,509,-9717.18,1517.72,27.4677,5.4),
(37387,530,-2832.71,1950.02,201.25,4.06),
(37389,530,-2742.77,2727,124.81,5.29),
(37532,530,-3278.63,2831.31,123.01,1.56),
(6714,1,-4884.49,-1596.2,101.2,3.17),
(23441,1,-7109.12,-3825.21,10.1529,2.8331),
(21128,349,419.84,11.3365,-131.079,0),
(41234,530,-3560.52,583.353,10.9431,2.94285),
(17159,1,6106.4,-4191.1,849.74,0.0201),
(17160,1,5904.2,-4045.9,596.43,0.0083),
(46149,530,-1842.07,5497.17,-12.4306,4.40609),
(37778,1,-8167.18,-4766.8,33.9648,5.165),
(49359,1,-3748.11,-4440.21,30.5688,0.810732),
(49363,0,-10469,-3331.54,25.4716,1.30292),
(49362,1,-3748.11,-4440.21,30.5688,0.810732),
(49358,0,-10469,-3331.54,25.4716,1.30292),
(45038,530,833.319,2512.91,292.2,0.535559),
(44870,530,12803.7,-6907.38,41.1164,2.21),
(34661,553,4,608,-13.8165,4.68254),
(46841,530,12887.6,-6869.21,10.1141,0.3),
(23446,1,-7303,-3545,137,2.8331),
(36902,1,2698.53,3644.44,482.152,0),
(34269,550,422.083,23.279,20.1795,0),
(34270,550,412.892,45.4676,20.1799,0),
(34271,550,398.272,64.5214,20.1794,0),
(34272,550,379.218,79.1419,19.8359,0),
(34273,550,357.029,88.3328,20.0122,0),
(34274,550,333.218,91.4676,20.3589,0),
(34275,550,309.407,88.3328,20.1796,0),
(34276,550,287.218,79.1419,20.1796,0),
(34277,550,268.164,64.5214,20.1797,0),
(34278,550,253.544,45.4676,20.1798,0),
(34279,550,244.353,23.279,21.2296,0),
(34280,550,241.218,-0.5324,27.1245,0),
(34281,550,244.353,-24.3438,20.8583,0),
(34282,550,253.544,-46.5324,20.1799,0),
(34283,550,268.164,-65.5862,20.1798,0),
(34284,550,287.218,-80.2067,20.1798,0),
(34285,550,309.407,-89.3976,20.1796,0),
(34286,550,333.218,-92.5324,20.3633,0),
(34287,550,357.029,-89.3976,20.0277,0),
(34288,550,379.218,-80.2067,19.8224,0),
(34289,550,398.272,-65.5862,20.1794,0),
(34314,550,412.892,-46.5324,20.1797,0),
(34315,550,422.083,-24.3438,20.1794,0),
(34316,550,425.218,-0.5324,20.1794,0),
(36643,530,-1500.03,5217.14,32.46,2.17),
(22651,429,-25.9536,-448.227,-36.0912,3.13),
(34830,530,4199.7,1766.39,133.21,0),
(34857,530,3923,3873,181,0),
(8995,0,-2647.86,-2446.58,82.2726,0),
(8996,0,-2645.1,-2448.91,81.6657,0),
(8997,0,-2650.39,-2441.64,80.5779,0),
(9055,0,-1350.83,-2740.16,62.74,2.95),
(12159,90,-562.7,-121.674,-150.862,0),
(12158,90,-478.448,-89.3074,-146.602,0),
(13912,230,1380.58,-819.48,-92.72,4.69),
(23460,469,-7672.46,-1107.19,396.65,0.59),
(24325,309,-11726.3,-1777.38,10.46,0.16),
(24593,309,-11726.3,-1777.38,10.46,0.16),
(33068,0,1805.93,335.66,70.39,4.67),
(33069,530,10021.1,-7014.87,49.71,4.01),
(41108,530,2322.37,7304.15,365.61,5.04),
(8606,0,325.8,-1481.47,42.68,0.47),
(11012,1,161,299.05,-51.36,0.37),
(13044,0,-11224.8,-2835.35,158.85,3.73),
(13461,0,-11234.8,-2842.52,157.92,1.47),
(22950,429,-37.5643,813.433,-7.43823,4.77),
(22951,1,-3760.87,1086.28,131.96,1.53),
(28689,530,7513.63,-6388.93,23.8,2.84),
(28690,530,7524.72,-6378.58,30.03,0.69),
(28691,530,7199.4,-7097.36,66.97,0.87),
(28692,530,7190.91,-7107.89,75.22,4.06),
(35741,530,4802.63,3775.42,210.53,5.49),
(35742,530,4778.46,3455.36,104.13,0.79),
(37850,548,372.85,-690.84,-13.91,3.61),
(38023,548,366.27,-709.4,-13.92,3.82),
(38024,548,365.53,-737.12,-14,2.88),
(38025,548,337.69,-732.87,-13.74,1.06),
(37854,548,372.85,-690.84,-13.91,3.61),
(37858,548,366.27,-709.4,-13.92,3.82),
(37860,548,365.53,-737.12,-14,2.88),
(37861,548,337.69,-732.87,-13.74,1.06),
(42710,0,-9008.79,851.32,105.89,5.61),
(44218,585,148.5,181,-16.7,1.58),
(46884,580,1704.04,956.2,53.07,4.57),
(47523,230,850.38,-223.3,-43.68,0.79),
(49846,230,901.068,-143.939,-49.755,0.79),
(22191,249,-42.4794,-270.487,-92.11,0),
(22192,249,-59.0983,-269.976,-94.3079,0),
(22193,249,-72.5971,-264.395,-94.267,0),
(22194,249,-88.7517,-259.617,-93.7426,0),
(22195,249,-104.072,-244.79,-94.0876,0),
(22196,249,-106.875,-223.247,-94.6765,0),
(22197,249,-107.076,-197.489,-94.1113,0),
(22198,249,-102.751,-181.577,-94.06,0),
(22199,249,-89.9793,-171.261,-93.8249,0),
(22200,249,-72.6705,-164.756,-94.2678,0),
(22201,249,-50.8834,-159.992,-93.6519,0),
(22202,249,-40.259,-158.961,-91.75,0),
(33566,555,-208.411,-263.652,17.0864,0),
(33582,555,-208.411,-263.652,17.0864,0),
(33583,555,-261.676,-297.69,17.0871,0),
(33584,555,-282.272,-240.432,12.6825,0),
(33585,555,-291.833,-268.595,12.6829,0),
(33586,555,-303.966,-255.759,12.6833,0),
(34681,553,-185.59,376.67,-15.79,1),
(34682,553,-185.68,406.9,-15.8,0),
(34684,553,-185.68,406.9,-15.8,0),
(34685,553,-185.59,376.67,-15.79,1),
(34686,553,-185.68,406.9,-15.8,0),
(34687,553,-185.68,406.9,-15.8,0),
(34688,553,-185.59,376.67,-15.79,1),
(34690,553,-185.59,376.67,-15.79,1),
(34727,553,86.77,419.85,-26.94,0),
(34730,553,84.83,362.09,-28.1,0),
(34731,553,55.83,423.99,-26.53,0),
(34732,553,46.65,360.87,-27.71,0),
(34733,553,26.2,416.72,-25.96,0),
(34734,553,26.39,338.76,-25.88,0),
(36958,550,794.5,16.73,48.72,4.74),
(36959,550,785.54,14.88,48.72,5.17),
(36960,550,780.41,9.44,48.72,5.68),
(36961,550,778.43,-0.72,48.72,6.26),
(36962,550,779.43,-9.06,48.72,0.42),
(36963,550,785.32,-16.17,48.72,1.04),
(36964,550,793.36,-17.96,48.72,1.42),
(39813,548,424.84,-732.18,-7.14,3.13),
(39814,548,424.91,-728.68,-7.14,3.13),
(39815,548,425.05,-724.23,-7.14,3.13),
(39816,548,425.13,-719.31,-7.14,3.13),
(39817,548,424.36,-715.4,-7.14,3.13),
(39818,548,321.05,-714.24,-13.15,0),
(39819,548,321.05,-718.73,-13.15,0),
(39820,548,321.05,-724.03,-13.15,0),
(39821,548,321.05,-729.37,-13.15,0),
(39822,548,321.05,-734.2,-13.15,0),
(17475,329,4012.92,-3365.7,116.251,5.48),
(17476,329,4009.1,-3352.31,116.712,0.13),
(17477,329,4013.96,-3338.65,116.242,0.72),
(17478,329,4051.75,-3339.05,116.241,3.62),
(17479,329,4055.96,-3351.46,116.586,3.06),
(17480,329,4053.11,-3364.98,116.402,2.45),
(34673,553,-204,391,-11,6.27),
(41566,564,702.22,200.3,125.01,4.73),
(42953,571,5724.62,1013.17,174.48,0.922466),
(53140,571,5807.75,588.347,661.505,0.922466),
(54029,571,5846.5,605.5,650.9,2.364),
(54028,571,5773,703.5,641.6,5.572),
(59901,1,-8164.8,-4768.5,34.3,3.783),
(53141,571,5807.75,588.347,661.505,1.663),
(61419,571,5848.48,853.706,843.182,4.817),
(61420,571,5819.26,829.774,680.22,2.08103),
(59314,571,5762.35,854.356,865.763,4.552),
(59316,571,5790,734,640,4.582),
(53822,0,2359.64,-5662.41,382.28,0.596),
(50135,571,3594.18,5997.51,136.215,4.215),
(54699,609,2419.91,-5620.48,420.644,3.89597),
(54744,0,2419.91,-5620.48,420.644,3.89597),
(54725,609,2402.62,-5633.28,377.021,3.65249),
(54746,0,2402.62,-5633.28,377.021,3.65249),
(60474,571,3877.14,6980.83,152.04,2.679),
(48760,571,3877.39,6984.47,106.32,6.279),
(49305,578,982.173,1055.45,359.967,3.432),
(54406,571,5807.75,588.347,661.505,2),
(58421,0,-9143.58,375.103,90.6907,0.64),
(58419,1,1321.81,-4383.19,26.23,0.21),
(7587,33,-103.46,2122.1,155.655,4.4224),
(7586,33,-84.99,2151.01,155.62,1.11623),
(7136,33,-105.654,2154.98,156.43,1.24782),
(53360,571,5807.75,588.347,661.505,1.663),
(39871,1,3697.2,-3967.13,35.7453,0),
(43098,568,-34.316,1149.64,19.155,3.119),
(46343,1,-8164.89,-4768.55,34.3048,5.165),
(18576,249,-37.7439,-243.668,-88.2177,1.416),
(18578,249,-35.8053,-232.029,-87.7492,1.416),
(18579,249,-34.0457,-224.715,-85.5295,1.416),
(18580,249,-32.0816,-214.917,-88.3274,1.416),
(18581,249,-36.6117,-202.685,-85.6538,1.416),
(18582,249,-37.0673,-195.759,-87.7458,1.416),
(18583,249,-37.7285,-188.617,-88.0749,1.416),
(18609,249,-37.7285,-188.617,-88.0749,4.526),
(18611,249,-37.0673,-195.759,-87.7458,4.526),
(18612,249,-36.6117,-202.685,-85.6538,4.526),
(18613,249,-32.0816,-214.917,-88.3274,4.526),
(18614,249,-34.0457,-224.715,-85.5295,4.526),
(18615,249,-35.8053,-232.029,-87.7492,4.526),
(18616,249,-37.7439,-243.668,-88.2177,4.526),
(18584,249,6.01671,-181.306,-85.6546,3.776),
(18585,249,3.86022,-183.227,-86.3754,3.776),
(18586,249,-2.52965,-188.69,-87.1729,3.776),
(18587,249,-8.4493,-193.958,-87.565,3.776),
(18588,249,-14.3212,-199.462,-87.9225,3.776),
(18589,249,-15.6021,-216.894,-88.4032,3.776),
(18590,249,-23.6503,-221.969,-89.1727,3.776),
(18591,249,-29.4959,-213.014,-88.9104,3.776),
(18592,249,-35.4399,-217.26,-87.3363,3.776),
(18593,249,-41.7621,-221.897,-86.1141,3.776),
(18594,249,-51.0675,-228.91,-85.7656,3.776),
(18595,249,-56.5597,-241.224,-85.4236,3.776),
(18564,249,-56.5597,-241.224,-85.4236,0.666),
(18565,249,-51.0675,-228.91,-85.7656,0.666),
(18566,249,-41.7621,-221.897,-86.1141,0.666),
(18567,249,-35.4399,-217.26,-87.3363,0.666),
(18568,249,-29.4959,-213.014,-88.9104,0.666),
(18569,249,-23.6503,-221.969,-89.1727,0.666),
(18570,249,-15.6021,-216.894,-88.4032,0.666),
(18571,249,-14.3212,-199.462,-87.9225,0.666),
(18572,249,-8.4493,-193.958,-87.565,0.666),
(18573,249,-2.52965,-188.69,-87.1729,0.666),
(18574,249,3.86022,-183.227,-86.3754,0.666),
(18575,249,6.01671,-181.306,-85.6546,0.666),
(18596,249,-58.2509,-189.02,-85.2923,5.587),
(18597,249,-52.0063,-193.797,-85.8088,5.587),
(18598,249,-46.1355,-198.549,-85.9018,5.587),
(18599,249,-40.5002,-203.001,-85.5551,5.587),
(18600,249,-30.9076,-211.058,-88.5921,5.587),
(18601,249,-20.0981,-218.681,-88.9371,5.587),
(18602,249,-12.2232,-224.666,-87.8563,5.587),
(18603,249,-6.4753,-229.099,-87.0764,5.587),
(18604,249,-2.01026,-232.542,-86.9951,5.587),
(18605,249,2.7363,-236.202,-86.7904,5.587),
(18606,249,7.19778,-239.643,-86.3073,5.587),
(18607,249,12.1209,-243.439,-85.8743,5.587),
(18617,249,12.1209,-243.439,-85.8743,2.428),
(18619,249,7.19778,-239.643,-86.3073,2.428),
(18620,249,2.7363,-236.202,-86.7904,2.428),
(18621,249,-2.01026,-232.542,-86.9951,2.428),
(18622,249,-6.4753,-229.099,-87.0764,2.428),
(18623,249,-12.2232,-224.666,-87.8563,2.428),
(18624,249,-20.0981,-218.681,-88.9371,2.428),
(18625,249,-30.9076,-211.058,-88.5921,2.428),
(18626,249,-40.5002,-203.001,-85.5551,2.428),
(18627,249,-46.1355,-198.549,-85.9018,2.428),
(18628,249,-52.0063,-193.797,-85.8088,2.428),
(18618,249,-58.2509,-189.02,-85.2923,2.428),
(18351,249,-68.8342,-215.036,-84.0189,6.28),
(18352,249,-61.8343,-215.052,-84.6734,6.28),
(18353,249,-53.3433,-215.071,-85.5972,6.28),
(18354,249,-42.6193,-215.095,-86.6636,6.28),
(18355,249,-35.8993,-215.11,-87.1965,6.28),
(18356,249,-28.2483,-215.127,-89.1917,6.28),
(18357,249,-20.3244,-215.145,-88.964,6.28),
(18358,249,-11.1894,-215.166,-87.8171,6.28),
(18359,249,-2.04741,-215.186,-86.2797,6.28),
(18360,249,7.47957,-215.208,-86.0755,6.28),
(18361,249,20.7305,-215.238,-85.2544,6.28),
(17086,249,25,-216.025,-84.874,3.142),
(17087,249,15,-216.025,-85.8052,3.142),
(17088,249,5,-216.025,-86.0683,3.142),
(17089,249,-5,-216.025,-86.9675,3.142),
(17090,249,-15,-216.025,-88.3522,3.142),
(17091,249,-25,-216.025,-89.2463,3.142),
(17092,249,-35,-216.025,-87.4351,3.142),
(17093,249,-45,-216.025,-86.4653,3.142),
(17094,249,-55,-216.025,-85.3717,3.142),
(17095,249,-65,-216.025,-84.3052,3.142),
(17097,249,-75,-216.025,-83.395,3.142),
(22267,249,-85,-216.025,-82.5516,3.142),
(22268,249,-96.8227,-214.425,-82.2065,3.142),
(21132,249,-120.471,-214.335,-71.9481,3.142),
(21133,249,-142.719,-213.206,-68.8335,3.142),
(21135,249,-162.585,-205.683,-68.7282,3.142),
(21136,249,-194.92,-206.546,-68.7282,3.142),
(21137,249,-173.573,-186.406,-66.1293,3.142),
(21138,249,-164.067,-164.104,-59.5405,3.142),
(21139,249,-144.485,-149.742,-53.8462,3.142),
(48276,575,296.689,-346.504,108.548,4.60767),
(22563,30,-1347,-292,91,5.19479),
(22564,30,648,-34,47,3.36559),
(51852,609,2361.21,-5660.45,503.745,3.72629),
(53097,609,1401.45,-5824.52,137.188,5.52088),
(53098,609,2400.03,-5635,377.017,3.70201),
(65728,0,-11708.4,-3168,-5.07,2.66028),
(65729,0,-11708.4,-3168,-5.07,4.32218),
(46037,580,1847.37,599.494,71.3083,2.52594),
(46040,580,1786.56,653.266,71.1986,5.46254),
(46038,580,1786.56,653.266,71.1986,5.46254),
(46039,580,1847.37,599.494,71.3083,2.52594),
(47324,571,3306.98,2506.61,197.317,4.82885),
(47325,571,3444.38,2361.87,38.7409,4.24447),
(30171,532,-11249.7,-1704.61,179.434,0),
(30179,532,-11242.1,-1713.33,179.434,0),
(29231,533,2685.06,-3502.37,261.315,0),
(29216,533,2633.49,-3529.56,274.111,0),
(29247,533,2646.37,-3466.23,263.098,5.46297),
(29248,533,2704.86,-3458.79,264.067,4.31236),
(29249,533,2724.76,-3514.27,263.067,3.09084),
(29237,533,2648.83,-3467.3,262.399,5.46297),
(29217,533,2646.37,-3466.23,263.098,6.17666),
(29224,533,2704.86,-3458.79,264.067,5.43839),
(29225,533,2725.71,-3463.45,263.415,5.45017),
(29227,533,2663.92,-3464.7,262.574,5.15958),
(29238,533,2684.95,-3457.55,262.578,4.62159),
(29255,533,2704.22,-3461.86,262.546,4.37027),
(29257,533,2704.86,-3458.79,264.067,3.85584),
(29258,533,2722.03,-3514.3,262.354,2.84269),
(29262,533,2727.58,-3535.23,263.012,2.60314),
(29267,533,2711.72,-3458.56,262.384,4.02864),
(29226,533,2724.76,-3514.27,263.067,2.87018),
(29239,533,2706.78,-3461.59,262.517,4.00358),
(29256,533,2663.7,-3461.9,263.763,5.07774),
(29268,533,2646.93,-3470.95,262.427,5.51363),
(30211,533,2794.61,-3707.68,276.552,2.32),
(28025,533,2692,-3399.27,267.686,4.70454),
(28026,533,2692,-3321.86,267.686,2.19126),
(28280,533,3125.44,-3309.74,293.251,3.14929),
(71512,571,5807.75,588.347,661.505,1.63214),
(46772,571,4034.25,7349.38,635.97,5.73),
(46824,571,3574.22,6652.13,195.185,3.53),
(11511,90,-530.754,670.571,-313.784,0),
(11795,90,-530.754,670.571,-313.784,0),
(52056,1,-6161.01,-1332.36,-168.964,2.33608),
(52057,571,4885.66,5175.65,-84.86,0.363606),
(68988,632,5297.32,2506.63,686.068,3.24631),
(71436,0,-14459.8,491.07,15.1247,0.506959),
(54963,571,6153.65,-1075.62,403.529,2.04995),
(731,531,-8003,1222.9,-82.1,0),
(9003,0,-2607,-2434,80,0),
(20534,409,736.516,-1176.35,-119.006,0),
(20618,409,736.516,-1176.35,-119.006,0),
(25139,409,1080,-483,-108,0),
(29181,531,-8971.81,1321.47,-104.249,0),
(29190,531,-8632.84,2055.87,108.86,0),
(42837,571,634.094,-5010.67,4.33616,0),
(42838,571,635.081,-5016.87,4.05514,0),
(47506,600,-369,-601,2,0),
(47754,576,504.742,88.9122,-16.1245,0),
(50987,571,5071.35,4642.54,72.164,0),
(53436,595,2071.55,1287.68,141.687,0),
(58681,571,5386.05,2840.97,418.675,0),
(59324,571,5881.2,666.5,621.2,0),
(59399,571,5878.5,668.4,622.2,0),
(59400,571,5792,562.5,635.2,0),
(59401,571,5815.3,714.6,624.3,0),
(62139,608,1857.24,803.877,44.0085,0),
(66238,571,8480.55,1092.9,554.485,0),
(67834,571,3167.01,5586.04,880.067,0),
(67835,571,6136.89,4785.55,100.673,0),
(67836,571,8301.39,1501.34,870.555,0),
(68328,571,5807.75,588.347,661.505,0),
(70606,571,4798.7,-639.529,160.486,0),
(70862,571,4813.54,-581.98,162.511,0),
(72340,631,-548.983,2211.24,539.29,0),
(9002,0,-2625,-2423,79,0),
(24730,1,-1327.66,85.9815,134.169,0),
(40360,530,-247.766,898.264,84.3791,0),
(40361,530,-247.766,898.264,84.3791,0),
(48267,575,296.689,-346.504,90.5482,0),
(48271,575,301.652,-351.038,90.5483,0),
(48274,575,296.625,-352.53,90.9503,0),
(48275,575,291.572,-351.13,90.5483,0),
(50476,578,968.708,1042.49,527.322,0),
(50495,578,1163.72,1170.99,527.322,0),
(50496,578,1116.11,1075.17,508.349,0),
(51112,578,1103.47,1049.57,512,0),
(54137,608,1899.18,824.7,38.64,0),
(55762,571,5779.14,-2986.99,273.005,0),
(55837,604,1644.08,935.622,107.205,0),
(59760,571,5538.03,2893.1,517.055,0),
(59763,571,5096.62,3467.84,368.485,0),
(59765,571,5031.51,3710.43,372.364,0),
(59766,571,4335.95,3232.7,390.249,0),
(60327,1,6395.71,433.256,33.26,0.566),
(60591,571,8200.57,3504.03,625.236,0),
(60595,571,8200.57,3504.03,625.236,0),
(60941,0,1774.8,761.127,55.0477,0),
(61637,616,728.055,1329.03,275,0),
(61790,575,476.799,-511.167,104.723,3.141),
(67837,571,8974.37,-1280.56,1059.01,0),
(71413,631,4380.43,3206.55,389.398,0),
(71414,631,4335,3206.75,389.399,0),
(73040,616,755,1301,280,0),
(8136,43,116.35,239.8,-95.08,3.1),
(15737,230,611.073,-222.201,-52.6412,0),
(15739,230,600.752,-225.146,-52.6315,0),
(15740,230,630.355,-174.342,-52.6395,0),
(15741,230,633.182,-184.641,-52.6346,0),
(43209,571,2637.11,-5051.53,295.591,-1.295),
(49097,0,-465.699,1495.98,17.3595,1.10444),
(49098,571,3841.4,-3426.65,293.104,0.845266),
(49984,571,479.019,-5941.53,308.746,0),
(49988,571,479.019,-5941.53,308.746,0),
(49990,571,479.019,-5941.53,308.746,0),
(50007,571,803.878,-5338.85,193.281,0),
(30719,571,5807.75,588.347,661.505,0),
(46233,571,3190.83,5275.33,48.2713,0),
(58633,571,5094.67,2170.33,365.601,0),
(49845,571,604.732,-5035.33,1.0515,0),
(46018,571,3646.74,5893.2,174.483,0),
(60901,1,1921.37,-4149.24,40.4075,0),
(60898,0,-8446.83,339.931,121.329,0),
(61239,0,-8442.65,334.923,122.163,0),
(48324,571,3454.11,-2802.37,202.14,0),
(57747,571,8138.4,436.835,574.636,0),
(57746,571,8152.51,407.96,596.347,0),
(57782,571,8134.81,416.529,588.223,0),
(57786,571,8156.95,429.846,591.186,0),
(57773,571,8138.4,436.835,574.636,0),
(53053,571,4590.94,-5711.24,184.507,0),
(60905,571,6203.87,2262.17,497.197,0),
(60328,0,-14412.9,692.017,22.248,1.231),
(52462,609,2389.58,-5901.18,108.938,0),
(52464,609,2390.14,-5903.44,109.249,0),
(52706,609,1993.19,-5826.19,104.281,0),
(52364,607,1227.58,-56.5539,70.0842,0),
(52091,571,6165.63,-2001.19,408.168,0),
(52863,571,6161.15,-2015.36,590.878,0),
(52240,571,6175.59,-2000.67,241.769,0),
(57553,571,5875.43,-1981.37,234.671,0),
(52677,571,6252.58,-1965.86,484.782,0),
(55431,571,5799.29,-1597.31,237.17,0),
(59762,571,5100.76,2299.47,368.485,0),
(61339,608,1891.42,788.04,38.64,0),
(54102,608,1854.36,802.65,44.3,0),
(61338,608,1899.18,824.7,38.64,0),
(54138,608,1891.42,788.04,38.64,0),
(61337,608,1854.36,802.65,44.3,0),
(40164,530,-2466.6,4699.98,156.65,0),
(49992,571,479.019,-5941.53,308.746,0),
(56649,571,7992.89,-3193.85,927.386,0),
(44435,571,-77.7993,-3644.27,1.48503,0),
(50039,571,-170.469,-3588.19,-0.221146,0),
(61605,571,89.7416,-6286.08,1.17903,0),
(50005,571,595.208,-2796.47,-0.124098,0),
(60324,0,-9470.76,3.909,49.794,4.802),
(58632,571,5025.71,3673.41,362.687,0),
(59769,571,5140.35,2182.01,390.751,0),
(24228,309,-11516.1,-1605.31,41.3,0),
(28444,533,3005.74,-3434.27,304.196,0),
(59767,571,4317.06,2404.3,392.504,0),
(29318,533,3493.45,-5375.38,138.168,0),
(41570,564,603.42,305.982,271.9,0),
(34169,553,158.252,435.927,-6.78686,0),
(34167,553,158.252,435.927,-6.78686,0),
(34183,553,102.702,489.666,-6.74601,0),
(34185,553,102.702,489.666,-6.74601,0),
(9004,0,-2634,-2411,81,0),
(60326,0,286.314,-2184.09,122.612,2.271),
(60325,1,-3721.31,-4411.91,25.247,0.831),
(60329,1,-7135.72,-3787.77,8.799,5.992),
(17278,329,3533.95,-2965.1,125,0),
(39217,530,-3581.57,5426.25,-14.956,0),
(17237,329,3838,-3500,195,0),
(17239,329,3847,-3748,195,0),
(17240,329,4057,-3665,182,0),
(17944,289,266.774,0.886003,75.2501,0),
(17939,289,182.423,-95.8264,85.2284,0),
(60323,0,-5506.34,-704.348,392.686,0.595),
(14208,1,-6025.75,-1021.17,-216,0),
(63986,571,8573,703.9,547.3,0),
(63987,571,8460,700,547.4,0),
(66899,628,747,-1075,135,0),
(67838,571,1156.42,-4936.28,299.028,0),
(30536,530,-3399,-12407,19,0),
(30499,530,-3399,-12407,19,0),
(22670,469,-7506.58,-1165.26,476.796,0),
(22676,469,-7469.93,-1227.93,476.777,0),
(22675,469,-7500.7,-1249.89,476.798,0),
(22669,469,-7542.47,-1191.92,476.355,0),
(22668,469,-7581.11,-1216.19,476.8,0),
(22671,469,-7561.54,-1244.01,476.8,0),
(22674,469,-7538.63,-1273.64,476.8,0),
(22972,469,-7538.63,-1277.56,476.799,0),
(22978,469,-7497.51,-1249.17,476.798,0),
(22981,469,-7461.41,-1226.29,476.781,0),
(22985,469,-7538.63,-1277.56,476.799,0),
(22975,469,-7557.95,-1249.87,476.799,0),
(22982,469,-7483.16,-1195.39,476.799,0),
(22979,469,-7519.9,-1218.85,476.799,0),
(22976,469,-7579.59,-1218.76,476.799,0),
(22980,469,-7540.82,-1190.7,476.355,0),
(22983,469,-7504.77,-1164.43,476.797,0),
(22977,469,-7599.83,-1190.94,475.472,0),
(22984,469,-7524.15,-1138.16,473.348,0),
(17863,289,250.07,0.3921,84.8408,3.149),
(17943,289,95.1547,-1.8173,85.2289,0.043),
(17946,289,181.422,-91.9481,70.7734,1.608),
(17948,289,106.154,-1.8994,75.3663,0.043),
(45956,571,2917.41,5350.59,62.2352,0.98781),
(45963,571,2807.78,6055.25,77.0988,4.60617),
(57535,571,6204.58,-11.9635,410.193,0),
(57654,1,7828.84,-2245.65,463.707,1.005),
(46473,580,1667.64,633.466,28.05,6.05),
(8195,531,-8341.55,2118.5,133.058,0),
(20449,531,-8318.82,2058.23,133.058,0),
(720,531,-8043.01,1254.21,-84.19,0),
(1121,531,-8022.68,1150.08,-89.33,0),
(30120,532,-11234.2,-1698.41,179.237,0),
(36459,548,-347.518,-350.367,1.07459,4.48),
(46020,580,1690.34,942.118,53.0774,0),
(46019,580,1696.2,951.188,-74.5585,0),
(62501,603,2036.17,-201.843,432.687,3.14159),
(63989,603,1954.14,21.522,239.718,2.09439),
(63997,603,2043.12,-25.6981,239.721,0),
(63998,603,1949.13,-80.6744,239.99,4.18879),
(63992,603,1970.61,-25.5988,324.55,3.10346),
(16572,0,-6046.85,-207.329,418.304,0),
(16767,0,-6046.73,-207.159,417.267,0),
(16768,0,-6051.39,-206.749,418.159,0),
(16772,0,-6046.84,-204.535,416.897,0),
(16775,0,-6044.47,-205.783,417.267,0),
(16776,0,-6044.54,-205.562,417.663,0),
(16777,0,-6044.53,-202.912,416.756,0),
(16778,0,-6042.18,-204.949,416.336,0),
(16779,0,-6042.02,-204.134,416.894,0),
(16780,0,-6044.79,-196.959,419.19,0),
(16786,0,-6078.3,-211.89,424.197,0),
(18634,0,-6076,-215,424,0),
(60330,0,-10336.1,-2934.06,116.723,4.523),
(60331,0,-10446.9,-3261.91,20.179,5.875),
(60332,0,-103.988,-902.795,55.534,5.924),
(60333,0,1804.84,196.322,70.399,1.572),
(60334,1,-1060.27,23.137,141.455,5.967),
(60335,1,-506.224,-2590.08,113.15,2.445),
(53821,0,2359.64,-5662.41,382.261,0.596899),
(518,531,-8028.5,1050.9,-54,0),
(25831,531,-8158.03,1139.3,-83.95,0),
(25832,531,-8029.25,1237.78,-85.2285,0),
(25865,531,-8023.59,964.772,-41.229,5.376),
(25878,531,-8032.75,948.274,-41.919,5.595),
(25872,531,-8037.89,929.679,-43.416,6.024),
(25866,531,-8042.13,911.263,-42.841,6.2),
(25879,531,-8037.08,887.268,-43.581,0.675),
(25873,531,-8015.41,867.734,-45.607,1.103),
(25867,531,-7999.36,860.525,-47.206,1.417),
(25880,531,-7992.21,857.5,-47.762,1.664),
(25874,531,-7982.8,857.172,-48.212,1.5),
(25868,531,-7971.3,862.581,-48.099,2.148),
(25881,531,-7960.71,872.483,-48.759,2.36),
(25875,531,-7952.12,883.183,-48.194,2.43),
(25869,531,-7943.21,903.804,-48.473,3.078),
(25882,531,-7942.98,918.616,-46.401,3.306),
(25876,531,-7947.22,939.122,-44.014,3.718),
(25870,531,-7954.38,958.562,-41.609,3.962),
(25883,531,-7964.32,967.879,-42.112,4.087),
(25877,531,-7975.77,974.82,-41.584,4.417),
(25871,531,-7997.19,979.192,-41.653,4.896),
(25884,531,-8015.24,976.553,-41.647,4.947),
(25004,1,7738.52,-2314.8,452.679,0);
/*!40000 ALTER TABLE `spell_target_position` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;