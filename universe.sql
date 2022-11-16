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
-- Name: cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cluster (
    cluster_id integer NOT NULL,
    name character varying(50),
    description text,
    population integer,
    mass integer,
    humanity boolean,
    reachable boolean NOT NULL,
    price numeric NOT NULL
);


ALTER TABLE public.cluster OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cluster_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cluster_cluster_id_seq OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cluster_cluster_id_seq OWNED BY public.cluster.cluster_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    description text,
    cluster_id integer,
    population integer,
    mass integer,
    humanity boolean,
    reachable boolean NOT NULL,
    price numeric NOT NULL
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
    name character varying(50),
    planet_id integer,
    description text,
    population integer,
    mass integer,
    humanity boolean,
    reachable boolean NOT NULL,
    price numeric NOT NULL
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
    name character varying(50),
    star_id integer,
    description text,
    population integer,
    mass integer,
    humanity boolean,
    reachable boolean NOT NULL,
    price numeric NOT NULL
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
    name character varying(50),
    galaxy_id integer,
    description text,
    population integer,
    mass integer,
    humanity boolean,
    reachable boolean NOT NULL,
    price numeric NOT NULL
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
-- Name: cluster cluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster ALTER COLUMN cluster_id SET DEFAULT nextval('public.cluster_cluster_id_seq'::regclass);


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
-- Data for Name: cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cluster VALUES (1, 'Moon', 'something', 0, 30, false, true, 10);
INSERT INTO public.cluster VALUES (2, 'Krowa', 'cos', 0, 40, false, false, 20);
INSERT INTO public.cluster VALUES (3, 'Kon', 'cos', 0, 50, false, false, 30);
INSERT INTO public.cluster VALUES (4, 'Jaszczorka', 'jakas tam', 0, 10, false, false, 40);
INSERT INTO public.cluster VALUES (7, 'Moon', 'something', 0, 20, false, true, 50);
INSERT INTO public.cluster VALUES (8, 'Krowa', 'cos', 0, 60, false, false, 60);
INSERT INTO public.cluster VALUES (9, 'Kon', 'cos', 0, 70, false, false, 70);
INSERT INTO public.cluster VALUES (10, 'Jaszczorka', 'jakas tam', 0, 80, false, false, 80);
INSERT INTO public.cluster VALUES (11, 'Moon', 'something', 0, 120, false, true, 50);
INSERT INTO public.cluster VALUES (12, 'Krowa', 'cos', 0, 110, false, false, 60);
INSERT INTO public.cluster VALUES (13, 'Kon', 'cos', 0, 100, false, false, 70);
INSERT INTO public.cluster VALUES (14, 'Jaszczorka', 'jakas tam', 0, 90, false, false, 80);
INSERT INTO public.cluster VALUES (15, 'Moon', 'something', 0, 160, false, true, 50);
INSERT INTO public.cluster VALUES (16, 'Krowa', 'cos', 0, 150, false, false, 60);
INSERT INTO public.cluster VALUES (17, 'Kon', 'cos', 0, 140, false, false, 70);
INSERT INTO public.cluster VALUES (18, 'Jaszczorka', 'jakas tam', 0, 130, false, false, 80);
INSERT INTO public.cluster VALUES (19, 'Moon', 'something', 0, 200, false, true, 50);
INSERT INTO public.cluster VALUES (20, 'Krowa', 'cos', 0, 190, false, false, 60);
INSERT INTO public.cluster VALUES (21, 'Kon', 'cos', 0, 180, false, false, 70);
INSERT INTO public.cluster VALUES (22, 'Jaszczorka', 'jakas tam', 0, 170, false, false, 80);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Bla1', 'something', 1, 0, 10, false, false, 10);
INSERT INTO public.galaxy VALUES (2, 'Bla2', 'something', 2, 0, 20, false, false, 20);
INSERT INTO public.galaxy VALUES (3, 'Bla3', 'something', 3, 0, 30, false, false, 30);
INSERT INTO public.galaxy VALUES (4, 'Bla4', 'something', 4, 0, 40, false, false, 40);
INSERT INTO public.galaxy VALUES (5, 'Bla5', 'something', 5, 0, 50, false, false, 50);
INSERT INTO public.galaxy VALUES (6, 'Bla6', 'something', 6, 0, 60, false, false, 60);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Bla13', 1, 'something', 0, 1, false, false, 130);
INSERT INTO public.moon VALUES (4, 'Bla12', 2, 'something', 0, 2, false, false, 10);
INSERT INTO public.moon VALUES (5, 'Bla13', 1, 'something', 0, 3, false, false, 130);
INSERT INTO public.moon VALUES (6, 'Bla12', 2, 'something', 0, 4, false, false, 10);
INSERT INTO public.moon VALUES (7, 'Bla13', 1, 'something', 0, 5, false, false, 130);
INSERT INTO public.moon VALUES (8, 'Bla12', 2, 'something', 0, 6, false, false, 10);
INSERT INTO public.moon VALUES (9, 'Bla13', 1, 'something', 0, 7, false, false, 130);
INSERT INTO public.moon VALUES (10, 'Bla12', 2, 'something', 0, 8, false, false, 10);
INSERT INTO public.moon VALUES (11, 'Bla13', 1, 'something', 0, 9, false, false, 130);
INSERT INTO public.moon VALUES (12, 'Bla12', 2, 'something', 0, 10, false, false, 10);
INSERT INTO public.moon VALUES (13, 'Bla13', 1, 'something', 0, 11, false, false, 130);
INSERT INTO public.moon VALUES (14, 'Bla12', 2, 'something', 0, 12, false, false, 10);
INSERT INTO public.moon VALUES (15, 'Bla13', 1, 'something', 0, 13, false, false, 130);
INSERT INTO public.moon VALUES (16, 'Bla12', 2, 'something', 0, 14, false, false, 10);
INSERT INTO public.moon VALUES (17, 'Bla13', 1, 'something', 0, 15, false, false, 130);
INSERT INTO public.moon VALUES (18, 'Bla12', 2, 'something', 0, 16, false, false, 10);
INSERT INTO public.moon VALUES (19, 'Bla13', 1, 'something', 0, 17, false, false, 130);
INSERT INTO public.moon VALUES (20, 'Bla12', 2, 'something', 0, 18, false, false, 10);
INSERT INTO public.moon VALUES (21, 'Bla13', 1, 'something', 0, 19, false, false, 130);
INSERT INTO public.moon VALUES (22, 'Bla12', 2, 'something', 0, 20, false, false, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Bla1', 1, 'something', 0, 10, false, false, 10);
INSERT INTO public.planet VALUES (2, 'Bla2', 2, 'something', 0, 20, false, false, 10);
INSERT INTO public.planet VALUES (3, 'Bla3', 3, 'something', 0, 30, true, false, 30);
INSERT INTO public.planet VALUES (4, 'Bla4', 4, 'something', 0, 40, false, true, 40);
INSERT INTO public.planet VALUES (7, 'Bla7', 1, 'something', 0, 70, true, false, 70);
INSERT INTO public.planet VALUES (8, 'Bla6', 6, 'something', 0, 60, false, true, 60);
INSERT INTO public.planet VALUES (9, 'Bla9', 3, 'something', 0, 90, true, true, 90);
INSERT INTO public.planet VALUES (10, 'Bla8', 2, 'something', 0, 80, true, false, 80);
INSERT INTO public.planet VALUES (11, 'Bla10', 5, 'something', 0, 100, true, true, 100);
INSERT INTO public.planet VALUES (12, 'Bla11', 4, 'something', 0, 120, true, false, 110);
INSERT INTO public.planet VALUES (16, 'Bla13', 1, 'something', 0, 130, false, false, 130);
INSERT INTO public.planet VALUES (17, 'Bla12', 6, 'something', 0, 150, false, false, 120);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Bla6', 6, 'something', 0, 60, false, false, 60);
INSERT INTO public.star VALUES (2, 'Bla5', 5, 'something', 0, 50, false, false, 50);
INSERT INTO public.star VALUES (3, 'Bla4', 4, 'something', 0, 40, false, false, 40);
INSERT INTO public.star VALUES (4, 'Bla3', 3, 'something', 0, 30, false, false, 30);
INSERT INTO public.star VALUES (5, 'Bla2', 2, 'something', 0, 20, false, false, 20);
INSERT INTO public.star VALUES (6, 'Bla1', 1, 'something', 0, 10, false, false, 10);


--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cluster_cluster_id_seq', 22, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cluster cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_pkey PRIMARY KEY (cluster_id);


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
-- Name: cluster unique_mass; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT unique_mass UNIQUE (mass);


--
-- Name: galaxy unique_massgalaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_massgalaxy UNIQUE (mass);


--
-- Name: moon unique_massmoon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_massmoon UNIQUE (mass);


--
-- Name: planet unique_massplanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_massplanet UNIQUE (mass);


--
-- Name: star unique_massstar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_massstar UNIQUE (mass);


--
-- Name: moon moon_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

