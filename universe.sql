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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_million_years integer,
    can_be_seen_from_earth boolean
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
    description text,
    age_in_million_years integer,
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
    name character varying(30) NOT NULL,
    description text,
    age_in_million_years integer,
    capable_of_life boolean,
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
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    is_visable_to_humans boolean,
    magnitude numeric,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Ursa Major', NULL);
INSERT INTO public.constellation VALUES (2, 'Aries', NULL);
INSERT INTO public.constellation VALUES (3, 'Aquarius', NULL);
INSERT INTO public.constellation VALUES (4, 'Canis Major', NULL);
INSERT INTO public.constellation VALUES (5, 'Orion', NULL);
INSERT INTO public.constellation VALUES (6, 'Leo', NULL);
INSERT INTO public.constellation VALUES (7, 'Aquila', NULL);
INSERT INTO public.constellation VALUES (8, 'Sagittaius', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 'Home of earth', 13600, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Barred spiral galaxy, nearest major to earth', 10010, true);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Cigar Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Fireworks Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Comet Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Tadpole Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'Cartwheel Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'Black Eye Galaxy', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Apla moon', 'Super Cool Star for Alphas only', NULL, 5);
INSERT INTO public.moon VALUES (2, 'Random moon', 'RAAANDOM', NULL, 7);
INSERT INTO public.moon VALUES (3, 'Earth Moon', 'Moon Landing was staged yo', NULL, 3);
INSERT INTO public.moon VALUES (4, 'Saturn moon', 'Super Cool Star for Saturn only', NULL, 10);
INSERT INTO public.moon VALUES (5, 'Upselon moon', 'Upselon? more like upset u looonnn', NULL, 8);
INSERT INTO public.moon VALUES (6, 'Venus Moon', 'Venus has moons?', NULL, 2);
INSERT INTO public.moon VALUES (7, 'Saturn moon 2', 'Super Cool Saturn', NULL, 10);
INSERT INTO public.moon VALUES (8, 'Upselon moon 2', 'Upselon? what', NULL, 8);
INSERT INTO public.moon VALUES (9, 'Venus Moon 2', 'Venus has moons?', NULL, 2);
INSERT INTO public.moon VALUES (10, 'Beta Moon', 'idk man', NULL, 6);
INSERT INTO public.moon VALUES (11, 'Mercury Moon', 'Mercuryyyy', NULL, 1);
INSERT INTO public.moon VALUES (12, 'Mars Moon', 'Mars bar', NULL, 4);
INSERT INTO public.moon VALUES (13, 'Jupiter Moon', 'Girls Come here', NULL, 9);
INSERT INTO public.moon VALUES (14, 'Beta Moon 2', 'idk man', NULL, 6);
INSERT INTO public.moon VALUES (15, 'Mercury Moon 2', 'Mercuryyyy', NULL, 1);
INSERT INTO public.moon VALUES (16, 'Mars Moon 2', 'Mars bar', NULL, 4);
INSERT INTO public.moon VALUES (17, 'Jupiter Moon 2', 'Girls Come here', NULL, 9);
INSERT INTO public.moon VALUES (18, 'Best Moon Ever', '1st best', NULL, 13);
INSERT INTO public.moon VALUES (19, 'Too Best Too Furious', '2nd best', NULL, 13);
INSERT INTO public.moon VALUES (20, 'Best Of Us Moon', '3rd Best', NULL, 13);
INSERT INTO public.moon VALUES (21, 'Girls Gone Mild Moon', 'The Best', NULL, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 'Alpha Androm Planet', NULL, 432, false, 1);
INSERT INTO public.planet VALUES (6, 'Beta Androm Planet', NULL, 432, false, 2);
INSERT INTO public.planet VALUES (8, 'Upselon Planet', NULL, 432, true, 3);
INSERT INTO public.planet VALUES (7, 'Random Planet', NULL, 432, true, 5);
INSERT INTO public.planet VALUES (1, 'Mercury', 'Milkeyway planet', 1234, false, 6);
INSERT INTO public.planet VALUES (2, 'Venus', 'Milkeyway planet', 1234, false, 6);
INSERT INTO public.planet VALUES (3, 'Earth', 'Milkeyway planet', 1234, true, 6);
INSERT INTO public.planet VALUES (4, 'Mars', 'Milkeyway planet', 1234, true, 6);
INSERT INTO public.planet VALUES (9, 'Jupiter', 'Milkeyway planet', 1234, false, 6);
INSERT INTO public.planet VALUES (10, 'Saturn', 'Milkeyway planet', 1234, false, 6);
INSERT INTO public.planet VALUES (11, 'Uranus', 'Milkeyway planet', 1234, false, 6);
INSERT INTO public.planet VALUES (12, 'Neptune', 'Milkeyway planet', 1234, false, 6);
INSERT INTO public.planet VALUES (13, 'Best Planet Ever', NULL, NULL, NULL, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'BetaAndromedae', NULL, NULL, 2.05, 2);
INSERT INTO public.star VALUES (3, 'Upselon Andromedae', NULL, true, NULL, 2);
INSERT INTO public.star VALUES (5, 'Random Star', NULL, false, NULL, 3);
INSERT INTO public.star VALUES (1, 'Alpha Andromedae', 123, NULL, 1.48, 2);
INSERT INTO public.star VALUES (4, 'Delta Andromedae', 567, false, NULL, 2);
INSERT INTO public.star VALUES (6, 'Random Milky Star', 100, false, NULL, 1);
INSERT INTO public.star VALUES (7, 'Best Galaxy Ever', NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (8, 'Not Best Galaxy Ever', NULL, NULL, NULL, 5);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 8, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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

