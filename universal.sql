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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    size integer,
    living_possibility boolean,
    name character varying(40),
    age numeric NOT NULL,
    dis text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    size integer,
    living_possibility boolean,
    name character varying(40),
    age numeric NOT NULL,
    dis text NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    colum name NOT NULL,
    age integer NOT NULL,
    name character varying(40) NOT NULL,
    more_info_id integer NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    size integer,
    living_possibility boolean,
    name character varying(40),
    age numeric NOT NULL,
    dis text NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    size integer,
    name character varying(40),
    age numeric NOT NULL,
    dis text NOT NULL,
    galaxy_id integer,
    livig boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 100, false, 'octa', 100, 'big');
INSERT INTO public.galaxy VALUES (2, 200, NULL, 'Bin', 20, 'smallest');
INSERT INTO public.galaxy VALUES (3, 300, NULL, 'Penti', 23, 'somehow-big');
INSERT INTO public.galaxy VALUES (4, 400, NULL, 'Gin', 45, 'little bigger than Bin');
INSERT INTO public.galaxy VALUES (5, 550, NULL, 'Cin', 34, 'ugly');
INSERT INTO public.galaxy VALUES (6, 600, NULL, 'Omz', 48, 'The most beautiful ever');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 300, NULL, 'GIX', 200, 'small', 1);
INSERT INTO public.moon VALUES (8, 200, NULL, 'Rohil', 20, 'smallest', 5);
INSERT INTO public.moon VALUES (9, 300, NULL, 'Bohil', 23, 'somehow-big', 4);
INSERT INTO public.moon VALUES (10, 400, NULL, 'Pohil', 45, 'little bigger than Bin', 3);
INSERT INTO public.moon VALUES (11, 550, NULL, 'Cohil', 34, 'ugly', 2);
INSERT INTO public.moon VALUES (12, 600, NULL, 'Omzeil', 48, 'The most beautiful ever', 1);
INSERT INTO public.moon VALUES (13, 200, NULL, 'Rohile', 20, 'smallest', 5);
INSERT INTO public.moon VALUES (14, 300, NULL, 'Bohile', 23, 'somehow-big', 4);
INSERT INTO public.moon VALUES (15, 400, NULL, 'Pohile', 45, 'little bigger than Bin', 3);
INSERT INTO public.moon VALUES (16, 550, NULL, 'Cohile', 34, 'ugly', 2);
INSERT INTO public.moon VALUES (17, 600, NULL, 'Omzeile', 48, 'The most beautiful ever', 1);
INSERT INTO public.moon VALUES (18, 200, NULL, 'Rohiled', 20, 'smallest', 5);
INSERT INTO public.moon VALUES (19, 300, NULL, 'Bohiled', 23, 'somehow-big', 4);
INSERT INTO public.moon VALUES (20, 400, NULL, 'Pohiled', 45, 'little bigger than Bin', 3);
INSERT INTO public.moon VALUES (21, 550, NULL, 'Cohiled', 34, 'ugly', 2);
INSERT INTO public.moon VALUES (22, 600, NULL, 'Omzeild', 48, 'The most beautiful ever', 1);
INSERT INTO public.moon VALUES (23, 200, NULL, 'Rohileh', 20, 'smallest', 5);
INSERT INTO public.moon VALUES (24, 300, NULL, 'Bohileh', 23, 'somehow-big', 4);
INSERT INTO public.moon VALUES (25, 400, NULL, 'Pohileh', 45, 'little bigger than Bin', 3);
INSERT INTO public.moon VALUES (26, 550, NULL, 'Cohileh', 34, 'ugly', 2);
INSERT INTO public.moon VALUES (27, 600, NULL, 'Omzeileh', 48, 'The most beautiful ever', 1);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES ('3', 2000, 'Earth', 1);
INSERT INTO public.more_info VALUES ('2', 2300, 'Mars', 2);
INSERT INTO public.more_info VALUES ('1', 4000, 'Jupiter', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 29, NULL, 'HEX', 20, 'bigger', 1);
INSERT INTO public.planet VALUES (2, 200, NULL, 'Rohil', 20, 'smallest', 5);
INSERT INTO public.planet VALUES (3, 300, NULL, 'Bohil', 23, 'somehow-big', 4);
INSERT INTO public.planet VALUES (4, 400, NULL, 'Pohil', 45, 'little bigger than Bin', 3);
INSERT INTO public.planet VALUES (5, 550, NULL, 'Cohil', 34, 'ugly', 2);
INSERT INTO public.planet VALUES (6, 600, NULL, 'Omzeil', 48, 'The most beautiful ever', 1);
INSERT INTO public.planet VALUES (12, 200, NULL, 'Rohile', 20, 'smallest', 5);
INSERT INTO public.planet VALUES (13, 300, NULL, 'Bohile', 23, 'somehow-big', 4);
INSERT INTO public.planet VALUES (14, 400, NULL, 'Pohile', 45, 'little bigger than Bin', 3);
INSERT INTO public.planet VALUES (15, 550, NULL, 'Cohile', 34, 'ugly', 2);
INSERT INTO public.planet VALUES (16, 600, NULL, 'Omzeile', 48, 'The most beautiful ever', 1);
INSERT INTO public.planet VALUES (17, 200, NULL, 'Rohileh', 20, 'smallest', 5);
INSERT INTO public.planet VALUES (18, 300, NULL, 'Bohileh', 23, 'somehow-big', 4);
INSERT INTO public.planet VALUES (19, 400, NULL, 'Pohileh', 45, 'little bigger than Bin', 3);
INSERT INTO public.planet VALUES (20, 550, NULL, 'Cohileh', 34, 'ugly', 2);
INSERT INTO public.planet VALUES (21, 600, NULL, 'Omzeileh', 48, 'The most beautiful ever', 1);
INSERT INTO public.planet VALUES (22, 200, NULL, 'Rohiled', 20, 'smallest', 5);
INSERT INTO public.planet VALUES (23, 300, NULL, 'Bohiled', 23, 'somehow-big', 4);
INSERT INTO public.planet VALUES (24, 400, NULL, 'Pohiled', 45, 'little bigger than Bin', 3);
INSERT INTO public.planet VALUES (25, 550, NULL, 'Cohiled', 34, 'ugly', 2);
INSERT INTO public.planet VALUES (26, 600, NULL, 'Omzeild', 48, 'The most beautiful ever', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 100, 'penta', 10, 'bigg', 1, NULL);
INSERT INTO public.star VALUES (2, 200, 'Bin', 20, 'smallest', NULL, NULL);
INSERT INTO public.star VALUES (3, 300, 'Penti', 23, 'somehow-big', NULL, NULL);
INSERT INTO public.star VALUES (4, 400, 'Gin', 45, 'little bigger than Bin', NULL, NULL);
INSERT INTO public.star VALUES (5, 550, 'Cin', 34, 'ugly', NULL, NULL);
INSERT INTO public.star VALUES (6, 600, 'Omz', 48, 'The most beautiful ever', NULL, NULL);
INSERT INTO public.star VALUES (10, 200, 'Roh', 20, 'smallest', NULL, NULL);
INSERT INTO public.star VALUES (11, 300, 'Boh', 23, 'somehow-big', NULL, NULL);
INSERT INTO public.star VALUES (12, 400, 'Poh', 45, 'little bigger than Bin', NULL, NULL);
INSERT INTO public.star VALUES (13, 550, 'Coh', 34, 'ugly', NULL, NULL);
INSERT INTO public.star VALUES (14, 600, 'Omze', 48, 'The most beautiful ever', NULL, NULL);
INSERT INTO public.star VALUES (15, 200, 'Rohi', 20, 'smallest', NULL, NULL);
INSERT INTO public.star VALUES (16, 300, 'Bohi', 23, 'somehow-big', NULL, NULL);
INSERT INTO public.star VALUES (17, 400, 'Pohi', 45, 'little bigger than Bin', NULL, NULL);
INSERT INTO public.star VALUES (18, 550, 'Cohi', 34, 'ugly', NULL, NULL);
INSERT INTO public.star VALUES (19, 600, 'Omzei', 48, 'The most beautiful ever', NULL, NULL);
INSERT INTO public.star VALUES (20, 200, 'Rohil', 20, 'smallest', NULL, NULL);
INSERT INTO public.star VALUES (21, 300, 'Bohil', 23, 'somehow-big', NULL, NULL);
INSERT INTO public.star VALUES (22, 400, 'Pohil', 45, 'little bigger than Bin', NULL, NULL);
INSERT INTO public.star VALUES (23, 550, 'Cohil', 34, 'ugly', NULL, NULL);
INSERT INTO public.star VALUES (24, 600, 'Omzeil', 48, 'The most beautiful ever', NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 24, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_age_key UNIQUE (age);


--
-- Name: more_info more_info_colum_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_colum_key UNIQUE (colum);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

