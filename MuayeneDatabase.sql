--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.0

-- Started on 2023-01-11 22:00:14

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
-- TOC entry 214 (class 1259 OID 16484)
-- Name: Hastalar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Hastalar" (
    "HastaTCNo" double precision NOT NULL,
    "HastaIsim" character varying NOT NULL,
    "HastaDogumYeri" character varying NOT NULL,
    "HastaAdres" text NOT NULL,
    "HastaTelNo" text,
    "HastaMedeniDurum" character varying NOT NULL,
    "HastaDogumGunu" date NOT NULL
);


ALTER TABLE public."Hastalar" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16494)
-- Name: Ilaclar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ilaclar" (
    "IlacBarkodNo" double precision NOT NULL,
    "IlacIsim" character varying NOT NULL,
    "IlacTipi" character varying NOT NULL
);


ALTER TABLE public."Ilaclar" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16530)
-- Name: Muayeneler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Muayeneler" (
    "HastaTCNo" double precision NOT NULL,
    "MuayeneTarihi" date NOT NULL,
    "HastaIsim" character varying NOT NULL,
    "HastaDogumTarihi" date NOT NULL,
    "HastaBulgular" text NOT NULL,
    "HastaTeshis" text NOT NULL,
    "HastaTedavi" text NOT NULL
);


ALTER TABLE public."Muayeneler" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16533)
-- Name: Receteler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Receteler" (
    "HastaTCNo" double precision NOT NULL,
    "MuayeneTarihi" date NOT NULL,
    "HastaSikayet" text NOT NULL,
    "HastaTani" text NOT NULL,
    "HastaTedavi" text NOT NULL,
    "HastaReceteNo" text NOT NULL
);


ALTER TABLE public."Receteler" OWNER TO postgres;

--
-- TOC entry 3334 (class 0 OID 16484)
-- Dependencies: 214
-- Data for Name: Hastalar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Hastalar" ("HastaTCNo", "HastaIsim", "HastaDogumYeri", "HastaAdres", "HastaTelNo", "HastaMedeniDurum", "HastaDogumGunu") FROM stdin;
13446480268	Almala Pınar İŞTAR	İstanbul	Balikçil,21, 46300, Elbistan/ Kahramanmaraş, Türkiye	+90 (961) 380 61 97	Evli	1992-06-10
18780266738	Berker GÜZEL	Konya	Yayla Evleri,35, 14850, Mengen/ Bolu, Türkiye	+90 (423) 981 59 19	Bekar	1995-10-22
29992174766	Eliz ÇÖREKCİOĞLU	Antalya	Balikçil,17, 46300, Elbistan/ Kahramanmaraş, Türkiye	+90 (452) 376 50 75	Bekar	2004-03-15
38368079284	Burhanettin YALINKILIÇ	Edirne	Köy,29, 49250, Merkez/ Muş, Türkiye	+90 (818) 627 54 01	Evli	1996-10-29
38870036522	Ayşe Fulya ERDEMİR	Hatay	Boynu Kiran,18, 28522, Güce/ Giresun, Türkiye	+90 (149) 134 75 61	Evli	2000-07-30
92193539900	Turgut ÇOŞKUN	Aksaray	Karasakal,30, 69000, Merkez/ Bayburt, Türkiye	+90 (522) 732 24 61	Bekar	2005-12-31
53755164220	Utku KEŞANLI	İzmir	Sepetlipinar Sb,20, 41090, Başiskele/ Kocaeli, Türkiye	+90 (507) 189 14 08	Bekar	2002-04-26
76635002290	Mehmet Fatih GEDÜK	Gaziantep	Dorumlar,23, 7500, Serik/ Antalya, Türkiye	+90 (754) 496 88 77	Bekar	2000-01-01
53784757332	Müberra İLGEN	Muş	Bengiler,7, 35485, Seferihisar/ İzmir, Türkiye	+90 (192) 600 24 87	Evli	1990-06-02
44721711760	Ilgın ÇIPLAK	Uşak	Doğanli,19, 13002, Merkez/ Bitlis, Türkiye	+90 (839) 966 48 77	Bekar	2002-05-23
\.


--
-- TOC entry 3335 (class 0 OID 16494)
-- Dependencies: 215
-- Data for Name: Ilaclar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Ilaclar" ("IlacBarkodNo", "IlacIsim", "IlacTipi") FROM stdin;
3815874861638	Abatarotene	Hap
9969116465342	Halcibinol	Ampul
6589265227141	Alsuvirenz	Hap
7423579123146	Alvibital	Şurup
8516828021417	Methoprine Prepaprodol	Tablet
9933002066785	Kanulimus Baclinum	Hap
8765378383426	Megenem Exudazole	Tablet
3232030689466	Estronosine Entrarabine	Şurup
1689102666203	Lacodenu	Ampul
3692346349011	funturrrmanto\n	Şurup\n
\.


--
-- TOC entry 3336 (class 0 OID 16530)
-- Dependencies: 216
-- Data for Name: Muayeneler; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Muayeneler" ("HastaTCNo", "MuayeneTarihi", "HastaIsim", "HastaDogumTarihi", "HastaBulgular", "HastaTeshis", "HastaTedavi") FROM stdin;
53755164220	2022-10-05	Utku KEŞANLI	2002-04-26	Baş ağrısı	Hastanın Vertigo hastalığı var	Günde sabah/akşam 1 hap Alsuvirenz yutmalı
\.


--
-- TOC entry 3337 (class 0 OID 16533)
-- Dependencies: 217
-- Data for Name: Receteler; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Receteler" ("HastaTCNo", "MuayeneTarihi", "HastaSikayet", "HastaTani", "HastaTedavi", "HastaReceteNo") FROM stdin;
53755164220	2022-10-05	Başı ağrıyor	Hastanın Vertigo hastalığı var	Günde sabah/akşam 1 hap Alsuvirenz yutmalı	4GT
\.


--
-- TOC entry 3185 (class 2606 OID 16506)
-- Name: Hastalar Hastalar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Hastalar"
    ADD CONSTRAINT "Hastalar_pkey" PRIMARY KEY ("HastaTCNo");


--
-- TOC entry 3187 (class 2606 OID 16522)
-- Name: Ilaclar Ilaclar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ilaclar"
    ADD CONSTRAINT "Ilaclar_pkey" PRIMARY KEY ("IlacBarkodNo");


--
-- TOC entry 3189 (class 2606 OID 16543)
-- Name: Muayeneler Muayeneler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Muayeneler"
    ADD CONSTRAINT "Muayeneler_pkey" PRIMARY KEY ("HastaTCNo");


--
-- TOC entry 3191 (class 2606 OID 16539)
-- Name: Receteler Receteler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Receteler"
    ADD CONSTRAINT "Receteler_pkey" PRIMARY KEY ("HastaTCNo");


-- Completed on 2023-01-11 22:00:14

--
-- PostgreSQL database dump complete
--

