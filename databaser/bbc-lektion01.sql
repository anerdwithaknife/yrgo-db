-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Skapad: 04 oktober 2010 kl 12:59
-- Serverversion: 5.1.41
-- PHP-version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `sqlweb10`
--

-- --------------------------------------------------------

--
-- Struktur för tabell `bbc`
--

CREATE TABLE IF NOT EXISTS `bbc` (
  `name` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `area` bigint(20) NOT NULL,
  `population` bigint(20) NOT NULL,
  `gdp` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Data i tabell `bbc`
--

INSERT INTO `bbc` (`name`, `region`, `area`, `population`, `gdp`) VALUES
('Afghanistan', 'South Asia', 652225, 26000000, 0),
('Albania', 'Europe', 28728, 3200000, 6656000000),
('Algeria', 'Middle East', 2400000, 32900000, 75012000000),
('Andorra', 'Europe', 468, 64000, 0),
('Angola', 'Africa', 1250000, 14500000, 14935000000),
('Antigua and Barbuda', 'Americas', 442, 77000, 770000000),
('Argentina', 'South America', 2800000, 39300000, 146196000000),
('Armenia', 'Europe', 29743, 3000000, 3360000000),
('Australia', 'Asia-Pacific', 7700000, 20300000, 546070000000),
('Austria', 'Europe', 83871, 8100000, 261630000000),
('Azerbaijan', 'Europe', 86600, 8500000, 0),
('Bahamas', 'Americas', 13939, 321000, 4789320000),
('Bahrain', 'Middle East', 717, 754000, 9357140000),
('Bangladesh', 'South Asia', 143998, 152600000, 67144000000),
('Barbados', 'Americas', 430, 272000, 2518720000),
('Belarus', 'Europe', 207595, 9800000, 20776000000),
('Belgium', 'Europe', 30528, 10300000, 319609000000),
('Belize', 'Americas', 22965, 266000, 0),
('Benin', 'Africa', 112622, 7100000, 3763000000),
('Bhutan', 'South Asia', 38364, 2400000, 1824000000),
('Bolivia', 'South America', 1100000, 9100000, 0),
('Bosnia-Hercegovina', 'Europe', 51129, 4200000, 8568000000),
('Botswana', 'Africa', 581730, 1800000, 7812000000),
('Brazil', 'South America', 8550000, 182800000, 564852000000),
('Brunei', 'Asia-Pacific', 5765, 374000, 0),
('Bulgaria', 'Europe', 110994, 7800000, 21372000000),
('Burkina Faso', 'Africa', 274200, 13800000, 4968000000),
('Burma', 'Asia-Pacific', 676552, 50700000, 0),
('Burundi', 'Africa', 27816, 7300000, 0),
('Cambodia', 'Asia-Pacific', 181035, 14800000, 4736000000),
('Cameroon', 'Africa', 465458, 16600000, 13280000000),
('Canada', 'North America', 9900000, 32000000, 908480000000),
('Cape Verde', 'Africa', 4033, 482000, 853140000),
('Central African Republic', 'Africa', 622984, 3900000, 0),
('Chad', 'Africa', 1280000, 9100000, 2366000000),
('Chile', 'South America', 756096, 16200000, 79542000000),
('China', 'Asia-Pacific', 9600000, 1300000000, 1677000000000),
('Colombia', 'South America', 1140000, 45600000, 0),
('Comoros', 'Africa', 1862, 812000, 0),
('Costa Rica', 'Americas', 51100, 4300000, 0),
('Croatia', 'Europe', 56594, 4400000, 28996000000),
('Cuba', 'Americas', 110860, 11300000, 0),
('Cyprus', 'Europe', 9250, 807000, 14187060000),
('Czech Republic', 'Europe', 78866, 10200000, 93330000000),
('Democratic Republic of Congo', 'Africa', 2340000, 56000000, 6720000000),
('Denmark', 'Europe', 43098, 5400000, 219510000000),
('Djibouti', 'Africa', 23200, 721000, 0),
('Dominica', 'Americas', 751, 71000, 259150000),
('Dominican Republic', 'Americas', 48072, 9000000, 0),
('East Timor', 'Asia-Pacific', 14609, 857000, 0),
('Ecuador', 'South America', 272045, 13400000, 0),
('Egypt', 'Middle East', 1000000, 74900000, 98119000000),
('El Salvador', 'Americas', 21041, 6700000, 15745000000),
('Equatorial Guinea', 'Africa', 28051, 521000, 484530000),
('Eritrea', 'Africa', 117400, 4561599, 0),
('Estonia', 'Europe', 45227, 1300000, 9113000000),
('Ethiopia', 'Africa', 1130000, 74200000, 8162000000),
('Fiji', 'Asia-Pacific', 18376, 854000, 0),
('Finland', 'Europe', 338145, 5200000, 170508000000),
('Former Yugoslav Republic of Macedonia', 'Europe', 25713, 2000000, 4700000000),
('France', 'Europe', 543965, 60700000, 1826463000000),
('Gabon', 'Africa', 267667, 1400000, 0),
('Georgia', 'Europe', 69700, 5000000, 5200000000),
('Germany', 'Europe', 357027, 82500000, 2484900000000),
('Ghana', 'Africa', 238533, 21800000, 8284000000),
('Greece', 'Europe', 131957, 11000000, 182710000000),
('Grenada', 'Americas', 344, 103000, 0),
('Guatemala', 'Americas', 108890, 13000000, 0),
('Guinea', 'Africa', 245857, 8800000, 4048000000),
('Guinea-Bissau', 'Africa', 36125, 1600000, 256000000),
('Guyana', 'South America', 214969, 768000, 0),
('Haiti', 'Americas', 27750, 8500000, 0),
('Honduras', 'Americas', 112492, 7200000, 7416000000),
('Hungary', 'Europe', 93030, 9800000, 81046000000),
('Iceland', 'Europe', 103000, 294000, 11354280000),
('India', 'South Asia', 3100000, 1100000000, 682000000000),
('Indonesia', 'Asia-Pacific', 1900000, 225300000, 256842000000),
('Iran', 'Middle East', 1650000, 70700000, 162610000000),
('Iraq', 'Middle East', 438317, 26500000, 0),
('Ireland', 'Europe', 70182, 4000000, 137120000000),
('Israel and Palestinian territories', 'Middle East', 20770, 3800000, 4256000000),
('Italy', 'Europe', 301338, 57200000, 1494064000000),
('Ivory Coast', 'Africa', 322462, 17100000, 13167000000),
('Jamaica', 'Americas', 10991, 2700000, 7830000000),
('Japan', 'Asia-Pacific', 377864, 127900000, 4755322000000),
('Jordan', 'Middle East', 89342, 5700000, 12198000000),
('Kazakhstan', 'Asia-Pacific', 2700000, 15400000, 0),
('Kenya', 'Africa', 582646, 32800000, 15088000000),
('Kiribati', 'Asia-Pacific', 810, 85000, 82450000),
('Kuwait', 'Middle East', 17818, 2700000, 48519000000),
('Kyrgyzstan', 'Asia-Pacific', 199900, 5300000, 0),
('Laos', 'Asia-Pacific', 236800, 5900000, 2301000000),
('Latvia', 'Europe', 64589, 2300000, 0),
('Lebanon', 'Middle East', 10452, 3800000, 18924000000),
('Lesotho', 'Africa', 30355, 1800000, 1332000000),
('Liberia', 'Africa', 99067, 3600000, 396000000),
('Libya', 'Africa', 1770000, 5800000, 25810000000),
('Liechtenstein', 'Europe', 160, 34000, 0),
('Lithuania', 'Europe', 65300, 3400000, 19516000000),
('Luxembourg', 'Europe', 2586, 465000, 26146950000),
('Madagascar', 'Africa', 587041, 18400000, 5520000000),
('Malawi', 'Africa', 118484, 12600000, 2142000000),
('Malaysia', 'Asia-Pacific', 329847, 25300000, 0),
('Mali', 'Africa', 1250000, 13800000, 4968000000),
('Malta', 'Europe', 316, 397000, 4863250000),
('Marshall Islands', 'Asia-Pacific', 181, 57000, 135090000),
('Mauritania', 'Middle East', 1040000, 3100000, 1302000000),
('Mauritius', 'Africa', 2040, 1200000, 5568000000),
('Mexico', 'North America', 1960000, 106400000, 720328000000),
('Micronesia', 'Asia-Pacific', 700, 111000, 0),
('Moldova', 'Europe', 33800, 4300000, 3053000000),
('Monaco', 'Europe', 2, 32000, 0),
('Mongolia', 'Asia-Pacific', 1560000, 2700000, 0),
('Morocco', 'Middle East', 710850, 31600000, 48032000000),
('Mozambique', 'Africa', 812379, 19500000, 4875000000),
('Namibia', 'Africa', 824292, 2000000, 4740000000),
('Nauru', 'Asia-Pacific', 21, 9900, 0),
('Nepal', 'South Asia', 147181, 26300000, 6838000000),
('New Zealand', 'Asia-Pacific', 270534, 4000000, 81240000000),
('Nicaragua', 'Americas', 120254, 5700000, 4503000000),
('Niger', 'Africa', 1270000, 12900000, 2967000000),
('Nigeria', 'Africa', 923768, 130200000, 50778000000),
('North Korea', 'Asia-Pacific', 122762, 22900000, 0),
('Norway', 'Europe', 323759, 4600000, 239338000000),
('Oman', 'Middle East', 309500, 3000000, 23670000000),
('Pakistan', 'South Asia', 796095, 161100000, 96660000000),
('Palau', 'Asia-Pacific', 508, 20000, 0),
('Panama', 'Americas', 75517, 3200000, 0),
('Papua New Guinea', 'Asia-Pacific', 462840, 5900000, 3422000000),
('Paraguay', 'South America', 406752, 6200000, 0),
('Peru', 'South America', 1280000, 28000000, 0),
('Poland', 'Europe', 312685, 38500000, 234465000000),
('Portugal', 'Europe', 92345, 10500000, 150675000000),
('Qatar', 'Middle East', 11437, 628000, 0),
('Republic of Congo', 'Africa', 342000, 3039126, 0),
('Romania', 'Europe', 238391, 22200000, 64824000000),
('Russia', 'Europe', 17000000, 141500000, 482515000000),
('Rwanda', 'Africa', 26338, 8600000, 1892000000),
('Samoa', 'Asia-Pacific', 2831, 182000, 0),
('San Marino', 'Europe', 61, 27000, 0),
('Sao Tome and Principe', 'Africa', 1001, 169000, 62530000),
('Saudi Arabia', 'Middle East', 2240000, 25600000, 267008000000),
('Senegal', 'Africa', 196722, 10600000, 7102000000),
('Serbia and Montenegro', 'Europe', 102173, 10500000, 27510000000),
('Seychelles', 'Africa', 455, 76000, 0),
('Sierra Leone', 'Africa', 71740, 5300000, 1060000000),
('Singapore', 'Asia-Pacific', 660, 4400000, 106568000000),
('Slovakia', 'Europe', 49033, 5400000, 34992000000),
('Slovenia', 'Europe', 20273, 2000000, 29620000000),
('Solomon Islands', 'Asia-Pacific', 27556, 504000, 277200000),
('Somalia', 'Africa', 637657, 10700000, 0),
('South Africa', 'Africa', 1220000, 45300000, 164439000000),
('South Korea', 'Asia-Pacific', 99313, 48200000, 673836000000),
('Spain', 'Europe', 505988, 44100000, 935361000000),
('Sri Lanka', 'South Asia', 65610, 19400000, 19594000000),
('St Kitts and Nevis', 'Americas', 269, 46000, 0),
('St Lucia', 'Americas', 616, 152000, 655120000),
('St Vincent and the Grenadines', 'Americas', 389, 121000, 441650000),
('Sudan', 'Middle East', 2500000, 35000000, 18550000000),
('Surinam', 'South America', 163265, 442000, 0),
('Swaziland', 'Africa', 17364, 1100000, 1826000000),
('Sweden', 'Europe', 449964, 8900000, 318353000000),
('Switzerland', 'Europe', 41284, 7100000, 342433000000),
('Syria', 'Middle East', 185180, 18600000, 22134000000),
('Taiwan', 'Asia-Pacific', 36188, 22700000, 302364000000),
('Tajikistan', 'Asia-Pacific', 143100, 6300000, 0),
('Tanzania', 'Africa', 945087, 38400000, 0),
('Thailand', 'Asia-Pacific', 513115, 64100000, 162814000000),
('The Gambia', 'Africa', 11295, 1500000, 0),
('The Maldives', 'South Asia', 298, 338000, 848380000),
('The Netherlands', 'Europe', 41864, 16300000, 516710000000),
('The Philippines', 'Asia-Pacific', 300000, 82800000, 96876000000),
('Togo', 'Africa', 56785, 5100000, 1938000000),
('Tonga', 'Asia-Pacific', 748, 106000, 0),
('Trinidad and Tobago', 'Americas', 5128, 1300000, 0),
('Tunisia', 'Middle East', 164150, 10000000, 26300000000),
('Turkey', 'Europe', 779452, 73300000, 274875000000),
('Turkmenistan', 'Asia-Pacific', 488100, 5000000, 0),
('Tuvalu', 'Asia-Pacific', 26, 10000, 0),
('Uganda', 'Africa', 241038, 27600000, 7452000000),
('Ukraine', 'Europe', 603700, 47800000, 60228000000),
('United Arab Emirates', 'Middle East', 77700, 3100000, 0),
('United Kingdom', 'Europe', 242514, 59600000, 2022824000000),
('United States of America', 'North America', 9800000, 295000000, 12213000000000),
('Uruguay', 'South America', 176215, 3500000, 0),
('Uzbekistan', 'Asia-Pacific', 447400, 26900000, 0),
('Vanuatu', 'Asia-Pacific', 12190, 222000, 297480000),
('Vatican', 'Europe', 0, 0, 0),
('Venezuela', 'South America', 881050, 26600000, 0),
('Vietnam', 'Asia-Pacific', 329247, 83600000, 45980000000),
('Yemen', 'Middle East', 536869, 21500000, 12255000000),
('Zambia', 'Africa', 752614, 11000000, 4950000000),
('Zimbabwe', 'Africa', 390759, 12900000, 6192000000);
