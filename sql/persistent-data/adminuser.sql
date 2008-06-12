--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Name: adminuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: php
--

SELECT pg_catalog.setval('adminuser_id_seq', 31, true);


--
-- Data for Name: adminuser; Type: TABLE DATA; Schema: public; Owner: php
--

ALTER TABLE adminuser DISABLE TRIGGER ALL;

INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (1, 'nick@silverorange.com', 'Nick Burka', 'f12d534540fdc2b0cd8389c4a54ad1fe', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (2, 'nathan@silverorange.com', 'Nathan', 'bfc4fd79ea7fdf1240db016e29ae417a', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (3, 'isaac@silverorange.com', 'Isaac', '64097f46b63fe377b590fa1ad00c8de2', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (4, 'dan@silverorange.com', 'Dan', '57f417b438b12da673e661e998e5bb92', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (7, 'dave@silverorange.com', 'Dave', 'ae0ce887676b6d4fa6db438c94daca83', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (14, 'charlesp@silverorange.com', 'Charles P.', '3bb44a244b38610c5682be48f61930c5', 'WGZsdHIrKFdvAgVKQ05JcQ==', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (10, 'dennis@silverorange.com', 'Dennis', '57f417b438b12da673e661e998e5bb92', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (11, 'kelly@silverorange.com', 'Kelly', 'ff5c514afb898c582a88e6edc330c5dd', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (13, 'keith@silverorange.com', 'Keith', '81bb7478bc9cd5814189b21b097a9787', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (5, 'desroches@silverorange.com', 'Stephen DesRoches', 'f1d5981e34c60eb678516587a27bdb53', '', 's8OonMnfrrpQC1Txj0*PNg', '2008-06-05 13:54:11', false, true, 'O:23:"AdminMenuViewStateStore":3:{s:2:"id";s:20:"AdminMenuView1_state";s:4:"show";b:1;s:13:"sections_show";a:4:{i:10;b:1;i:20;b:1;i:30;b:1;i:1;b:1;}}');
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (6, 'mike@silverorange.com', 'Mike', '16590174c8d4afae49468e699987f99b', '', NULL, NULL, false, true, 'O:23:"AdminMenuViewStateStore":3:{s:2:"id";s:20:"AdminMenuView1_state";s:4:"show";b:1;s:13:"sections_show";a:4:{i:10;b:1;i:20;b:1;i:30;b:1;i:1;b:1;}}');
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (12, 'charleswaddell@gmail.com', 'Charles', '93d1ede729ffa6b33e5d00118e8c231a', '', 'GFOQLjlK7h0rWGYeLuS-jg', '2008-06-10 14:36:09', false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (8, 'steven@silverorange.com', 'Steven', '57f417b438b12da673e661e998e5bb92', '', 'vU7RQzBRGsOdCblo6kGzrw', '2008-06-10 14:02:35', false, true, 'O:23:"AdminMenuViewStateStore":3:{s:2:"id";s:20:"AdminMenuView1_state";s:4:"show";b:1;s:13:"sections_show";a:4:{i:10;b:1;i:20;b:1;i:30;b:1;i:1;b:1;}}');
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (15, 'garritys@hotmail.com', 'Bruce Garrity', 'b79cf6d9416970e54d36814cc1e08c63', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (16, 'cantona_fan@hotmail.com', 'Melda L. Gibson', 'b0c36748008ddccb4791e9914beee2bc', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (17, 'guigan2@hotmail.com', 'Jeff McGuigan', '72b302bf297a228a75730123efef7c41', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (18, 'daniel@deltatangobravo.com', 'Daniel Burka', '6aecdfe8b004d1e8cb1e42c4414687a9', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (19, 'beckyjames@gmail.com', 'Becky James', 'c7077bec4ffe5b96bc4d2ea18f9e594c', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (21, 'barb@horton-brasses.com', 'Barb Rockwell', '8e255088a3e0da3e4ce883ceaba25859', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (22, 'toby@horton-brasses.com', 'Toby Rockwell', '749b4f1b836b9ee18be9c4f088432fea', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (23, 'orion@horton-brasses.com', 'Orion Henderson', '8e255088a3e0da3e4ce883ceaba25859', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (24, 'tomcat112@gmail.com', 'Amber', '2f790353e29822bfe530bccfe705e700', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (25, 'maria.maund@gmail.com', 'Maria', '9b1f146ae06d8977fec447596dd16ed5', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (26, 'elizabethbarrett@gmail.com', 'Liz', '3862f7cddf89c726771ef93576d1862f', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (27, 'genx40@gmail.com', 'Alan McLeod', '4d21f13445a803d2944a092e30357a7a', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (28, 'paztorchris@hotmail.com', 'Chris Austin', '1149ae82478220fda007a41c24593c42', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (30, 'robertf5@gmail.com', 'Bobby Frizzell', '06dbbb135c65a89ca4aa793c9ec7a930', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (31, 'nmacaulay@gmail.com', 'Nick MacAulay', '2afe2347fd477a00bae104902fdf2e54', '', NULL, NULL, false, true, NULL);


ALTER TABLE adminuser ENABLE TRIGGER ALL;

--
-- PostgreSQL database dump complete
--

