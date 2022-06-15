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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    year_found integer NOT NULL,
    description text NOT NULL,
    size numeric NOT NULL,
    is_real boolean NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    year_found integer NOT NULL,
    description text NOT NULL,
    size numeric NOT NULL,
    is_real boolean NOT NULL
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
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    year_found integer NOT NULL,
    description text NOT NULL,
    size numeric NOT NULL,
    is_real boolean NOT NULL,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    year_found integer NOT NULL,
    description text NOT NULL,
    size numeric NOT NULL,
    is_real boolean NOT NULL,
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
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    year_found integer NOT NULL,
    description text NOT NULL,
    size numeric NOT NULL,
    is_real boolean NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'vittor', 1345345, 1444, 'mega huge', 3455.3, false);
INSERT INTO public.comet VALUES (2, 'yogle', 3445, 1943, 'mega sweet', 355.3, false);
INSERT INTO public.comet VALUES (3, 'shadd', 9083445, 1703, 'mega tight', 355.3, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 12323424, 2, 'the coolest galaxy', 2345.54, true);
INSERT INTO public.galaxy VALUES (2, 'snod', 323424, 1203, 'the furthest galaxy', 245.54, false);
INSERT INTO public.galaxy VALUES (3, 'kurr', 567453424, 1403, 'the weirdest galaxy', 14456.54, false);
INSERT INTO public.galaxy VALUES (5, 'ryst', 36211324, 2033, 'the lamest galaxy', 678456.54, false);
INSERT INTO public.galaxy VALUES (6, 'quolt', 9911324, 1033, 'the smartest galaxy', 8786.54, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 2343435, 0, 'the best moon', 2343.1, true, 1);
INSERT INTO public.moon VALUES (2, 'giu', 23435, 345, 'the red moon', 43.1, false, 2);
INSERT INTO public.moon VALUES (3, 'ugid', 6623435, 1225, 'the blue moon', 32343.1, false, 3);
INSERT INTO public.moon VALUES (4, 'druth', 1123435, 1925, 'the pink moon', 3243.3, false, 4);
INSERT INTO public.moon VALUES (5, 'hulo', 723432, 25, 'the big moon', 113243.3, false, 5);
INSERT INTO public.moon VALUES (6, 'oply', 52432, 2005, 'the cold moon', 1243.3, false, 1);
INSERT INTO public.moon VALUES (7, 'sdf', 52432, 2005, 'the cold moon', 1243.3, false, 2);
INSERT INTO public.moon VALUES (8, 'fothry', 52432, 2005, 'the cold moon', 1243.3, false, 3);
INSERT INTO public.moon VALUES (9, 'jumty', 52432, 2005, 'the cold moon', 1243.3, false, 4);
INSERT INTO public.moon VALUES (10, 'thuth', 52432, 2005, 'the cold moon', 1243.3, false, 5);
INSERT INTO public.moon VALUES (11, 'hetch', 52432, 2005, 'the cold moon', 1243.3, false, 1);
INSERT INTO public.moon VALUES (12, 'vultie', 52432, 2005, 'the cold moon', 1243.3, false, 4);
INSERT INTO public.moon VALUES (13, 'zippol', 52432, 2005, 'the cold moon', 1243.3, false, 1);
INSERT INTO public.moon VALUES (14, 'lallo', 52432, 2005, 'the cold moon', 1243.3, false, 2);
INSERT INTO public.moon VALUES (15, 'gitso', 52432, 2005, 'the cold moon', 1243.3, false, 3);
INSERT INTO public.moon VALUES (16, 'kliol', 52432, 2005, 'the cold moon', 1243.3, false, 1);
INSERT INTO public.moon VALUES (17, 'breewo', 52432, 2005, 'the cold moon', 1243.3, false, 2);
INSERT INTO public.moon VALUES (18, 'finly', 52432, 2005, 'the cold moon', 1243.3, false, 3);
INSERT INTO public.moon VALUES (19, 'doply', 52432, 2005, 'the cold moon', 1243.3, false, 4);
INSERT INTO public.moon VALUES (20, 'quipp', 52432, 2005, 'the cold moon', 1243.3, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 13239933, 0, 'the best planet', 2345.77, true, 1);
INSERT INTO public.planet VALUES (2, 'smooze', 23933, 109, 'the reddest planet', 12345.37, false, 2);
INSERT INTO public.planet VALUES (3, 'Enoll', 12323933, 1104, 'the bluest planet', 52345.37, false, 3);
INSERT INTO public.planet VALUES (4, 'Lomo', 33933, 1844, 'the greenest planet', 9235.37, false, 4);
INSERT INTO public.planet VALUES (5, 'Oxyl', 7633933, 1444, 'the pinkest planet', 19235.37, false, 5);
INSERT INTO public.planet VALUES (6, 'Luvy', 339213, 1649, 'the brownest planet', 319235.37, false, 6);
INSERT INTO public.planet VALUES (7, 'Yugio', 779213, 1392, 'the coldest planet', 19235.37, false, 1);
INSERT INTO public.planet VALUES (8, 'Hellonasty', 579213, 1792, 'the squarest planet', 925.37, false, 2);
INSERT INTO public.planet VALUES (9, 'klipscht', 23479213, 1992, 'the lamest planet', 43925.37, false, 2);
INSERT INTO public.planet VALUES (10, 'Farts', 78549213, 1485, 'the neatest planet', 6392.17, false, 4);
INSERT INTO public.planet VALUES (11, 'Skoob', 859213, 185, 'the baddest planet', 13492.17, false, 6);
INSERT INTO public.planet VALUES (12, 'Boxl', 1239213, 1785, 'the meanest planet', 1492.7, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 453245454, 0, 'the best star', 43514.44, true, 1);
INSERT INTO public.star VALUES (2, 'skeeze', 453454, 0, 'the smallest star', 414.44, true, 2);
INSERT INTO public.star VALUES (3, 'truyio', 455894, 2022, 'the furthest star', 3214.44, false, 3);
INSERT INTO public.star VALUES (4, 'opoi', 452214, 1022, 'the darkest star', 2214.44, false, 3);
INSERT INTO public.star VALUES (5, 'ivytro', 9987, 22, 'the brightest star', 67814.44, false, 3);
INSERT INTO public.star VALUES (6, 'obyha', 5673287, 1982, 'the dirtiest star', 92314.44, false, 6);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


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
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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

