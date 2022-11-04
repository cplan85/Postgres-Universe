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
-- Name: asteriod; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteriod (
    asteriod_id integer NOT NULL,
    name character varying(30) NOT NULL,
    discovery_year integer,
    diameter integer
);


ALTER TABLE public.asteriod OWNER TO freecodecamp;

--
-- Name: asteriod_asteriod_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteriod_asteriod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteriod_asteriod_id_seq OWNER TO freecodecamp;

--
-- Name: asteriod_asteriod_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteriod_asteriod_id_seq OWNED BY public.asteriod.asteriod_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    name_meaning text,
    constellation character varying(30),
    naked_eye_galaxy boolean
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
    name character varying(30) NOT NULL,
    planet_id integer,
    diameter_in_km integer,
    year_discovered integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass_relative_to_earth numeric,
    diameter_relative_to_earth numeric,
    distance_from_sun numeric,
    terresterial boolean,
    columnouter_planet boolean
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    bright_star boolean,
    mass_relative_to_sun numeric
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
-- Name: asteriod asteriod_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod ALTER COLUMN asteriod_id SET DEFAULT nextval('public.asteriod_asteriod_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteriod; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteriod VALUES (1, 'Amphitrite', 1854, NULL);
INSERT INTO public.asteriod VALUES (2, 'Camilla', 1868, 236);
INSERT INTO public.asteriod VALUES (3, 'Chiron', 1977, 180);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxy', 'This is a dual galaxy. It gets its name because it is said to look like a pair of insect antennae', NULL, false);
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'In mythology, Andromeda is the daughter of the kings of Ethiopia and is said to be more beautiful than the Nereids. She becomes queen of Greece when she marries Perseus', 'Andromeda', true);
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 'It seems to rotate in the opposite direction to what it should according to its shape.', 'Centaurus', false);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 'It looks like an eye with a dark stripe underneath.', 'Coma Berenices', false);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Named because it’s located in the Centaurus constellation', 'Centaurus', true);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 'Our own galaxy. It is said to look like a band of light', 'Sagittarius', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 3, 3476, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', 4, 8, 1877);
INSERT INTO public.moon VALUES (3, 'Phobos', 4, 560, 1877);
INSERT INTO public.moon VALUES (4, 'Adrastea', 5, 416, 1979);
INSERT INTO public.moon VALUES (5, 'Aitne', 5, 3, 2001);
INSERT INTO public.moon VALUES (6, 'Ananke', 5, 20, 1951);
INSERT INTO public.moon VALUES (7, 'Aoede', 5, 4, 2003);
INSERT INTO public.moon VALUES (8, 'Callisto', 5, 4800, 1610);
INSERT INTO public.moon VALUES (9, 'Carme', 5, 30, 1938);
INSERT INTO public.moon VALUES (10, 'Aegir', 6, 6, 2005);
INSERT INTO public.moon VALUES (11, 'Albiorix', 6, 30, 2000);
INSERT INTO public.moon VALUES (12, 'Anthe', 6, 1, 2004);
INSERT INTO public.moon VALUES (13, 'Atlas', 6, 999, 1980);
INSERT INTO public.moon VALUES (14, 'Bebhionn', 6, 6, 2005);
INSERT INTO public.moon VALUES (15, 'Ariel', 7, 1160, 1851);
INSERT INTO public.moon VALUES (16, 'Belinda', 7, 66, 1986);
INSERT INTO public.moon VALUES (17, 'Caliban', 7, 80, 1997);
INSERT INTO public.moon VALUES (18, 'Despina', 8, 160, 1989);
INSERT INTO public.moon VALUES (19, 'Galatea', 8, 140, 1989);
INSERT INTO public.moon VALUES (20, 'Charon', 10, 1207, 1978);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, 0, 0.39, true, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 1, 0.72, true, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 1, 1, true, false);
INSERT INTO public.planet VALUES (4, 'Mars', 0.11, 0.53, 1.52, true, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 317.89, 11.19, 5.20, false, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 95.15, 9.44, 9.54, false, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 14.54, 4.10, 19.2, false, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 17.23, 3.88, 30.06, false, true);
INSERT INTO public.planet VALUES (9, 'Ceres', 0.00016, 0.076, 2.76596, false, false);
INSERT INTO public.planet VALUES (10, 'Pluto', 0.0022, 0.186, 39.44, false, true);
INSERT INTO public.planet VALUES (11, 'Haumea', 0.0007, 0.13, 43.335, false, true);
INSERT INTO public.planet VALUES (12, 'Quaoar', 0.0003, 0.087, 5.20, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 6, true, 1);
INSERT INTO public.star VALUES (2, 'Ross 248', 1, false, 0.136);
INSERT INTO public.star VALUES (3, 'GX Andromedae', 1, false, 0.38);
INSERT INTO public.star VALUES (4, 'GQ Andromedae', 1, false, 0.15);


--
-- Name: asteriod_asteriod_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteriod_asteriod_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 35, true);


--
-- Name: asteriod asteriod_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod
    ADD CONSTRAINT asteriod_name_key UNIQUE (name);


--
-- Name: asteriod asteriod_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod
    ADD CONSTRAINT asteriod_pkey PRIMARY KEY (asteriod_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

