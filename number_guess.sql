--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: user_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_info (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.user_info OWNER TO freecodecamp;

--
-- Name: user_info_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_info_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_info_user_id_seq OWNER TO freecodecamp;

--
-- Name: user_info_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_info_user_id_seq OWNED BY public.user_info.user_id;


--
-- Name: user_info user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info ALTER COLUMN user_id SET DEFAULT nextval('public.user_info_user_id_seq'::regclass);


--
-- Data for Name: user_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_info VALUES (29, 'user_1690212254289', 5, 804);
INSERT INTO public.user_info VALUES (25, 'user_1690212196462', 5, 804);
INSERT INTO public.user_info VALUES (23, 'user_1690212139599', 5, 804);
INSERT INTO public.user_info VALUES (17, 'user_1690211815994', 5, 804);
INSERT INTO public.user_info VALUES (1, 'user_1690211369912', 5, 804);
INSERT INTO public.user_info VALUES (2, 'user_1690211369911', 5, 804);
INSERT INTO public.user_info VALUES (3, 'kEVO', 5, 804);
INSERT INTO public.user_info VALUES (33, 'user_1690212305934', 5, 804);
INSERT INTO public.user_info VALUES (4, 'user_1690211457463', 5, 804);
INSERT INTO public.user_info VALUES (5, 'user_1690211457462', 5, 804);
INSERT INTO public.user_info VALUES (6, 'user_1690211476453', 5, 804);
INSERT INTO public.user_info VALUES (7, 'user_1690211476452', 5, 804);
INSERT INTO public.user_info VALUES (8, 'user_1690211488957', 5, 804);
INSERT INTO public.user_info VALUES (9, 'user_1690211488956', 5, 804);
INSERT INTO public.user_info VALUES (10, 'user_1690211534024', 5, 804);
INSERT INTO public.user_info VALUES (11, 'user_1690211534023', 5, 804);
INSERT INTO public.user_info VALUES (32, 'user_1690212275234', 5, 804);
INSERT INTO public.user_info VALUES (12, 'user_1690211580231', 5, 804);
INSERT INTO public.user_info VALUES (13, 'user_1690211580231', 5, 804);
INSERT INTO public.user_info VALUES (31, 'user_1690212275235', 5, 804);
INSERT INTO public.user_info VALUES (28, 'user_1690212239436', 5, 804);
INSERT INTO public.user_info VALUES (14, 'user_1690211580230', 5, 804);
INSERT INTO public.user_info VALUES (15, 'user_1690211638808', 5, 804);
INSERT INTO public.user_info VALUES (16, 'user_1690211638807', 5, 804);
INSERT INTO public.user_info VALUES (18, 'user_1690211815993', 5, 804);
INSERT INTO public.user_info VALUES (19, 'user_1690211843740', 5, 804);
INSERT INTO public.user_info VALUES (20, 'user_1690211843739', 5, 804);
INSERT INTO public.user_info VALUES (21, 'user_1690211880852', 5, 804);
INSERT INTO public.user_info VALUES (22, 'user_1690211880851', 5, 804);
INSERT INTO public.user_info VALUES (24, 'user_1690212139598', 5, 804);
INSERT INTO public.user_info VALUES (26, 'user_1690212196461', 5, 804);
INSERT INTO public.user_info VALUES (27, 'user_1690212239437', 5, 804);
INSERT INTO public.user_info VALUES (30, 'user_1690212254288', 5, 804);
INSERT INTO public.user_info VALUES (34, 'user_1690212305933', 5, 804);
INSERT INTO public.user_info VALUES (35, 'user_1690212335839', 5, 804);
INSERT INTO public.user_info VALUES (36, 'user_1690212335838', 5, 804);


--
-- Name: user_info_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_info_user_id_seq', 36, true);


--
-- Name: user_info user_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

