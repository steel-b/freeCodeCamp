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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_regular boolean,
    year_of_found integer,
    mass integer,
    distance_from_milky_way numeric
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    how_old_in_mil_years integer,
    mass integer,
    diameter_in_km numeric,
    planet_id integer
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    how_old_in_mil_years integer,
    mass integer,
    diameter_in_km numeric,
    star_id integer
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
-- Name: sputnik; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sputnik (
    sputnik_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    orbit_in_km numeric,
    planet_id integer
);


ALTER TABLE public.sputnik OWNER TO freecodecamp;

--
-- Name: sputnik_sputnik_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sputnik_sputnik_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sputnik_sputnik_id_seq OWNER TO freecodecamp;

--
-- Name: sputnik_sputnik_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sputnik_sputnik_id_seq OWNED BY public.sputnik.sputnik_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_red_gigant boolean,
    year_of_found integer,
    mass integer,
    diameter_in_km numeric,
    galaxy_id integer
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: sputnik sputnik_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sputnik ALTER COLUMN sputnik_id SET DEFAULT nextval('public.sputnik_sputnik_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, true, true, NULL, 2, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, false, true, NULL, 2, 152);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy', NULL, false, false, NULL, 160, 31000000);
INSERT INTO public.galaxy VALUES (4, 'Small Magellanic Cloud', NULL, false, true, NULL, 7, 18900);
INSERT INTO public.galaxy VALUES (5, 'Butterfly Galaxy', NULL, false, true, NULL, 0, 60000000);
INSERT INTO public.galaxy VALUES (6, 'Cartweel Galaxy', NULL, false, false, NULL, 4, 144300);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Moon2', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'Moon3', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'Moron', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Moton 2', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'Gon', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (7, 'Foon2', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (8, 'Foon3', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (9, 'Voron', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (10, 'NBton 2', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (11, 'SGon', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'GHon2', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, 'Poon3', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (14, '9Voron', NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, 'MNBton 2', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Soup', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Gnome', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Porn', NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (19, '9VoHn', NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (20, 'Oops', NULL, NULL, NULL, NULL, NULL, NULL, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, true, true, NULL, NULL, 12742, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, false, true, NULL, NULL, 12103, 1);
INSERT INTO public.planet VALUES (3, 'Pluto', NULL, false, true, NULL, NULL, 2377, 1);
INSERT INTO public.planet VALUES (4, 'Leda 2557', NULL, false, true, NULL, NULL, 258967, 2);
INSERT INTO public.planet VALUES (5, 'Aldebaran', NULL, false, true, NULL, NULL, 61000000, 3);
INSERT INTO public.planet VALUES (6, 'Achernar Prime', NULL, false, true, NULL, NULL, 2587412669, 4);
INSERT INTO public.planet VALUES (7, 'Anti Earth', NULL, true, true, NULL, NULL, 12742, 5);
INSERT INTO public.planet VALUES (8, 'Anti Venus', NULL, false, true, NULL, NULL, 12103, 5);
INSERT INTO public.planet VALUES (9, 'Anti Pluto', NULL, false, true, NULL, NULL, 2377, 5);
INSERT INTO public.planet VALUES (10, 'Strange Earth', NULL, true, true, NULL, NULL, 12742, 6);
INSERT INTO public.planet VALUES (11, 'Dirty Venus', NULL, false, true, NULL, NULL, 12103, 6);
INSERT INTO public.planet VALUES (12, 'Grand Pluto', NULL, true, true, NULL, NULL, 2377, 6);


--
-- Data for Name: sputnik; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sputnik VALUES (1, 'Mir', NULL, NULL, 1);
INSERT INTO public.sputnik VALUES (2, 'Apollo', NULL, NULL, 1);
INSERT INTO public.sputnik VALUES (3, '12577', NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, false, false, NULL, NULL, 1390000, 1);
INSERT INTO public.star VALUES (2, 'Andromeda Alpha', NULL, false, true, NULL, NULL, 1458795241, 2);
INSERT INTO public.star VALUES (3, 'Crab Nebula', NULL, false, false, NULL, NULL, 12357512, 3);
INSERT INTO public.star VALUES (4, 'Achernar', NULL, false, true, NULL, NULL, 847411226315, 4);
INSERT INTO public.star VALUES (5, 'Spider Globular', NULL, false, true, NULL, NULL, 1258745632589574, 5);
INSERT INTO public.star VALUES (6, 'Lagoon Nebula', NULL, false, false, NULL, NULL, 258963254, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: sputnik_sputnik_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sputnik_sputnik_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: sputnik sputnik_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sputnik
    ADD CONSTRAINT sputnik_pkey PRIMARY KEY (sputnik_id);


--
-- Name: sputnik sputnik_sputnik_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sputnik
    ADD CONSTRAINT sputnik_sputnik_id_key UNIQUE (sputnik_id);


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
-- Name: sputnik sputnik_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sputnik
    ADD CONSTRAINT sputnik_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

