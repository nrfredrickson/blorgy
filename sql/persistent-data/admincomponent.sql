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
-- Name: admincomponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: php
--

SELECT pg_catalog.setval('admincomponent_id_seq', 15, true);


--
-- Data for Name: admincomponent; Type: TABLE DATA; Schema: public; Owner: php
--

ALTER TABLE admincomponent DISABLE TRIGGER ALL;

INSERT INTO admincomponent (id, shortname, title, description, displayorder, section, enabled, "show") VALUES (1, 'AdminUser', 'Admin Users', NULL, 4, 1, true, true);
INSERT INTO admincomponent (id, shortname, title, description, displayorder, section, enabled, "show") VALUES (2, 'AdminGroup', 'Admin Groups', NULL, 5, 1, true, true);
INSERT INTO admincomponent (id, shortname, title, description, displayorder, section, enabled, "show") VALUES (3, 'AdminSection', 'Admin Sections', NULL, 3, 1, true, true);
INSERT INTO admincomponent (id, shortname, title, description, displayorder, section, enabled, "show") VALUES (4, 'AdminComponent', 'Admin Components', NULL, 1, 1, true, true);
INSERT INTO admincomponent (id, shortname, title, description, displayorder, section, enabled, "show") VALUES (5, 'AdminSubComponent', 'Admin Sub-Components', NULL, 2, 1, true, false);
INSERT INTO admincomponent (id, shortname, title, description, displayorder, section, enabled, "show") VALUES (6, 'Front', 'Front Page', NULL, 0, 1, true, false);
INSERT INTO admincomponent (id, shortname, title, description, displayorder, section, enabled, "show") VALUES (11, 'Post', 'Posts', NULL, 10, 10, true, true);
INSERT INTO admincomponent (id, shortname, title, description, displayorder, section, enabled, "show") VALUES (12, 'Tag', 'Tags', NULL, 20, 10, true, true);
INSERT INTO admincomponent (id, shortname, title, description, displayorder, section, enabled, "show") VALUES (13, 'Author', 'Authors', NULL, 10, 20, true, true);
INSERT INTO admincomponent (id, shortname, title, description, displayorder, section, enabled, "show") VALUES (14, 'Sidebar', 'Sidebar', NULL, 10, 30, true, true);
INSERT INTO admincomponent (id, shortname, title, description, displayorder, section, enabled, "show") VALUES (15, 'Config', 'Site Settings', NULL, 0, 30, true, true);


ALTER TABLE admincomponent ENABLE TRIGGER ALL;

--
-- PostgreSQL database dump complete
--

