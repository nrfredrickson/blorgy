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

SELECT pg_catalog.setval('adminuser_id_seq', 14, true);


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
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (9, 'daniel@silverorange.com', 'Daniel', '6aecdfe8b004d1e8cb1e42c4414687a9', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (10, 'dennis@silverorange.com', 'Dennis', '57f417b438b12da673e661e998e5bb92', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (11, 'kelly@silverorange.com', 'Kelly', 'ff5c514afb898c582a88e6edc330c5dd', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (13, 'keith@silverorange.com', 'Keith', '81bb7478bc9cd5814189b21b097a9787', '', NULL, NULL, false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (5, 'desroches@silverorange.com', 'Stephen DesRoches', 'f1d5981e34c60eb678516587a27bdb53', '', 's8OonMnfrrpQC1Txj0*PNg', '2008-06-05 13:54:11', false, true, 'O:23:"AdminMenuViewStateStore":3:{s:2:"id";s:20:"AdminMenuView1_state";s:4:"show";b:1;s:13:"sections_show";a:4:{i:10;b:1;i:20;b:1;i:30;b:1;i:1;b:1;}}');
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (6, 'mike@silverorange.com', 'Mike', '16590174c8d4afae49468e699987f99b', '', NULL, NULL, false, true, 'O:23:"AdminMenuViewStateStore":3:{s:2:"id";s:20:"AdminMenuView1_state";s:4:"show";b:1;s:13:"sections_show";a:4:{i:10;b:1;i:20;b:1;i:30;b:1;i:1;b:1;}}');
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (12, 'charleswaddell@gmail.com', 'Charles', '93d1ede729ffa6b33e5d00118e8c231a', '', 'GFOQLjlK7h0rWGYeLuS-jg', '2008-06-10 14:36:09', false, true, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, password_tag_date, force_change_password, enabled, menu_state) VALUES (8, 'steven@silverorange.com', 'Steven', '57f417b438b12da673e661e998e5bb92', '', 'vU7RQzBRGsOdCblo6kGzrw', '2008-06-10 14:02:35', false, true, 'O:23:"AdminMenuViewStateStore":3:{s:2:"id";s:20:"AdminMenuView1_state";s:4:"show";b:1;s:13:"sections_show";a:4:{i:10;b:1;i:20;b:1;i:30;b:1;i:1;b:1;}}');


ALTER TABLE adminuser ENABLE TRIGGER ALL;

--
-- PostgreSQL database dump complete
--

