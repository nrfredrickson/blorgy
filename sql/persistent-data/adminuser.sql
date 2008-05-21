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

INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (1, 'nick@silverorange.com', 'Nick Burka', 'f12d534540fdc2b0cd8389c4a54ad1fe', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (2, 'nathan@silverorange.com', 'Nathan', 'bfc4fd79ea7fdf1240db016e29ae417a', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (3, 'isaac@silverorange.com', 'Isaac', '64097f46b63fe377b590fa1ad00c8de2', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (4, 'dan@silverorange.com', 'Dan', '57f417b438b12da673e661e998e5bb92', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (5, 'desroches@silverorange.com', 'Stephen DesRoches', 'f1d5981e34c60eb678516587a27bdb53', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (6, 'mike@silverorange.com', 'Mike', '16590174c8d4afae49468e699987f99b', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (7, 'dave@silverorange.com', 'Dave', 'ae0ce887676b6d4fa6db438c94daca83', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (8, 'steven@silverorange.com', 'Steven', '57f417b438b12da673e661e998e5bb92', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (9, 'daniel@silverorange.com', 'Daniel', '6aecdfe8b004d1e8cb1e42c4414687a9', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (10, 'dennis@silverorange.com', 'Dennis', '57f417b438b12da673e661e998e5bb92', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (11, 'kelly@silverorange.com', 'Kelly', 'ff5c514afb898c582a88e6edc330c5dd', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (12, 'charleswaddell@gmail.com', 'Charles', '93d1ede729ffa6b33e5d00118e8c231a', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (13, 'keith@silverorange.com', 'Keith', '81bb7478bc9cd5814189b21b097a9787', '', NULL, false, true, NULL, NULL);
INSERT INTO adminuser (id, email, name, "password", password_salt, password_tag, force_change_password, enabled, menu_state, password_tag_date) VALUES (14, 'charlesp@silverorange.com', 'Charles P.', '33d19d605e33169ca0bf4b19ef8fad9b', '', NULL, false, true, NULL, NULL);


ALTER TABLE adminuser ENABLE TRIGGER ALL;

--
-- PostgreSQL database dump complete
--

