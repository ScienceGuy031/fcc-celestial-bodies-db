--
-- PostgreSQL database dump
--

-- Dumped from database version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)

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
-- Name: artificial_satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.artificial_satellite (
    artificial_satellite_id integer NOT NULL,
    name character varying(50) NOT NULL,
    launched_by text,
    distance_from_earth_in_km numeric,
    launched_in integer,
    has_life boolean,
    visible_by_eye boolean,
    planet_id integer
);


ALTER TABLE public.artificial_satellite OWNER TO freecodecamp;

--
-- Name: artificial_sattelite_artificial_sattelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.artificial_sattelite_artificial_sattelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artificial_sattelite_artificial_sattelite_id_seq OWNER TO freecodecamp;

--
-- Name: artificial_sattelite_artificial_sattelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.artificial_sattelite_artificial_sattelite_id_seq OWNED BY public.artificial_satellite.artificial_satellite_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    type text,
    distance_from_earth_in_ly numeric,
    age_in_millions_of_years numeric,
    discovered_in integer,
    has_life boolean,
    visible_by_eye boolean,
    name character varying(50) NOT NULL,
    ngc integer NOT NULL
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
    status text,
    distance_from_earth_in_ly numeric,
    age_in_millions_of_years numeric,
    discovered_in integer,
    has_life boolean,
    visible_by_eye boolean,
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
    status text,
    distance_from_earth_in_ly numeric,
    age_in_millions_of_years numeric,
    discovered_in integer,
    has_life boolean,
    visible_by_eye boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    hd integer NOT NULL,
    name character varying(50) NOT NULL,
    spectral_type text,
    distance_from_earth_in_ly numeric,
    age_in_millions_of_years numeric,
    discovered_in integer,
    has_life boolean,
    visible_by_eye boolean,
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
-- Name: artificial_satellite artificial_satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite ALTER COLUMN artificial_satellite_id SET DEFAULT nextval('public.artificial_sattelite_artificial_sattelite_id_seq'::regclass);


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
-- Data for Name: artificial_satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.artificial_satellite VALUES (1, 'Hubble Space Telescope', 'NASA', 515, 1990, false, true, 3);
INSERT INTO public.artificial_satellite VALUES (2, 'EOS SAT-1', 'SpaceX', 525, 2023, false, false, 3);
INSERT INTO public.artificial_satellite VALUES (3, 'Sentinel-1', 'ESA', 693, 2014, false, false, 3);
INSERT INTO public.artificial_satellite VALUES (4, 'Sentinel-2A', 'ESA', 786, 2015, false, false, 3);
INSERT INTO public.artificial_satellite VALUES (5, 'Sentinel-2B', 'ESA', 786, 2017, false, false, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'SABbc', 211000000, NULL, 1860, false, false, 'NGC 1', 1);
INSERT INTO public.galaxy VALUES (4, 'SA(s)cd', 2723000, 79, 1764, false, true, 'Triangulum Galaxy', 598);
INSERT INTO public.galaxy VALUES (6, 'SB(s)m', 163000, 1101, 1519, false, true, 'Large Magellanic Cloud', 9999999);
INSERT INTO public.galaxy VALUES (1, 'Sbc', 0, 13800, 1610, true, true, 'Milky Way', 0);
INSERT INTO public.galaxy VALUES (3, 'SA(s)b', 2510000, 10010, 964, false, true, 'Andromeda Galaxy', 224);
INSERT INTO public.galaxy VALUES (7, 'SA(s)cd', 45240000, NULL, 1885, false, true, 'NGC 1337', 1337);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon, Luna', 'confirmed', 0.00000004063, 4503, NULL, false, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'confirmed', 0.0000082224, 4503, 1877, false, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'confirmed', 0.0000082224, 4503, 1877, false, false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'confirmed', 0.000066411, 4503, 1610, false, false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'confirmed', 0.000066411, 4503, 1610, false, false, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'confirmed', 0.000066411, 4503, 1610, false, false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'confirmed', 0.000066411, 4503, 1610, false, false, 5);
INSERT INTO public.moon VALUES (8, 'Metis', 'confirmed', 0.000066411, 4503, 1979, false, false, 5);
INSERT INTO public.moon VALUES (9, 'Adrastea', 'confirmed', 0.000066411, 4503, 1979, false, false, 5);
INSERT INTO public.moon VALUES (10, 'Amalthea', 'confirmed', 0.000066411, 4503, 1892, false, false, 5);
INSERT INTO public.moon VALUES (11, 'Thebe', 'confirmed', 0.000066411, 4503, 1979, false, false, 5);
INSERT INTO public.moon VALUES (12, 'Leda', 'confirmed', 0.000066411, 4503, 1974, false, false, 5);
INSERT INTO public.moon VALUES (13, 'Ersa', 'confirmed', 0.000066411, 4503, 2018, false, false, 5);
INSERT INTO public.moon VALUES (14, 'Himalia', 'confirmed', 0.000066411, 4503, 1904, false, false, 5);
INSERT INTO public.moon VALUES (15, 'Pandia', 'confirmed', 0.000066411, 4503, 2017, false, false, 5);
INSERT INTO public.moon VALUES (16, 'Lysithea', 'confirmed', 0.000066411, 4503, 1938, false, false, 5);
INSERT INTO public.moon VALUES (17, 'Elara', 'confirmed', 0.000066411, 4503, 1905, false, false, 5);
INSERT INTO public.moon VALUES (18, 'Dia', 'confirmed', 0.000066411, 4503, 2000, false, false, 5);
INSERT INTO public.moon VALUES (19, 'Carpo', 'confirmed', 0.000066411, 4503, 2003, false, false, 5);
INSERT INTO public.moon VALUES (20, 'Euporie', 'confirmed', 0.000066411, 4503, 2001, false, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'confirmed', 0.000009125, 4503, -3000, false, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'confirmed', 0.00002638, 4503, -1830, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth, Terra, Gaia', 'confirmed', 0, 4543, NULL, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'confirmed', 0.000023783, 4603, -1534, false, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'confirmed', 0.00007547, 4603, -700, false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'confirmed', 0.00016484, 4503, -550, false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'confirmed', 0.0003171, 4503, 1781, false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'confirmed', 0.0004757, 4503, 1846, false, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'dwarf-planet', 0.0005545, 4503, 1930, false, false, 1);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri Ab (C1)', 'candidate', NULL, NULL, 2021, false, false, 2);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri Bc', 'candidate', NULL, NULL, 2013, false, false, 3);
INSERT INTO public.planet VALUES (12, 'Eris', 'dwarf-planet', 0.001528, 4503, 2005, false, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 0, 'Sol', 'G2V', 0.00001581, 4600, 1930, true, true, 1);
INSERT INTO public.star VALUES (2, 128620, 'Alpha Centauri A, Rigil Kentaurus', 'G2V', 4.344, 5000, 1689, false, true, 1);
INSERT INTO public.star VALUES (3, 128621, 'Alpha Centauri B, Toliman', 'K1V', 4.344, 5000, 1689, false, true, 1);
INSERT INTO public.star VALUES (4, 48915, 'Alpha Canis Majoris, Sirius A', 'A0mA1 Va', 8.709, 230, 1844, false, true, 1);
INSERT INTO public.star VALUES (5, 39801, 'Betelgeuse', 'M1-M2 la-ab', 642.5, 10.01, 1836, false, true, 1);
INSERT INTO public.star VALUES (6, 124897, 'Alpha Boötis, Arcturus', 'K1.5 III Fe-0.5', 36.7, 7105, 1635, false, true, 1);
INSERT INTO public.star VALUES (7, 87901, 'Alpha Leonis A, Regulus A', 'B8 IVn', 79.02, 1000, -3000, false, true, 1);


--
-- Name: artificial_sattelite_artificial_sattelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.artificial_sattelite_artificial_sattelite_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 48, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: artificial_satellite artificial_satellite_artificial_satellite_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite
    ADD CONSTRAINT artificial_satellite_artificial_satellite_id_key UNIQUE (artificial_satellite_id);


--
-- Name: artificial_satellite artificial_sattelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite
    ADD CONSTRAINT artificial_sattelite_pkey PRIMARY KEY (artificial_satellite_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: artificial_satellite fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

