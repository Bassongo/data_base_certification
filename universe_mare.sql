git push -u origin main--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: countries; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.countries (
    countries_id integer NOT NULL,
    name character varying(200),
    high integer NOT NULL
);


ALTER TABLE public.countries OWNER TO freecodecamp;

--
-- Name: countries_countries_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.countries_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_countries_id_seq OWNER TO freecodecamp;

--
-- Name: countries_countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.countries_countries_id_seq OWNED BY public.countries.countries_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(240),
    intg1 integer NOT NULL,
    intg2 integer NOT NULL,
    numericag numeric(4,3),
    textg text,
    booleang1 boolean DEFAULT false,
    booleang2 boolean DEFAULT true
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
    name character varying(250),
    intm1 integer NOT NULL,
    intm2 integer,
    numericam numeric(4,3),
    textm text,
    booleanm1 boolean DEFAULT false,
    booleanm2 boolean DEFAULT false,
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
    name character varying(200),
    intp1 integer,
    intp2 integer NOT NULL,
    numericap numeric(4,3),
    textp text,
    booleanp1 boolean DEFAULT true,
    booleanp2 boolean DEFAULT true,
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
    name character varying(240),
    ints1 integer,
    ints2 integer NOT NULL,
    numericas numeric(4,3),
    texts text,
    booleans1 boolean DEFAULT true,
    booleans2 boolean DEFAULT false,
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
-- Name: countries countries_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.countries ALTER COLUMN countries_id SET DEFAULT nextval('public.countries_countries_id_seq'::regclass);


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
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.countries VALUES (1, 'burkina', 1);
INSERT INTO public.countries VALUES (2, 'mali', 2);
INSERT INTO public.countries VALUES (3, 'niger', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'awa', 7, 1, 1.371, 'gueye', false, true);
INSERT INTO public.galaxy VALUES (2, 'soumaya', 36, 2, 2.362, 'wade', false, true);
INSERT INTO public.galaxy VALUES (3, 'omar', 35, 3, 3.353, 'sakho', false, true);
INSERT INTO public.galaxy VALUES (4, 'emanuel', 34, 4, 4.344, 'dossekou', false, true);
INSERT INTO public.galaxy VALUES (5, 'mouhamoudou', 33, 5, 5.335, 'dia', false, true);
INSERT INTO public.galaxy VALUES (6, 'moustapha', 32, 6, 6.326, 'sarr', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'poko11', 1, 37, 2.137, 'noba11', false, false, 2);
INSERT INTO public.moon VALUES (2, 'poko12', 1, 37, 2.137, 'noba12', false, false, 2);
INSERT INTO public.moon VALUES (3, 'mariane11', 1, 37, 2.137, 'daiferle11', false, false, 3);
INSERT INTO public.moon VALUES (5, 'mariane12', 1, 37, 2.137, 'daiferle12', false, false, 3);
INSERT INTO public.moon VALUES (6, 'naba11', 1, 37, 2.137, 'toure11', false, false, 4);
INSERT INTO public.moon VALUES (7, 'naba12', 1, 37, 2.137, 'toure12', false, false, 4);
INSERT INTO public.moon VALUES (8, 'abdou11', 1, 37, 2.137, 'bah11', false, false, 5);
INSERT INTO public.moon VALUES (9, 'abdou12', 1, 37, 2.137, 'bah12', false, false, 5);
INSERT INTO public.moon VALUES (10, 'saer11', 1, 37, 2.137, 'ndao11', false, false, 6);
INSERT INTO public.moon VALUES (11, 'saer12', 1, 37, 2.137, 'ndao12', false, false, 6);
INSERT INTO public.moon VALUES (13, 'poko21', 1, 37, 2.137, 'noba21', false, false, 7);
INSERT INTO public.moon VALUES (14, 'poko22', 1, 37, 2.137, 'noba22', false, false, 7);
INSERT INTO public.moon VALUES (15, 'mariane21', 1, 37, 2.137, 'daiferle21', false, false, 8);
INSERT INTO public.moon VALUES (16, 'mariane22', 1, 37, 2.137, 'daiferle22', false, false, 8);
INSERT INTO public.moon VALUES (17, 'naba21', 1, 37, 2.137, 'toure21', false, false, 9);
INSERT INTO public.moon VALUES (18, 'naba22', 1, 37, 2.137, 'toure22', false, false, 10);
INSERT INTO public.moon VALUES (19, 'abdou21', 1, 37, 2.137, 'bah21', false, false, 9);
INSERT INTO public.moon VALUES (20, 'abdou22', 1, 37, 2.137, 'bah22', false, false, 10);
INSERT INTO public.moon VALUES (21, 'saer21', 1, 37, 2.137, 'ndao21', false, false, 11);
INSERT INTO public.moon VALUES (22, 'saer22', 1, 37, 2.137, 'ndao22', false, false, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'poko1', 1, 37, 2.137, 'noba', true, true, 1);
INSERT INTO public.planet VALUES (3, 'poko2', 1, 37, 2.137, 'noba2', true, true, 1);
INSERT INTO public.planet VALUES (4, 'mariane1', 1, 37, 2.137, 'daiferle1', true, true, 2);
INSERT INTO public.planet VALUES (5, 'mariane2', 1, 37, 2.137, 'daiferle2', true, true, 2);
INSERT INTO public.planet VALUES (6, 'naba1', 1, 37, 2.137, 'toure1', true, true, 2);
INSERT INTO public.planet VALUES (7, 'naba2', 1, 37, 2.137, 'toure2', true, true, 2);
INSERT INTO public.planet VALUES (8, 'david1', 1, 37, 2.137, 'zonde1', true, true, 3);
INSERT INTO public.planet VALUES (9, 'david2', 1, 37, 2.137, 'zonde2', true, true, 3);
INSERT INTO public.planet VALUES (10, 'abdou1', 1, 37, 2.137, 'bah1', true, true, 4);
INSERT INTO public.planet VALUES (11, 'abdou2', 1, 37, 2.137, 'bah2', true, true, 4);
INSERT INTO public.planet VALUES (12, 'saer1', 1, 37, 2.137, 'ndao1', true, true, 5);
INSERT INTO public.planet VALUES (13, 'saer2', 1, 37, 2.137, 'ndao2', true, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'poko', 1, 37, 2.137, 'noba', true, false, 1);
INSERT INTO public.star VALUES (2, 'mariane', 2, 36, 2.236, 'daiferle', true, false, 2);
INSERT INTO public.star VALUES (3, 'naba', 3, 35, 2.335, 'toure', true, false, 3);
INSERT INTO public.star VALUES (4, 'david', 4, 34, 2.434, 'zonde', true, false, 4);
INSERT INTO public.star VALUES (5, 'abdou', 5, 33, 2.533, 'bah', true, false, 5);
INSERT INTO public.star VALUES (6, 'saer', 6, 32, 2.632, 'Ndao', true, false, 6);


--
-- Name: countries_countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.countries_countries_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: countries countries_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_name_key UNIQUE (name);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (countries_id);


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
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


