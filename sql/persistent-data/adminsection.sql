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
-- Name: adminsection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: php
--

SELECT pg_catalog.setval('adminsection_id_seq', 1, false);


--
-- Data for Name: adminsection; Type: TABLE DATA; Schema: public; Owner: php
--

ALTER TABLE adminsection DISABLE TRIGGER ALL;



ALTER TABLE adminsection ENABLE TRIGGER ALL;

--
-- PostgreSQL database dump complete
--

