--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: faction; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.faction (
    faction_id integer NOT NULL,
    name character varying NOT NULL,
    description text
);


ALTER TABLE public.faction OWNER TO freecodecamp;

--
-- Name: faction_faction_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.faction_faction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faction_faction_id_seq OWNER TO freecodecamp;

--
-- Name: faction_faction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.faction_faction_id_seq OWNED BY public.faction.faction_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer
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
    name character varying NOT NULL,
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
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
    name character varying NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric,
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
    name character varying NOT NULL,
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
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
-- Name: faction faction_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.faction ALTER COLUMN faction_id SET DEFAULT nextval('public.faction_faction_id_seq'::regclass);


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
-- Data for Name: faction; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.faction VALUES (1, 'Avengers', 'Earths Mightiest Heroes');
INSERT INTO public.faction VALUES (2, 'Justice League', 'The Worlds Greatest Super Heroes');
INSERT INTO public.faction VALUES (3, 'Guardians of the Galaxy', 'Intergalactic outlaws and heroes');
INSERT INTO public.faction VALUES (4, 'Green Lanterns Corp', 'Intergalactic law enforcement agency');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', true, 13600);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'Satellite of the Milky Way', false, 2400);
INSERT INTO public.galaxy VALUES (3, 'Shi''ar Galaxy', 'Home to the Shi''ar Empire', true, 10000);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 'Barred spiral galaxy', false, 10000);
INSERT INTO public.galaxy VALUES (5, 'Cigar Galaxy', 'A starburst galaxy', false, 13300);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Face-on spiral galaxy', false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earths moon', true, 4500, 0, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars moon 1', false, 4500, 78.3, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars moon 2', false, 4500, 78.3, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter moon 1', true, 4500, 628.7, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter moon 2', true, 4500, 628.7, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiter moon 3', true, 4500, 628.7, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter moon 4', true, 4500, 628.7, 3);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'Jupiter moon 5', false, 4500, 628.7, 3);
INSERT INTO public.moon VALUES (9, 'Himalia', 'Jupiter moon 6', false, 4500, 628.7, 3);
INSERT INTO public.moon VALUES (10, 'Elara', 'Jupiter moon 7', false, 4500, 628.7, 3);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 'Jupiter moon 8', false, 4500, 628.7, 3);
INSERT INTO public.moon VALUES (12, 'Titan', 'Thanos destroyed homeworld', true, 4500, 1275.0, 4);
INSERT INTO public.moon VALUES (13, 'Enceladus', 'Saturn moon 2', true, 4500, 1275.0, 4);
INSERT INTO public.moon VALUES (14, 'Mimas', 'Saturn moon 3', true, 4500, 1275.0, 4);
INSERT INTO public.moon VALUES (15, 'Dione', 'Saturn moon 4', true, 4500, 1275.0, 4);
INSERT INTO public.moon VALUES (16, 'Rhea', 'Saturn moon 5', true, 4500, 1275.0, 4);
INSERT INTO public.moon VALUES (17, 'Iapetus', 'Saturn moon 6', true, 4500, 1275.0, 4);
INSERT INTO public.moon VALUES (18, 'Tethys', 'Saturn moon 7', true, 4500, 1275.0, 4);
INSERT INTO public.moon VALUES (19, 'Hyperion', 'Saturn moon 8', false, 4500, 1275.0, 4);
INSERT INTO public.moon VALUES (20, 'Phoebe', 'Saturn moon 9', false, 4500, 1275.0, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Home', true, 0, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Red planet', false, 78.3, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Largest planet', false, 628.7, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Ringed planet', false, 1275.0, 1);
INSERT INTO public.planet VALUES (5, 'Krypton', 'Birthplace of Superman', false, 27.1, 4);
INSERT INTO public.planet VALUES (6, 'Xandar', 'Nova Corps headquarters', true, 2500.0, 6);
INSERT INTO public.planet VALUES (7, 'Sakaar', 'Trash planet ruled by Grandmaster', true, 850.5, 2);
INSERT INTO public.planet VALUES (8, 'Vormir', 'Location of the Soul Stone', false, 1200.0, 2);
INSERT INTO public.planet VALUES (9, 'Mogo', 'Mogo doesnt socialize', true, 1500.0, 6);
INSERT INTO public.planet VALUES (10, 'Ego', 'The Living Planet', true, 4500.0, 6);
INSERT INTO public.planet VALUES (11, 'Apokolips', 'Ruled by Darkseid', true, 9999.9, 4);
INSERT INTO public.planet VALUES (12, 'Neptune', 'Ice giant in the solar system', false, 4350.0, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Center of Solar System', true, 4500, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Brightest star in night sky', true, 300, 1);
INSERT INTO public.star VALUES (3, 'Polaris', 'North star', true, 3000, 1);
INSERT INTO public.star VALUES (4, 'Rao', 'Kryptons red dwarf star', true, 8000, 1);
INSERT INTO public.star VALUES (5, 'Nidavellir', 'Neutron star forge from Avengers Infinity War', true, 5000, 1);
INSERT INTO public.star VALUES (6, 'Centauri', 'Xandarian star system from Guardians of the Galaxy', true, 6000, 4);


--
-- Name: faction_faction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.faction_faction_id_seq', 4, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: faction faction_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.faction
    ADD CONSTRAINT faction_name_key UNIQUE (name);


--
-- Name: faction faction_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.faction
    ADD CONSTRAINT faction_pkey PRIMARY KEY (faction_id);


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

