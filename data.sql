--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _address_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._address_detail (
    address_id smallint,
    user_id smallint,
    name character varying(14) DEFAULT NULL::character varying,
    phone bigint,
    address character varying(22) DEFAULT NULL::character varying,
    city character varying(8) DEFAULT NULL::character varying,
    state character varying(8) DEFAULT NULL::character varying,
    type_name character varying(6) DEFAULT NULL::character varying,
    postal_code integer,
    is_default smallint,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying,
    latitude numeric(8,6) DEFAULT NULL::numeric,
    longitude numeric(8,6) DEFAULT NULL::numeric
);


ALTER TABLE public._address_detail OWNER TO rebasedata;

--
-- Name: _area_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._area_detail (
    area_id smallint,
    zone_id smallint,
    name character varying(6) DEFAULT NULL::character varying,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._area_detail OWNER TO rebasedata;

--
-- Name: _brand_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._brand_detail (
    brand_id smallint,
    brand_name character varying(6) DEFAULT NULL::character varying,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._brand_detail OWNER TO rebasedata;

--
-- Name: _cart_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._cart_detail (
    cart_id smallint,
    user_id smallint,
    prod_id smallint,
    qty smallint,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._cart_detail OWNER TO rebasedata;

--
-- Name: _category_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._category_detail (
    cat_id smallint,
    cat_name character varying(24) DEFAULT NULL::character varying,
    image character varying(41) DEFAULT NULL::character varying,
    color character varying(6) DEFAULT NULL::character varying,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._category_detail OWNER TO rebasedata;

--
-- Name: _favorite_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._favorite_detail (
    fav_id smallint,
    prod_id smallint,
    user_id smallint,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._favorite_detail OWNER TO rebasedata;

--
-- Name: _image_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._image_detail (
    img_id smallint,
    prod_id smallint,
    image character varying(40) DEFAULT NULL::character varying,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._image_detail OWNER TO rebasedata;

--
-- Name: _notification_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._notification_detail (
    notification_id smallint,
    user_id smallint,
    ref_id smallint,
    title character varying(15) DEFAULT NULL::character varying,
    message character varying(26) DEFAULT NULL::character varying,
    notification_type smallint,
    status smallint,
    is_read smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._notification_detail OWNER TO rebasedata;

--
-- Name: _nutrition_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._nutrition_detail (
    nutrition_id smallint,
    prod_id smallint,
    nutrition_name character varying(15) DEFAULT NULL::character varying,
    nutrition_value character varying(22) DEFAULT NULL::character varying,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._nutrition_detail OWNER TO rebasedata;

--
-- Name: _offer_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._offer_detail (
    offer_id smallint,
    prod_id smallint,
    price numeric(3,2) DEFAULT NULL::numeric,
    start_date character varying(19) DEFAULT NULL::character varying,
    end_date character varying(19) DEFAULT NULL::character varying,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._offer_detail OWNER TO rebasedata;

--
-- Name: _order_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_detail (
    order_id smallint,
    cart_id character varying(19) DEFAULT NULL::character varying,
    user_id smallint,
    address_id smallint,
    total_price numeric(20,16) DEFAULT NULL::numeric,
    user_pay_price numeric(20,16) DEFAULT NULL::numeric,
    discount_price numeric(18,17) DEFAULT NULL::numeric,
    deliver_price numeric(2,1) DEFAULT NULL::numeric,
    promo_code_id character varying(1) DEFAULT NULL::character varying,
    deliver_type smallint,
    payment_type smallint,
    payment_status smallint,
    order_status smallint,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._order_detail OWNER TO rebasedata;

--
-- Name: _order_payment_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_payment_detail (
    transaction_id smallint,
    order_id smallint,
    transaction_payload character varying(56) DEFAULT NULL::character varying,
    payment_transaction_id bigint,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._order_payment_detail OWNER TO rebasedata;

--
-- Name: _payment_method_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._payment_method_detail (
    pay_id smallint,
    user_id smallint,
    name character varying(13) DEFAULT NULL::character varying,
    card_number bigint,
    card_month smallint,
    card_year smallint,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._payment_method_detail OWNER TO rebasedata;

--
-- Name: _product_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._product_detail (
    prod_id smallint,
    cat_id smallint,
    brand_id smallint,
    type_id smallint,
    name character varying(41) DEFAULT NULL::character varying,
    detail character varying(409) DEFAULT NULL::character varying,
    unit_name character varying(4) DEFAULT NULL::character varying,
    unit_value smallint,
    nutrition_weight character varying(5) DEFAULT NULL::character varying,
    price numeric(5,2) DEFAULT NULL::numeric,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._product_detail OWNER TO rebasedata;

--
-- Name: _promo_code_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._promo_code_detail (
    promo_code_id smallint,
    code character varying(8) DEFAULT NULL::character varying,
    title character varying(13) DEFAULT NULL::character varying,
    description character varying(335) DEFAULT NULL::character varying,
    type smallint,
    min_order_amount numeric(4,1) DEFAULT NULL::numeric,
    max_discount_amount numeric(3,1) DEFAULT NULL::numeric,
    offer_price smallint,
    start_date character varying(19) DEFAULT NULL::character varying,
    end_date character varying(19) DEFAULT NULL::character varying,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._promo_code_detail OWNER TO rebasedata;

--
-- Name: _review_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._review_detail (
    review_id smallint,
    order_id smallint,
    prod_id smallint,
    user_id smallint,
    rate numeric(2,1) DEFAULT NULL::numeric,
    message character varying(1) DEFAULT NULL::character varying,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._review_detail OWNER TO rebasedata;

--
-- Name: _type_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._type_detail (
    type_id smallint,
    type_name character varying(7) DEFAULT NULL::character varying,
    image character varying(37) DEFAULT NULL::character varying,
    color character varying(6) DEFAULT NULL::character varying,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._type_detail OWNER TO rebasedata;

--
-- Name: _user_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._user_detail (
    user_id smallint,
    username character varying(8) DEFAULT NULL::character varying,
    user_type smallint,
    name character varying(5) DEFAULT NULL::character varying,
    email character varying(16) DEFAULT NULL::character varying,
    mobile character varying(10) DEFAULT NULL::character varying,
    mobile_code character varying(2) DEFAULT NULL::character varying,
    password integer,
    area_id smallint,
    auth_token character varying(20) DEFAULT NULL::character varying,
    dervice_token character varying(1) DEFAULT NULL::character varying,
    reset_code smallint,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._user_detail OWNER TO rebasedata;

--
-- Name: _zone_detail; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._zone_detail (
    zone_id smallint,
    name character varying(6) DEFAULT NULL::character varying,
    status smallint,
    created_date character varying(19) DEFAULT NULL::character varying,
    modify_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._zone_detail OWNER TO rebasedata;

--
-- Data for Name: _address_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._address_detail (address_id, user_id, name, phone, address, city, state, type_name, postal_code, is_default, status, created_date, modify_date, latitude, longitude) FROM stdin;
1	2	Мой дом	9876543211	Карла Маркса 113, кв 9	Вологда	Россия	Дом	400016	0	2	2023-08-07 10:33:23	2024-11-11 17:21:20	0.000000	0.000000
2	2	Мой дом	98765432102	Северная 40, кв 142	Вологда	Россия	Дом	400004	1	2	2023-08-07 10:38:58	2024-11-11 20:11:38	0.000000	0.000000
3	2	1	123	asd	asdasd	dsfsdfsf	Office	987654123	0	2	2023-08-07 23:15:27	2023-08-07 23:17:23	0.000000	0.000000
4	2	Офис	9875222	Набережная 40, офис 1 	Волгда	Россия	Офис	110033	0	2	2023-08-07 23:18:09	2024-11-13 14:22:06	0.000000	0.000000
5	2	Add	986565635225	444 ASD ASD asdasdasd	Surat	Gujarat	Home	456546	0	2	2023-08-10 11:39:37	2023-08-10 11:39:37	0.000000	0.000000
6	2	артем	79815007343	Карла Маркса 113	вологда	россия	Home	1111	0	2	2024-11-11 17:34:19	2024-11-13 14:22:13	59.214284	39.934902
7	2	Артем	79815007343	Карла Маркса 113	Вологда	Россия	Home	9	0	2	2024-11-11 17:47:53	2024-11-13 14:22:04	0.000000	0.000000
8	2	453	453543	Карла Маркса 113	вологда	Россия	Дом	9	0	2	2024-11-13 14:18:30	2024-11-13 14:49:04	59.224300	39.883600
9	2	65	645	Карла Маркса 113	вологда	Россия	Дом	9	0	2	2024-11-13 14:31:38	2024-12-13 11:06:23	59.214284	39.934902
10	2	123	3213	Карла Маркса 113	Вологда 	Россия	Дом	9	0	1	2024-11-13 14:37:30	2024-11-13 14:37:30	59.214284	39.934902
11	2	кк	111	Карла Маркса 113	Вологда	Россия	Дом	9	0	2	2024-11-13 15:22:23	2024-12-13 11:01:21	59.224300	39.883600
12	2	кк	2222	Карла Маркса 113	Вологда	Россия	Дом	8	0	1	2024-11-13 15:24:36	2024-11-13 15:24:36	59.214284	39.934902
13	2	99	99	Карла Маркса 113	Вологда	россия	Дом	9	0	2	2024-12-13 10:37:22	2024-12-13 11:01:27	59.214284	39.934902
14	2	123	123	Карла Маркса 113	Вологда	Россия	Дом	9	0	2	2024-12-13 10:52:49	2024-12-13 11:01:25	59.214284	39.934902
15	2	123	123	Карла Маркса 113	Вологда	Россия	Дом	9	0	2	2024-12-13 10:55:18	2024-12-13 11:01:26	59.224300	39.883600
16	2	123	123	Карла Маркса 113	Вологда	Россия	Дом	9	0	1	2024-12-13 11:02:01	2024-12-13 11:02:01	59.214284	39.934902
17	2	123	123	Карла Маркса 113	Вологда	Россия	Дом	9	0	2	2024-12-13 11:02:54	2024-12-13 11:06:24	59.214284	39.934902
18	2	дом	123	Карла Маркса 113	Вологдда	Россия	Дом	9	0	1	2024-12-13 23:13:02	2024-12-13 23:13:02	59.214284	39.934902
19	2	123	123	Карла Маркса 113	Вологда	Россия	Дом	9	0	2	2024-12-15 01:25:02	2024-12-15 01:25:22	59.214284	39.934902
20	2	дом 1	79815007343	Карла Маркса 113	Вологда	Россия	Дом	9	0	1	2024-12-20 16:23:36	2024-12-20 16:23:36	59.214284	39.934902
21	2	Место доставки	79815007343	Карла Маркса 113	Вологда	Россия	Дом	9	0	1	2024-12-20 16:27:39	2024-12-20 16:27:39	59.214284	39.934902
\.


--
-- Data for Name: _area_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._area_detail (area_id, zone_id, name, status, created_date, modify_date) FROM stdin;
1	2	Area 1	1	2023-07-28 16:32:06	2023-07-28 16:33:46
2	2	Area 2	1	2023-07-28 16:37:51	2023-07-28 16:37:51
3	1	Area 2	1	2023-07-28 16:37:55	2023-07-28 16:37:55
4	1	Area 1	1	2023-07-28 16:37:59	2023-07-28 16:37:59
5	1	Area 3	1	2023-07-28 16:38:02	2023-07-28 16:38:02
6	1	Area4	2	2024-05-16 01:18:59	2024-05-16 01:19:25
7	1	Area	2	2024-05-17 08:21:59	2024-05-17 08:22:58
\.


--
-- Data for Name: _brand_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._brand_detail (brand_id, brand_name, status, created_date, modify_date) FROM stdin;
1	bigs	1	2023-07-26 15:16:50	2024-05-13 10:11:34
2	Amul	1	2024-05-10 22:21:21	2024-05-10 22:21:21
3	Balaji	2	2024-05-10 22:21:54	2024-05-10 22:54:34
4	1	2	2024-05-10 22:22:39	2024-05-10 22:54:32
5	2	2	2024-05-10 22:27:58	2024-05-10 22:54:33
6	31	2	2024-05-10 22:41:51	2024-05-10 22:54:33
7	4	2	2024-05-10 22:47:37	2024-05-10 22:54:15
8	Balaji	1	2024-05-11 00:26:25	2024-05-11 00:26:25
9	1	2	2024-05-11 00:27:59	2024-05-11 00:28:29
10	B1	2	2024-05-13 10:06:49	2024-05-13 10:13:04
11	B2	2	2024-05-13 10:11:56	2024-05-13 10:12:53
12	b2	2	2024-05-13 10:43:26	2024-05-13 10:43:43
13	Zone3	1	2024-05-14 00:12:11	2024-05-14 00:12:11
\.


--
-- Data for Name: _cart_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._cart_detail (cart_id, user_id, prod_id, qty, status, created_date, modify_date) FROM stdin;
1	2	5	0	2	2023-08-06 16:50:58	2023-08-06 16:53:08
2	2	6	1	2	2023-08-06 16:52:48	2023-08-06 16:54:53
3	2	5	1	2	2023-08-08 08:18:57	2023-08-08 08:19:29
4	2	5	3	2	2023-08-08 09:37:44	2023-08-08 10:12:44
5	2	11	1	2	2023-08-08 09:38:01	2023-08-08 10:12:45
6	2	10	3	2	2023-08-08 09:38:02	2023-08-08 10:12:47
7	2	5	1	2	2023-08-08 10:13:04	2023-08-08 11:45:08
8	2	6	1	2	2023-08-08 10:13:06	2023-08-08 11:45:09
9	2	6	1	2	2023-08-08 10:13:08	2023-08-08 10:13:14
10	7	5	1	2	2023-08-08 11:18:33	2023-08-08 11:31:27
11	7	5	4	2	2023-08-08 11:19:31	2023-08-08 11:44:17
12	7	6	1	2	2023-08-08 11:19:55	2023-08-08 11:37:50
13	7	7	0	2	2023-08-08 11:21:24	2023-08-08 11:32:58
14	7	5	1	2	2023-08-08 11:46:21	2023-08-08 11:47:03
15	7	5	1	2	2023-08-08 11:47:08	2023-08-08 11:47:13
16	7	5	2	1	2023-08-08 11:50:56	2023-08-08 11:59:41
17	7	6	3	1	2023-08-08 11:51:03	2023-08-08 11:51:03
18	2	5	1	2	2023-08-08 11:53:14	2023-08-10 10:26:51
19	7	5	1	1	2023-08-10 10:37:12	2023-08-10 10:37:12
20	7	6	1	1	2023-08-10 10:37:14	2023-08-10 10:37:14
21	7	6	1	1	2023-08-10 10:37:16	2023-08-10 10:37:16
22	2	5	3	2	2023-08-10 10:38:03	2023-08-10 10:39:14
23	2	6	2	2	2023-08-10 10:38:10	2023-08-10 10:39:14
24	2	5	1	2	2023-08-10 17:56:55	2023-08-10 19:23:38
25	2	6	1	2	2023-08-10 17:56:57	2023-08-10 19:23:38
26	2	5	1	2	2023-08-10 19:24:33	2023-08-10 19:25:02
27	2	6	1	2	2023-08-10 19:24:35	2023-08-10 19:25:02
28	2	6	1	2	2023-08-10 19:24:37	2023-08-10 19:25:02
29	2	5	1	2	2023-08-10 19:27:56	2023-08-10 19:28:26
30	2	5	1	2	2023-08-10 19:28:53	2023-08-10 19:29:26
31	2	5	1	2	2023-08-10 19:31:36	2023-08-10 19:32:02
32	2	5	1	2	2023-08-10 19:34:46	2023-08-10 19:34:55
33	2	5	2	2	2023-08-10 19:35:51	2023-08-10 19:41:14
34	2	6	2	2	2023-08-10 19:35:54	2023-08-10 19:41:14
35	2	7	1	2	2023-08-10 19:36:04	2023-08-10 19:41:14
36	2	5	1	2	2023-08-11 16:32:23	2024-11-10 11:02:34
37	2	5	1	2	2024-11-10 11:12:13	2024-11-10 11:12:25
38	2	5	1	2	2024-11-10 11:34:23	2024-11-10 11:34:38
39	2	5	4	2	2024-11-10 11:36:56	2024-11-10 12:08:09
40	2	5	3	2	2024-11-10 12:05:46	2024-11-10 12:09:05
41	2	5	0	2	2024-11-10 12:27:25	2024-11-10 15:41:34
42	2	7	0	2	2024-11-10 14:33:22	2024-11-10 14:33:40
43	2	5	1	2	2024-11-10 15:59:52	2024-11-10 16:15:50
44	2	11	1	2	2024-11-10 15:59:56	2024-11-10 16:15:51
45	2	5	1	2	2024-11-10 16:17:21	2024-11-10 16:20:45
46	2	5	1	2	2024-11-10 18:35:58	2024-11-10 18:36:19
47	2	5	1	2	2024-11-10 18:44:46	2024-11-10 19:07:04
48	2	5	1	2	2024-11-10 19:06:51	2024-11-10 19:07:04
49	2	5	1	2	2024-11-10 19:07:21	2024-11-10 19:07:30
50	2	5	1	2	2024-11-10 19:29:44	2024-11-10 19:29:52
51	2	5	1	2	2024-11-10 19:33:22	2024-11-10 19:33:29
52	2	5	1	2	2024-11-10 21:09:05	2024-11-10 21:09:11
53	2	5	1	2	2024-11-10 21:14:31	2024-11-10 21:14:36
54	2	5	1	2	2024-11-10 21:15:00	2024-11-10 21:15:06
55	2	5	1	2	2024-11-10 21:28:28	2024-11-10 21:28:40
56	2	6	1	2	2024-11-10 21:29:32	2024-11-10 21:29:42
57	2	5	1	2	2024-11-10 21:34:46	2024-11-10 21:34:53
58	2	6	1	2	2024-11-10 21:43:49	2024-11-10 21:44:00
59	2	5	1	2	2024-11-11 13:02:48	2024-11-11 13:02:56
60	2	5	1	2	2024-11-11 13:48:14	2024-11-11 13:48:27
61	2	5	1	2	2024-11-11 14:01:33	2024-11-11 14:01:47
62	2	5	1	2	2024-11-11 14:09:33	2024-11-11 14:09:39
63	2	5	1	2	2024-11-11 14:16:48	2024-11-11 14:17:04
64	2	5	1	2	2024-11-11 14:35:13	2024-11-11 14:35:20
65	2	5	1	2	2024-11-11 14:36:27	2024-11-11 14:36:32
66	2	5	1	2	2024-11-11 15:18:09	2024-11-11 15:18:16
67	2	5	1	2	2024-11-11 15:19:58	2024-11-11 15:20:04
68	2	5	1	2	2024-11-11 15:24:22	2024-11-11 15:24:34
69	2	5	1	2	2024-11-11 15:24:27	2024-11-11 15:24:34
70	2	6	1	2	2024-11-11 15:25:42	2024-11-11 15:25:47
71	2	5	1	2	2024-11-11 17:21:13	2024-11-11 17:50:29
72	2	5	1	2	2024-11-11 18:17:02	2024-11-11 18:17:08
73	2	5	1	2	2024-11-11 18:34:22	2024-11-11 18:34:28
74	2	5	1	2	2024-11-11 18:37:27	2024-11-11 18:37:38
75	2	5	1	2	2024-11-11 18:47:16	2024-11-11 18:47:21
76	2	5	1	2	2024-11-11 19:24:43	2024-11-11 19:24:51
77	2	5	1	2	2024-11-11 19:33:29	2024-11-11 19:33:43
78	2	5	1	2	2024-11-11 19:46:19	2024-11-11 19:46:28
79	2	5	1	2	2024-11-11 19:52:32	2024-11-11 20:26:07
80	2	5	1	2	2024-11-11 20:19:56	2024-11-11 20:26:07
81	2	5	1	2	2024-11-12 20:11:14	2024-11-12 20:11:21
82	2	5	1	2	2024-11-12 20:11:37	2024-11-12 20:11:42
83	2	5	1	2	2024-11-13 14:18:52	2024-11-13 14:18:58
84	2	5	1	2	2024-11-13 14:48:06	2024-11-13 14:48:16
85	2	5	1	2	2024-11-13 14:48:25	2024-11-13 14:48:32
86	2	5	1	2	2024-11-13 15:22:56	2024-11-13 15:23:03
87	2	5	1	2	2024-11-13 15:26:37	2024-11-13 15:26:45
88	2	5	1	2	2024-11-13 15:26:57	2024-11-13 15:27:05
89	2	5	1	2	2024-11-13 15:55:25	2024-11-13 15:55:33
90	2	5	1	2	2024-11-13 15:59:00	2024-11-13 15:59:06
91	2	5	1	2	2024-11-13 16:03:29	2024-11-13 16:03:35
92	2	17	1	2	2024-11-15 16:17:06	2024-11-16 18:45:08
93	2	21	1	2	2024-11-15 22:53:00	2024-11-16 18:45:09
94	2	24	1	2	2024-11-16 18:56:17	2024-11-17 20:55:48
95	2	5	1	2	2024-11-16 20:17:13	2024-11-17 20:55:49
96	2	26	1	2	2024-11-17 19:53:24	2024-11-17 20:55:17
97	2	25	1	2	2024-11-17 20:54:43	2024-11-17 20:55:19
98	2	5	1	2	2024-11-17 20:55:23	2024-11-17 23:45:12
99	2	19	1	2	2024-11-17 20:55:31	2024-11-17 20:55:55
100	2	26	1	2	2024-11-17 20:55:33	2024-11-17 20:55:58
\.


--
-- Data for Name: _category_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._category_detail (cat_id, cat_name, image, color, status, created_date, modify_date) FROM stdin;
1	Фрэш Фрукты и Овощи	category/20230726155407547qM5gSxkrCh.png	53B175	1	2023-07-26 15:54:07	2024-05-20 21:40:56
2	Растительное масло 	category/202307261555485548dKi8yJisIn.png	F8A44C	1	2023-07-26 15:54:43	2024-05-20 21:43:35
3	Мясо и рыба	category/20230731100233233AOuWmq6r64.png	F7A593	1	2023-07-31 10:02:33	2024-05-19 11:12:13
4	Выпечка и хлеб	category/20230731100257257bPdXFaneYu.png	D3B0E0	1	2023-07-31 10:02:57	2024-11-15 17:13:54
5	Молочные продукты и яйца	category/20230731100322322vK4gHfIwCI.png	FDE598	1	2023-07-31 10:03:22	2023-07-31 10:03:22
6	Напитки	category/20230731100347347lrk8CyW57u.png	B7DFF5	1	2023-07-31 10:03:47	2023-07-31 10:03:47
7	Test	category/2024051910342234221rKJDZK8LT.jpg	BBBBBB	2	2024-05-19 10:34:22	2024-05-19 11:12:20
8	Test	category/2024051912282128211JZe1U6Tok.jpg	BBBB00	2	2024-05-19 12:26:55	2024-05-19 12:28:27
9	Test	category/202405202144454445ZK82l7oL5u.jpg	BBBBBB	2	2024-05-20 21:44:45	2024-05-20 21:44:49
10	Test2	category/20240520220642642T9QUS0dY8q.jpg	BBBBBB	2	2024-05-20 22:06:42	2024-05-20 22:07:25
\.


--
-- Data for Name: _favorite_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._favorite_detail (fav_id, prod_id, user_id, status, created_date, modify_date) FROM stdin;
1	5	5	1	2023-08-02 15:19:57	2023-08-02 15:19:57
21	6	2	1	2024-12-20 16:22:35	2024-12-20 16:22:35
22	5	2	1	2024-12-20 16:26:10	2024-12-20 16:26:10
\.


--
-- Data for Name: _image_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._image_detail (img_id, prod_id, image, status, created_date, modify_date) FROM stdin;
4	5	product/202307310947354735xuruflIucc.png	1	2023-07-31 09:47:35	2023-07-31 09:47:35
5	6	product/202307310951365136W6nJvPCdzQ.png	1	2023-07-31 09:51:36	2023-07-31 09:51:36
6	7	product/202307310958175817ytVf7AVIOl.png	1	2023-07-31 09:58:17	2023-07-31 09:58:17
7	8	product/202307311010091094RZ1nWHTug.png	1	2023-07-31 10:10:09	2023-07-31 10:10:09
8	9	product/202307311011551155pIjIPWIb4w.png	1	2023-07-31 10:11:55	2023-07-31 10:11:55
9	10	product/20230731101409149FomkojOsMt.png	1	2023-07-31 10:14:09	2023-07-31 10:14:09
10	11	product/202307311018321832QsO9noUdBS.png	1	2023-07-31 10:18:32	2023-07-31 10:18:32
11	12	product/202307311022232223jrsJiejIQu.png	1	2023-07-31 10:22:23	2023-07-31 10:22:23
12	13	product/202406021212161216LnEfo5VCnx.jpg	1	2024-06-02 12:12:16	2024-06-02 12:12:16
13	13	product/202406021212161216MHnvjgq6uq.jpg	1	2024-06-02 12:12:16	2024-06-02 12:12:16
14	14	product/202406021215321532VPJoK5fHBk.jpg	1	2024-06-02 12:15:32	2024-06-02 12:15:32
15	14	product/202406021215321532nKS51PEsy5.jpg	1	2024-06-02 12:15:32	2024-06-02 12:15:32
16	15	product/20240602130723723IIkwJyojaY.jpg	1	2024-06-02 13:07:23	2024-06-02 13:07:23
17	15	product/20240602130723723vjCwZpK6K5.jpg	2	2024-06-02 13:07:23	2024-06-05 00:19:36
18	15	product/202406050017381738zePjm9xxj2.jpg	2	2024-06-05 00:17:38	2024-06-05 00:19:33
19	15	product/202406050053265326xul4BNZRwz.jpg	2	2024-06-05 00:53:26	2024-06-05 00:53:44
20	16	product/202406090317291729bFZqIlK9oA.jpg	1	2024-06-09 03:17:29	2024-06-09 03:17:29
21	16	product/202406090317291729uJuCj02bxA.jpg	1	2024-06-09 03:17:29	2024-06-09 03:17:29
22	16	product/202406090317291729bwCAfv9SHS.jpg	1	2024-06-09 03:17:29	2024-06-09 03:17:29
23	16	product/20240609110133133wkXoq0tTxW.jpg	2	2024-06-09 11:01:33	2024-06-09 11:01:37
24	16	product/2024060911030636LovgnWApSV.jpg	2	2024-06-09 11:03:06	2024-06-09 11:03:11
25	17	product/202411151843594359MywkP6Z0II.png	1	2024-11-15 16:13:59	2024-11-15 16:13:59
26	18	product/202411151854325432sVIVx0ewd1.png	1	2024-11-15 16:24:32	2024-11-15 16:24:32
27	19	product/20241115190535535BDyrZBOCjt.png	1	2024-11-15 16:35:35	2024-11-15 16:35:35
28	20	product/20241115191109119ypufw3eqGT.png	2	2024-11-15 16:41:09	2024-11-15 16:41:14
29	20	product/20241115191109119FO76EHcraH.png	1	2024-11-15 16:41:09	2024-11-15 16:41:09
30	21	product/20241115191204124d92gaLpF4M.png	2	2024-11-15 16:42:04	2024-11-15 16:42:09
31	21	product/20241115191204124RkG5jhf8om.png	2	2024-11-15 16:42:04	2024-11-15 16:42:10
32	21	product/20241115191204124MjYV06ACAC.png	1	2024-11-15 16:42:04	2024-11-15 16:42:04
33	22	product/202411151916211621JpBw3BcZXk.png	2	2024-11-15 16:46:21	2024-11-15 16:46:24
34	22	product/202411151916211621V8JcloqpI9.png	2	2024-11-15 16:46:21	2024-11-15 16:46:25
35	22	product/2024111519162116216EBqEwDLCa.png	2	2024-11-15 16:46:21	2024-11-15 16:46:26
36	22	product/202411151916211621lyTD1FU8zl.png	2	2024-11-15 16:46:21	2024-11-15 16:46:27
37	22	product/202411151916211621sQxYc1NEAN.png	1	2024-11-15 16:46:21	2024-11-15 16:46:21
38	23	product/202411151940244024vlv49AcSaC.png	2	2024-11-15 17:10:24	2024-11-15 17:10:29
39	23	product/202411151940244024hGIF0vErL1.png	2	2024-11-15 17:10:24	2024-11-15 17:10:30
40	23	product/202411151940244024FROaEA4D2v.png	2	2024-11-15 17:10:24	2024-11-15 17:10:31
41	23	product/202411151940244024jJpUE8WK3u.png	2	2024-11-15 17:10:24	2024-11-15 17:10:32
42	23	product/202411151940244024qGnqljIzH1.png	2	2024-11-15 17:10:24	2024-11-15 17:10:33
43	23	product/202411151940244024fHAexHb3a1.png	2	2024-11-15 17:10:24	2024-11-15 17:10:34
44	23	product/202411151940244024gPrl6Bs9J5.png	1	2024-11-15 17:10:24	2024-11-15 17:10:24
45	24	product/202411151942354235urQ1bDjp7R.png	2	2024-11-15 17:12:35	2024-11-15 17:12:39
46	24	product/2024111519423542351SLFyuxmx9.png	2	2024-11-15 17:12:35	2024-11-15 17:12:39
47	24	product/202411151942354235XBntrmC6R2.png	2	2024-11-15 17:12:35	2024-11-15 17:12:40
48	24	product/202411151942354235hFNkKWyFn8.png	2	2024-11-15 17:12:35	2024-11-15 17:12:41
49	24	product/202411151942354235gXWgCa0Asj.png	2	2024-11-15 17:12:35	2024-11-15 17:12:42
50	24	product/202411151942354235qrHnl0LD4o.png	2	2024-11-15 17:12:35	2024-11-15 17:12:42
51	24	product/202411151942354235tIWs2MqXwG.png	2	2024-11-15 17:12:35	2024-11-15 17:12:43
52	24	product/202411151942354235Tioe1bBRfG.png	1	2024-11-15 17:12:35	2024-11-15 17:12:35
53	25	product/202411151947464746MMQx7HBi2m.png	1	2024-11-15 17:17:46	2024-11-15 17:17:46
54	26	product/202411151950195019C3oRpU2twH.png	2	2024-11-15 17:20:19	2024-11-15 17:20:43
55	26	product/202411151950415041wyNG0AleBJ.png	1	2024-11-15 17:20:41	2024-11-15 17:20:41
\.


--
-- Data for Name: _notification_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._notification_detail (notification_id, user_id, ref_id, title, message, notification_type, status, is_read, created_date, modify_date) FROM stdin;
1	2	2	Order Accepted	your order #2 accepted.	2	1	2	2023-08-12 10:35:43	2024-12-13 06:50:16
2	2	2	Order Accepted	your order #2 accepted.	2	1	2	2023-08-12 10:36:02	2024-12-13 06:50:16
3	2	3	Order Delivered	your order #3 delivered.	2	1	2	2023-08-12 10:36:34	2024-12-13 06:50:16
4	2	3	Order Delivered	your order #3 delivered.	2	1	2	2023-08-12 10:37:29	2024-12-13 06:50:16
5	2	2	Order Delivered	your order #2 delivered.	2	1	2	2023-08-12 10:38:17	2024-12-13 06:50:16
6	2	4	Order Accepted	your order #4 accepted.	2	1	2	2024-06-17 18:05:09	2024-12-13 06:50:16
7	2	4	Order Delivered	your order #4 delivered.	2	1	2	2024-06-17 18:09:21	2024-12-13 06:50:16
8	2	6	Order Declined	your order #6 declined.	2	1	2	2024-06-17 18:10:58	2024-12-13 06:50:16
9	2	7	Order Accepted	your order #7 accepted.	2	1	2	2024-06-17 18:11:03	2024-12-13 06:50:16
10	2	7	Order Cancel	your order #7 canceled.	2	1	2	2024-06-17 18:11:06	2024-12-13 06:50:16
11	2	8	Order Accepted	your order #8 accepted.	2	1	2	2024-06-17 18:11:12	2024-12-13 06:50:16
12	2	8	Order Delivered	your order #8 delivered.	2	1	2	2024-06-17 18:11:17	2024-12-13 06:50:16
13	2	4	Order Accepted	your order #4 accepted.	2	1	2	2024-06-17 20:04:09	2024-12-13 06:50:16
14	2	4	Order Cancel	your order #4 canceled.	2	1	2	2024-06-17 20:04:23	2024-12-13 06:50:16
15	2	6	Order Declined	your order #6 declined.	2	1	2	2024-06-17 20:04:42	2024-12-13 06:50:16
16	2	7	Order Accepted	your order #7 accepted.	2	1	2	2024-06-17 20:05:41	2024-12-13 06:50:16
17	2	7	Order Delivered	your order #7 delivered.	2	1	2	2024-06-17 20:05:43	2024-12-13 06:50:16
18	2	8	Order Accepted	your order #8 accepted.	2	1	2	2024-06-22 12:10:52	2024-12-13 06:50:16
19	2	8	Order Delivered	your order #8 delivered.	2	1	2	2024-06-22 12:10:58	2024-12-13 06:50:16
20	2	9	Order Accepted	your order #9 accepted.	2	1	2	2024-06-22 13:16:23	2024-12-13 06:50:16
21	2	9	Order Cancel	your order #9 canceled.	2	1	2	2024-06-22 13:16:35	2024-12-13 06:50:16
22	2	10	Order Accepted	your order #10 accepted.	2	1	2	2024-06-22 13:16:50	2024-12-13 06:50:16
23	2	10	Order Delivered	your order #10 delivered.	2	1	2	2024-06-22 13:16:54	2024-12-13 06:50:16
24	2	12	Order Placed	your order #12 placed.	2	1	2	2024-11-10 11:02:34	2024-12-13 06:50:16
25	2	13	Order Placed	your order #13 placed.	2	1	2	2024-11-10 11:12:25	2024-12-13 06:50:16
26	2	14	Order Placed	your order #14 placed.	2	1	2	2024-11-10 11:34:38	2024-12-13 06:50:16
27	2	16	Order Placed	your order #16 placed.	2	1	2	2024-11-10 19:07:04	2024-12-13 06:50:16
28	2	17	Order Placed	your order #17 placed.	2	1	2	2024-11-10 19:07:30	2024-12-13 06:50:16
29	2	18	Order Placed	your order #18 placed.	2	1	2	2024-11-10 19:29:52	2024-12-13 06:50:16
30	2	19	Order Placed	your order #19 placed.	2	1	2	2024-11-10 19:33:29	2024-12-13 06:50:16
31	2	20	Order Placed	your order #20 placed.	2	1	2	2024-11-10 21:09:11	2024-12-13 06:50:16
32	2	21	Order Placed	your order #21 placed.	2	1	2	2024-11-10 21:14:36	2024-12-13 06:50:16
33	2	22	Order Placed	your order #22 placed.	2	1	2	2024-11-10 21:15:06	2024-12-13 06:50:16
34	2	23	Order Placed	your order #23 placed.	2	1	2	2024-11-10 21:28:40	2024-12-13 06:50:16
35	2	25	Order Placed	your order #25 placed.	2	1	2	2024-11-10 21:34:53	2024-12-13 06:50:16
36	2	26	Order Placed	your order #26 placed.	2	1	2	2024-11-10 21:44:00	2024-12-13 06:50:16
37	2	27	Order Placed	your order #27 placed.	2	1	2	2024-11-11 13:02:56	2024-12-13 06:50:16
38	2	28	Order Placed	your order #28 placed.	2	1	2	2024-11-11 13:48:27	2024-12-13 06:50:16
39	2	29	Order Placed	your order #29 placed.	2	1	2	2024-11-11 14:01:47	2024-12-13 06:50:16
40	2	30	Order Placed	your order #30 placed.	2	1	2	2024-11-11 14:09:39	2024-12-13 06:50:16
41	2	31	Order Placed	your order #31 placed.	2	1	2	2024-11-11 14:17:04	2024-12-13 06:50:16
42	2	32	Order Placed	your order #32 placed.	2	1	2	2024-11-11 14:35:20	2024-12-13 06:50:16
43	2	33	Order Placed	your order #33 placed.	2	1	2	2024-11-11 14:36:32	2024-12-13 06:50:16
44	2	34	Order Placed	your order #34 placed.	2	1	2	2024-11-11 15:18:16	2024-12-13 06:50:16
45	2	35	Order Placed	your order #35 placed.	2	1	2	2024-11-11 15:20:04	2024-12-13 06:50:16
46	2	36	Order Placed	your order #36 placed.	2	1	2	2024-11-11 15:24:34	2024-12-13 06:50:16
47	2	37	Order Placed	your order #37 placed.	2	1	2	2024-11-11 15:25:47	2024-12-13 06:50:16
48	2	38	Order Placed	your order #38 placed.	2	1	2	2024-11-11 17:50:29	2024-12-13 06:50:16
49	2	39	Order Placed	your order #39 placed.	2	1	2	2024-11-11 18:17:08	2024-12-13 06:50:16
50	2	40	Order Placed	your order #40 placed.	2	1	2	2024-11-11 18:17:08	2024-12-13 06:50:16
51	2	41	Order Placed	your order #41 placed.	2	1	2	2024-11-11 18:34:28	2024-12-13 06:50:16
52	2	42	Order Placed	your order #42 placed.	2	1	2	2024-11-11 18:34:28	2024-12-13 06:50:16
53	2	43	Order Placed	your order #43 placed.	2	1	2	2024-11-11 18:37:38	2024-12-13 06:50:16
54	2	44	Order Placed	your order #44 placed.	2	1	2	2024-11-11 18:37:38	2024-12-13 06:50:16
55	2	45	Order Placed	your order #45 placed.	2	1	2	2024-11-11 18:47:21	2024-12-13 06:50:16
56	2	46	Order Placed	your order #46 placed.	2	1	2	2024-11-11 18:47:21	2024-12-13 06:50:16
57	2	47	Order Placed	your order #47 placed.	2	1	2	2024-11-11 19:24:51	2024-12-13 06:50:16
58	2	48	Order Placed	your order #48 placed.	2	1	2	2024-11-11 19:24:51	2024-12-13 06:50:16
59	2	49	Order Placed	your order #49 placed.	2	1	2	2024-11-11 19:33:43	2024-12-13 06:50:16
60	2	50	Order Placed	your order #50 placed.	2	1	2	2024-11-11 19:33:43	2024-12-13 06:50:16
61	2	51	Order Placed	your order #51 placed.	2	1	2	2024-11-11 19:46:28	2024-12-13 06:50:16
62	2	52	Order Placed	your order #52 placed.	2	1	2	2024-11-11 19:46:28	2024-12-13 06:50:16
63	2	53	Order Placed	your order #53 placed.	2	1	2	2024-11-11 20:26:07	2024-12-13 06:50:16
64	2	54	Order Placed	your order #54 placed.	2	1	2	2024-11-11 20:26:07	2024-12-13 06:50:16
65	2	55	Order Placed	your order #55 placed.	2	1	2	2024-11-12 20:11:21	2024-12-13 06:50:16
66	2	56	Order Placed	your order #56 placed.	2	1	2	2024-11-12 20:11:21	2024-12-13 06:50:16
67	2	57	Order Placed	your order #57 placed.	2	1	2	2024-11-12 20:11:42	2024-12-13 06:50:16
68	2	58	Order Placed	your order #58 placed.	2	1	2	2024-11-12 20:11:42	2024-12-13 06:50:16
69	2	59	Order Placed	your order #59 placed.	2	1	2	2024-11-13 14:18:58	2024-12-13 06:50:16
70	2	60	Order Placed	your order #60 placed.	2	1	2	2024-11-13 14:48:16	2024-12-13 06:50:16
71	2	61	Order Placed	your order #61 placed.	2	1	2	2024-11-13 14:48:32	2024-12-13 06:50:16
72	2	62	Order Placed	your order #62 placed.	2	1	2	2024-11-13 15:23:03	2024-12-13 06:50:16
73	2	63	Order Placed	your order #63 placed.	2	1	2	2024-11-13 15:26:45	2024-12-13 06:50:16
74	2	64	Order Placed	your order #64 placed.	2	1	2	2024-11-13 15:27:05	2024-12-13 06:50:16
75	2	65	Order Placed	your order #65 placed.	2	1	2	2024-11-13 15:55:33	2024-12-13 06:50:16
76	2	66	Order Placed	your order #66 placed.	2	1	2	2024-11-13 15:59:06	2024-12-13 06:50:16
77	2	67	Order Placed	your order #67 placed.	2	1	2	2024-11-13 15:59:06	2024-12-13 06:50:16
78	2	68	Order Placed	your order #68 placed.	2	1	2	2024-11-13 16:03:35	2024-12-13 06:50:16
79	2	11	Order Accepted	your order #11 accepted.	2	1	2	2024-11-15 15:06:59	2024-12-13 06:50:16
80	2	11	Order Delivered	your order #11 delivered.	2	1	2	2024-11-15 15:07:05	2024-12-13 06:50:16
81	2	69	Order Placed	your order #69 placed.	2	1	2	2024-11-17 23:45:12	2024-12-13 06:50:16
82	2	70	Order Placed	your order #70 placed.	2	1	2	2024-11-17 23:45:47	2024-12-13 06:50:16
83	2	71	Order Placed	your order #71 placed.	2	1	2	2024-12-07 18:38:12	2024-12-13 06:50:16
84	2	72	Order Placed	your order #72 placed.	2	1	2	2024-12-07 18:46:52	2024-12-13 06:50:16
85	2	73	Order Placed	your order #73 placed.	2	1	2	2024-12-07 19:05:38	2024-12-13 06:50:16
86	2	74	Order Placed	your order #74 placed.	2	1	2	2024-12-07 19:13:13	2024-12-13 06:50:16
87	2	75	Order Placed	your order #75 placed.	2	1	2	2024-12-07 19:15:29	2024-12-13 06:50:16
88	2	76	Order Placed	your order #76 placed.	2	1	2	2024-12-07 19:18:02	2024-12-13 06:50:16
89	2	77	Order Placed	your order #77 placed.	2	1	2	2024-12-07 19:18:29	2024-12-13 06:50:16
90	2	78	Order Placed	your order #78 placed.	2	1	2	2024-12-07 19:20:10	2024-12-13 06:50:16
91	2	79	Order Placed	your order #79 placed.	2	1	2	2024-12-07 19:27:01	2024-12-13 06:50:16
92	2	80	Order Placed	your order #80 placed.	2	1	2	2024-12-07 19:28:35	2024-12-13 06:50:16
93	2	81	Order Placed	your order #81 placed.	2	1	2	2024-12-07 19:29:36	2024-12-13 06:50:16
94	2	82	Order Placed	your order #82 placed.	2	1	2	2024-12-12 00:12:50	2024-12-13 06:50:16
95	2	83	Order Placed	your order #83 placed.	2	1	2	2024-12-12 00:17:18	2024-12-13 06:50:16
96	2	84	Order Placed	your order #84 placed.	2	1	2	2024-12-12 00:34:22	2024-12-13 06:50:16
97	2	85	Order Placed	your order #85 placed.	2	1	2	2024-12-12 00:52:13	2024-12-13 06:50:16
98	2	86	Order Placed	your order #86 placed.	2	1	2	2024-12-12 00:57:04	2024-12-13 06:50:16
99	2	87	Order Placed	your order #87 placed.	2	1	2	2024-12-12 01:00:23	2024-12-13 06:50:16
100	2	88	Order Placed	your order #88 placed.	2	1	2	2024-12-12 01:02:01	2024-12-13 06:50:16
\.


--
-- Data for Name: _nutrition_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._nutrition_detail (nutrition_id, prod_id, nutrition_name, nutrition_value, status, created_date, modify_date) FROM stdin;
1	4	Калории	104	1	2023-07-27 15:43:18	2023-07-27 15:43:18
2	4	Жир	0.3г	1	2023-07-27 15:43:18	2023-07-27 15:43:18
3	4	Натрий	3мг	2	2023-07-27 16:06:59	2023-07-27 16:09:58
4	5	Калории	89	1	2023-07-31 09:47:35	2023-07-31 09:47:35
5	5	Жир	0.3г	1	2023-07-31 09:47:35	2023-07-31 09:47:35
6	5	Вода	75%	1	2023-07-31 09:47:35	2023-07-31 09:47:35
7	5	Белки	1.1г	1	2023-07-31 09:47:35	2023-07-31 09:47:35
8	5	Углеводы	22.8г	1	2023-07-31 09:47:35	2023-07-31 09:47:35
9	5	Сахар	12.2г	1	2023-07-31 09:47:35	2023-07-31 09:47:35
10	5	Пищевые волокна	2.6г	1	2023-07-31 09:47:35	2023-07-31 09:47:35
11	6	Калории	94.6	1	2023-07-31 09:51:36	2023-07-31 09:51:36
12	6	Жир	0.3г	1	2023-07-31 09:51:36	2023-07-31 09:51:36
13	6	Вода	156г	1	2023-07-31 09:51:36	2023-07-31 09:51:36
14	6	Белки	0.43г	1	2023-07-31 09:51:36	2023-07-31 09:51:36
15	6	Углеводы	25.1г	1	2023-07-31 09:51:36	2023-07-31 09:51:36
16	6	Сахар	18.9г	1	2023-07-31 09:51:36	2023-07-31 09:51:36
17	6	Пищевые волокна	4.37г	1	2023-07-31 09:51:36	2023-07-31 09:51:36
18	7	Колории	66.6	1	2023-07-31 09:58:17	2023-07-31 09:58:17
19	7	Жир	0.2г	1	2023-07-31 09:58:17	2023-07-31 09:58:17
20	7	Вода	86%	1	2023-07-31 09:58:17	2023-07-31 09:58:17
21	7	Белки	1.3г	1	2023-07-31 09:58:17	2023-07-31 09:58:17
22	7	Углеводы	14.8г	1	2023-07-31 09:58:17	2023-07-31 09:58:17
23	7	Сахар	12г	1	2023-07-31 09:58:17	2023-07-31 09:58:17
24	7	Пищевые волокна	0.2г	1	2023-07-31 09:58:17	2023-07-31 09:58:17
25	7	Витамин С	92% дневной нормы (ДВ)	1	2023-07-31 09:58:17	2023-07-31 09:58:17
26	7	Витамин В9	9% от ДВ	1	2023-07-31 09:58:17	2023-07-31 09:58:17
27	7	Кальций	5% от ДВ	1	2023-07-31 09:58:17	2023-07-31 09:58:17
28	7	Калий	5% от ДВ	1	2023-07-31 09:58:17	2023-07-31 09:58:17
29	8	Калории	217	1	2023-07-31 10:10:09	2023-07-31 10:10:09
30	8	Жир	11.8г	1	2023-07-31 10:10:09	2023-07-31 10:10:09
31	8	Вода	61%	1	2023-07-31 10:10:09	2023-07-31 10:10:09
32	8	Белок	26.1г	1	2023-07-31 10:10:09	2023-07-31 10:10:09
33	8	Углеводы 	0г	1	2023-07-31 10:10:09	2023-07-31 10:10:09
34	8	Сахар	0г	1	2023-07-31 10:10:09	2023-07-31 10:10:09
35	8	Пищевые волокна	0г	1	2023-07-31 10:10:09	2023-07-31 10:10:09
36	9	Калории	284	1	2023-07-31 10:11:55	2023-07-31 10:11:55
37	9	Жир	6.2г	1	2023-07-31 10:11:55	2023-07-31 10:11:55
38	9	Вода	61%	1	2023-07-31 10:11:55	2023-07-31 10:11:55
39	9	Белки	53.4г	1	2023-07-31 10:11:55	2023-07-31 10:11:55
40	9	Углеводы	0г	1	2023-07-31 10:11:55	2023-07-31 10:11:55
41	9	Сахар	0г	1	2023-07-31 10:11:55	2023-07-31 10:11:55
42	9	Пищевые волокна	0г	1	2023-07-31 10:11:55	2023-07-31 10:11:55
43	10	Калории	31	1	2023-07-31 10:14:09	2023-07-31 10:14:09
44	10	Жир	0.3г	1	2023-07-31 10:14:09	2023-07-31 10:14:09
45	10	Вода	92%	1	2023-07-31 10:14:09	2023-07-31 10:14:09
46	10	Белки	1г	1	2023-07-31 10:14:09	2023-07-31 10:14:09
47	10	Углеводы	6г	1	2023-07-31 10:14:09	2023-07-31 10:14:09
48	10	Сахар	4.2г	1	2023-07-31 10:14:09	2023-07-31 10:14:09
49	10	Пищевые волокна	2.1г	1	2023-07-31 10:14:09	2023-07-31 10:14:09
50	11	Калории	9	1	2023-07-31 10:18:32	2023-07-31 10:18:32
51	11	Жир	0г	1	2023-07-31 10:18:32	2023-07-31 10:18:32
52	11	Белки	0.2г	1	2023-07-31 10:18:32	2023-07-31 10:18:32
53	11	Углеводы	2г	1	2023-07-31 10:18:32	2023-07-31 10:18:32
54	11	Сахар	0.2г	1	2023-07-31 10:18:32	2023-07-31 10:18:32
55	11	Пищевые волокна	0.2г	1	2023-07-31 10:18:32	2023-07-31 10:18:32
56	11	Натрий	1.4мг	1	2023-07-31 10:18:32	2023-07-31 10:18:32
57	11	Магний	4.7мг	1	2023-07-31 10:18:32	2023-07-31 10:18:32
58	11	Калий	45.6мг	1	2023-07-31 10:18:32	2023-07-31 10:18:32
59	12	Калории	4.5	1	2023-07-31 10:22:23	2023-07-31 10:22:23
60	12	Жир	0г	1	2023-07-31 10:22:23	2023-07-31 10:22:23
61	12	Белки	0.2г	1	2023-07-31 10:22:23	2023-07-31 10:22:23
62	12	Углеводы	1г	1	2023-07-31 10:22:23	2023-07-31 10:22:23
63	12	Сахар	0г	1	2023-07-31 10:22:23	2023-07-31 10:22:23
64	12	Пищевые волокна	0.1г	1	2023-07-31 10:22:23	2023-07-31 10:22:23
65	12	Натрий	0.5мг	1	2023-07-31 10:22:23	2023-07-31 10:22:23
66	12	Цинк	0.04мг	1	2023-07-31 10:22:23	2023-07-31 10:22:23
67	14	Жир	10%	1	2024-06-02 12:15:32	2024-06-02 12:15:32
68	15	Углеводы	10%	2	2024-06-02 13:07:23	2024-06-05 00:13:51
69	15	Сахар	50%	2	2024-06-02 13:07:23	2024-06-05 00:14:42
70	15	Углеводы	10%	1	2024-06-05 00:12:28	2024-06-05 00:12:28
71	15	N1	10	2	2024-06-05 00:15:10	2024-06-05 00:15:12
72	15	N2	50	2	2024-06-05 00:53:16	2024-06-05 00:53:33
73	16	n1	10%	1	2024-06-09 03:17:29	2024-06-09 03:17:29
74	16	n2	15%	2	2024-06-09 03:17:29	2024-06-09 11:00:00
75	16	m3	40%	1	2024-06-09 11:02:48	2024-06-09 11:02:48
76	16	m3	40%	2	2024-06-09 11:02:48	2024-06-09 11:02:56
77	17	Белки	0.7г	1	2024-11-15 16:13:59	2024-11-15 16:13:59
78	17	Жиры	0г	1	2024-11-15 16:13:59	2024-11-15 16:13:59
79	17	Углеводы	11г	1	2024-11-15 16:13:59	2024-11-15 16:13:59
80	17	Калории 	50 ккал	1	2024-11-15 16:13:59	2024-11-15 16:13:59
81	18	Белки	0г	1	2024-11-15 16:24:32	2024-11-15 16:24:32
82	18	Жиры	0г	1	2024-11-15 16:24:32	2024-11-15 16:24:32
83	18	Углеводы	11.2г	1	2024-11-15 16:24:32	2024-11-15 16:24:32
84	18	Калории	45.0 ккал	1	2024-11-15 16:24:32	2024-11-15 16:24:32
85	19	Белки	0г	1	2024-11-15 16:35:35	2024-11-15 16:35:35
86	19	Жиры	0г	1	2024-11-15 16:35:35	2024-11-15 16:35:35
87	19	Углеводы 	0.1г	1	2024-11-15 16:35:35	2024-11-15 16:35:35
88	19	Сахар	0г	1	2024-11-15 16:35:35	2024-11-15 16:35:35
89	19	Калории	2 ккал	1	2024-11-15 16:35:35	2024-11-15 16:35:35
90	20	Белки	13г	1	2024-11-15 16:41:09	2024-11-15 16:41:09
91	20	Жиры	1г	1	2024-11-15 16:41:09	2024-11-15 16:41:09
92	20	Углеводы	11г	1	2024-11-15 16:41:09	2024-11-15 16:41:09
93	20	Калории	157 ккал	1	2024-11-15 16:41:09	2024-11-15 16:41:09
94	21	Белки	13г	1	2024-11-15 16:42:04	2024-11-15 16:42:04
95	21	Жиры	1г	1	2024-11-15 16:42:04	2024-11-15 16:42:04
96	21	Углеводы	11г	1	2024-11-15 16:42:04	2024-11-15 16:42:04
97	21	Калории	157 ккал	1	2024-11-15 16:42:04	2024-11-15 16:42:04
98	22	Белки	0.5г	1	2024-11-15 16:46:21	2024-11-15 16:46:21
99	22	Жиры	67г	1	2024-11-15 16:46:21	2024-11-15 16:46:21
100	22	Углеводы	2г	1	2024-11-15 16:46:21	2024-11-15 16:46:21
\.


--
-- Data for Name: _offer_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._offer_detail (offer_id, prod_id, price, start_date, end_date, status, created_date, modify_date) FROM stdin;
1	5	2.49	2023-07-31 00:00:00	2023-08-30 00:00:00	1	2023-07-31 10:58:27	2023-07-31 10:59:54
2	6	1.49	2023-07-31 00:00:00	2023-08-30 00:00:00	1	2023-07-31 10:59:08	2023-07-31 10:59:08
3	11	1.99	2024-06-12 00:00:00	2024-06-18 00:00:00	2	2024-06-12 23:04:11	2024-06-13 00:02:00
4	11	1.99	2024-06-14 00:00:00	2024-06-24 00:00:00	2	2024-06-14 00:02:27	2024-06-14 00:04:10
5	11	1.49	2024-06-14 00:00:00	2024-06-17 00:00:00	2	2024-06-14 00:05:09	2024-06-14 00:05:20
\.


--
-- Data for Name: _order_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_detail (order_id, cart_id, user_id, address_id, total_price, user_pay_price, discount_price, deliver_price, promo_code_id, deliver_type, payment_type, payment_status, order_status, status, created_date, modify_date) FROM stdin;
2	18	2	2	2.4900000000000000	4.2410000000000005	0.24900000000000003	2.0	1	1	1	1	3	1	2023-08-10 10:22:46	2023-08-12 10:38:17
3	18	2	2	2.4900000000000000	4.2410000000000005	0.24900000000000003	2.0	1	1	1	1	3	1	2023-08-10 10:26:51	2023-08-12 10:37:29
4	22,23	2	2	10.4500000000000010	11.4050000000000010	1.04500000000000020	2.0	1	1	2	2	4	1	2023-08-10 10:39:14	2024-06-17 20:04:23
5	24,25	2	1	3.9800000000000004	5.5820000000000010	0.39800000000000010	2.0	1	1	2	1	1	1	2023-08-10 19:23:38	2023-08-10 19:23:38
6	26,27,28	2	1	5.4700000000000010	6.9230000000000010	0.54700000000000000	2.0	1	1	1	1	5	1	2023-08-10 19:25:02	2024-06-17 20:04:42
7	29	2	1	2.4900000000000000	4.4900000000000000	0.00000000000000000	2.0		1	1	1	3	1	2023-08-10 19:28:26	2024-06-17 20:05:43
8	30	2	1	2.4900000000000000	4.4900000000000000	0.00000000000000000	2.0		1	1	1	3	1	2023-08-10 19:29:26	2024-06-22 12:10:58
9	31	2	1	2.4900000000000000	4.2410000000000005	0.24900000000000003	2.0	1	1	1	1	4	1	2023-08-10 19:32:02	2024-06-22 13:16:35
10	32	2	1	2.4900000000000000	4.4900000000000000	0.00000000000000000	2.0		1	1	1	3	1	2023-08-10 19:34:55	2024-06-22 13:16:54
11	33,34,35	2	1	8.9500000000000010	10.0550000000000010	0.89500000000000010	2.0	1	1	1	1	3	1	2023-08-10 19:41:14	2024-11-15 15:07:05
12	36	2	1	2.9900000000000000	4.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 11:02:34	2024-11-10 11:02:34
13	37	2	2	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 11:12:25	2024-11-10 11:12:25
14	38	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 11:34:38	2024-11-10 11:34:38
15	46	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	2	1	1	1	2024-11-10 18:36:19	2024-11-10 18:36:19
16	47,48	2	1	601.9800000000000000	603.9800000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 19:07:04	2024-11-10 19:07:04
17	49	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 19:07:30	2024-11-10 19:07:30
18	50	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 19:29:52	2024-11-10 19:29:52
19	51	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 19:33:29	2024-11-10 19:33:29
20	52	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 21:09:11	2024-11-10 21:09:11
21	53	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 21:14:36	2024-11-10 21:14:36
22	54	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 21:15:06	2024-11-10 21:15:06
23	55	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 21:28:39	2024-11-10 21:28:39
24	56	2	1	150.9900000000000000	152.9900000000000000	0.00000000000000000	2.0		1	2	1	1	1	2024-11-10 21:29:42	2024-11-10 21:29:42
25	57	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 21:34:53	2024-11-10 21:34:53
26	58	2	1	150.9900000000000000	152.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-10 21:44:00	2024-11-10 21:44:00
27	59	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 13:02:56	2024-11-11 13:02:56
28	60	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 13:48:27	2024-11-11 13:48:27
29	61	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 14:01:47	2024-11-11 14:01:47
30	62	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 14:09:39	2024-11-11 14:09:39
31	63	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 14:17:04	2024-11-11 14:17:04
32	64	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 14:35:20	2024-11-11 14:35:20
33	65	2	2	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 14:36:32	2024-11-11 14:36:32
34	66	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 15:18:16	2024-11-11 15:18:16
35	67	2	1	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 15:20:04	2024-11-11 15:20:04
36	68,69	2	1	601.9800000000000000	603.9800000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 15:24:34	2024-11-11 15:24:34
37	70	2	2	150.9900000000000000	152.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 15:25:47	2024-11-11 15:25:47
38	71	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 17:50:29	2024-11-11 17:50:29
39	72	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 18:17:08	2024-11-11 18:17:08
40	72	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 18:17:08	2024-11-11 18:17:08
41	73	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 18:34:28	2024-11-11 18:34:28
42	73	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 18:34:28	2024-11-11 18:34:28
43	74	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 18:37:38	2024-11-11 18:37:38
44	74	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 18:37:38	2024-11-11 18:37:38
45	75	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 18:47:21	2024-11-11 18:47:21
46	75	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 18:47:21	2024-11-11 18:47:21
47	76	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 19:24:51	2024-11-11 19:24:51
48	76	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 19:24:51	2024-11-11 19:24:51
49	77	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 19:33:43	2024-11-11 19:33:43
50	77	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 19:33:43	2024-11-11 19:33:43
51	78	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 19:46:28	2024-11-11 19:46:28
52	78	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 19:46:28	2024-11-11 19:46:28
53	79,80	2	6	601.9800000000000000	603.9800000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 20:26:07	2024-11-11 20:26:07
54	79,80	2	6	601.9800000000000000	603.9800000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-11 20:26:07	2024-11-11 20:26:07
55	81	2	6	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-12 20:11:21	2024-11-12 20:11:21
56	81	2	6	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-12 20:11:21	2024-11-12 20:11:21
57	82	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-12 20:11:42	2024-11-12 20:11:42
58	82	2	7	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-12 20:11:42	2024-11-12 20:11:42
59	83	2	8	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-13 14:18:58	2024-11-13 14:18:58
60	84	2	8	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-13 14:48:16	2024-11-13 14:48:16
61	85	2	10	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-13 14:48:32	2024-11-13 14:48:32
62	86	2	11	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-13 15:23:03	2024-11-13 15:23:03
63	87	2	11	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-13 15:26:45	2024-11-13 15:26:45
64	88	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-13 15:27:05	2024-11-13 15:27:05
65	89	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-13 15:55:33	2024-11-13 15:55:33
66	90	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-13 15:59:06	2024-11-13 15:59:06
67	90	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-13 15:59:06	2024-11-13 15:59:06
68	91	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-13 16:03:35	2024-11-13 16:03:35
69	98,102	2	11	601.9800000000000000	603.9800000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-17 23:45:12	2024-11-17 23:45:12
70	103	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-11-17 23:45:47	2024-11-17 23:45:47
71	104	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-07 18:38:12	2024-12-07 18:38:12
72	105	2	11	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-07 18:46:52	2024-12-07 18:46:52
73	106,107	2	12	601.9800000000000000	603.9800000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-07 19:05:38	2024-12-07 19:05:38
74	108	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-07 19:13:13	2024-12-07 19:13:13
75	109	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-07 19:15:29	2024-12-07 19:15:29
76	110	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-07 19:18:02	2024-12-07 19:18:02
77	111	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-07 19:18:29	2024-12-07 19:18:29
78	112	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-07 19:20:10	2024-12-07 19:20:10
79	113	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-07 19:27:01	2024-12-07 19:27:01
80	114	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-07 19:28:35	2024-12-07 19:28:35
81	115	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-07 19:29:36	2024-12-07 19:29:36
82	116	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-12 00:12:50	2024-12-12 00:12:50
83	117	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-12 00:17:18	2024-12-12 00:17:18
84	118	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-12 00:34:22	2024-12-12 00:34:22
85	119	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-12 00:52:13	2024-12-12 00:52:13
86	120	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-12 00:57:04	2024-12-12 00:57:04
87	121	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-12 01:00:23	2024-12-12 01:00:23
88	122	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-12 01:02:01	2024-12-12 01:02:01
89	123	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 03:49:11	2024-12-13 03:49:11
90	124	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 04:10:17	2024-12-13 04:10:17
91	125	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 04:20:30	2024-12-13 04:20:30
92	126	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 04:27:52	2024-12-13 04:27:52
93	127	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 04:41:02	2024-12-13 04:41:02
94	128	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 04:51:35	2024-12-13 04:51:35
95	129	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 05:09:09	2024-12-13 05:09:09
96	130	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 05:30:36	2024-12-13 05:30:36
97	131	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 05:32:30	2024-12-13 05:32:30
98	132	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 05:32:52	2024-12-13 05:32:52
99	133	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 05:34:32	2024-12-13 05:34:32
100	134	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 05:41:25	2024-12-13 05:41:25
101	135	2	12	300.9900000000000000	302.9900000000000000	0.00000000000000000	2.0		1	1	1	1	1	2024-12-13 05:46:04	2024-12-13 05:46:04
\.


--
-- Data for Name: _order_payment_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_payment_detail (transaction_id, order_id, transaction_payload, payment_transaction_id, status, created_date, modify_date) FROM stdin;
1	4	{"status":"1","payment_transaction_id":"2122312312313" }	2122312312313	1	2023-08-10 10:41:55	2023-08-10 10:41:55
2	4	{"status":"1","payment_transaction_id":"2122312312313" }	2122312312313	1	2023-08-10 10:42:48	2023-08-10 10:42:48
3	4	{"status":"1","payment_transaction_id":"2122312312313" }	2122312312313	1	2023-08-10 10:43:38	2023-08-10 10:43:38
\.


--
-- Data for Name: _payment_method_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._payment_method_detail (pay_id, user_id, name, card_number, card_month, card_year, status, created_date, modify_date) FROM stdin;
1	2	Карта МИР	4242424242424242	12	28	1	2023-08-09 10:10:43	2023-08-09 10:10:43
2	2	Карата VISA\r\n	4242424242424243	12	28	1	2023-08-09 10:11:55	2023-08-09 10:11:55
3	2	Карта Т-Банк	4242424242424242	8	2025	1	2023-08-09 20:58:35	2023-08-09 20:58:35
\.


--
-- Data for Name: _product_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._product_detail (prod_id, cat_id, brand_id, type_id, name, detail, unit_name, unit_value, nutrition_weight, price, status, created_date, modify_date) FROM stdin;
5	1	1	1	Органический банан	банан, плод рода Musa, семейства Musaceae, одна из важнейших плодовых культур мира. Банан выращивается в тропиках, и, хотя он наиболее широко потребляется именно в этих регионах, он ценится во всем мире за свой вкус, пищевую ценность и доступность в течение всего года.	 шт.	7	200г	300.99	1	2023-07-31 09:47:35	2024-06-09 11:06:12
6	1	1	1	Красное яблоко	Яблоки содержат ключевые питательные вещества, в том числе клетчатку и антиоксиданты. Они могут принести пользу для здоровья, включая снижение уровня сахара в крови и улучшение здоровья сердца.	кг	1	200г	150.99	1	2023-07-31 09:51:36	2023-07-31 09:51:36
7	1	1	1	Апельсины	Многие виды апельсинов богаты клетчаткой и полезными витаминами, такими как витамин С. Они также содержат антиоксиданты, которые могут принести различную пользу для здоровья, включая поддержку иммунной функции.	кг	1	140г	100.99	1	2023-07-31 09:58:17	2023-07-31 09:58:17
8	3	1	1	Говяжья кость 	При умеренном потреблении говядина может улучшить рост и поддержание мышц. Он также богат железом и цинком. Но высокое потребление говядины связано с повышенным риском сердечно-сосудистых заболеваний и рака.	кг	1	100г	400.99	1	2023-07-31 10:10:09	2023-07-31 10:10:09
9	3	1	1	Цыпленок-бройлер 	При умеренном потреблении говядина может улучшить рост и поддержание мышц. Он также богат железом и цинком. Но высокое потребление говядины связано с повышенным риском сердечно-сосудистых заболеваний и рака.	кг	1	100г	400.99	1	2023-07-31 10:11:55	2023-07-31 10:11:55
10	1	1	1	Болгарский перец	Болгарский перец (Capsicum annuum) – это плоды семейства пасленовых. Они низкокалорийны и богаты витамином С и другими антиоксидантами, что делает их отличным дополнением к здоровой диете.	г	250	100г	200.99	1	2023-07-31 10:14:09	2023-07-31 10:14:09
11	1	1	1	Имбирь	Имбирь может иметь множество преимуществ для здоровья благодаря своим противовоспалительным, противотошнотным и другим свойствам. Это может помочь вам похудеть, справиться с артритом, уменьшить менструальные симптомы и многое другое.	г	250	11г	300.99	1	2023-07-31 10:18:32	2023-07-31 10:18:32
15	3	2	3	Apple1	Apple Detail 1	Kg	2	8	225.99	2	2024-06-02 13:07:23	2024-06-09 11:05:19
16	1	1	1	Test Pro	Detail	Kg	1	-	2.20	2	2024-06-09 03:17:29	2024-06-09 11:04:56
17	6	1	3	Апельсиновый сок	100% сок апельсиновый с мякотью содержит полезные витамины и минералы спелых апельсинов. Насыщенный вкус и аромат апельсинового сока.	мл	970	100мл	200.99	1	2024-11-15 16:13:59	2024-11-15 16:22:10
18	6	1	3	Газированный напиток Pepsi 	Пепси - известный на весь мир безалкогольный прохладительный напиток.	мл	970	100	150.99	1	2024-11-15 16:24:32	2024-11-15 16:25:28
19	6	1	3	Кока кола без сахара	Coca-Cola Diet Coke - это импортный продукт, который относится к категории газированных напитков. Он является одним из самых популярных напитков в мире, благодаря своему неповторимому вкусу и аромату.	мл	250	100	100.99	1	2024-11-15 16:35:35	2024-11-15 16:35:35
20	5	1	3	Яица куриные	Натуральный продукт	шт	10	100	100.99	1	2024-11-15 16:41:09	2024-11-15 16:46:50
21	5	1	3	Белые куриные яйца 	Натуральный продукт	шт	10	100	130.99	1	2024-11-15 16:42:04	2024-11-15 16:42:11
22	5	1	3	Майонез 67%	Благородный вкус и изысканный аромат с тонким и изящным оттенком настоящего испанского оливкового масла.	мл	400	100	130.99	1	2024-11-15 16:46:21	2024-11-15 16:46:29
23	2	1	3	Подсолнечное масло рафинированное	Универсальный продукт, предназначенный как для использования в салатах, так и для жарки.	л	1	100	155.99	1	2024-11-15 17:10:24	2024-11-15 17:10:35
24	2	1	3	Подсолнечное масло 	ALTERO Golden – подсолнечное масло с добавлением оливкового. В Altero Golden соединяются два знакомых вкуса, рождая нечто новое, еще более изящное, чем раньше. Идеальное равновесие вкусовых ощущений и лучшие природные свойства от обеих составляющих – вот что дарит настоящим ценителям сочетание сдержанного подсолнечного и выразительного оливкового масел. Altero Golden – элегантный вкус для утонченных натур.	мл	800	100	185.99	1	2024-11-15 17:12:35	2024-11-15 17:13:15
25	4	1	3	Хлеб Дарницкий ржано-пшеничный нарезанный	Во все времена к хлебу было самое почтительное отношение. Народ посвятил хлебу много пословиц и поговорок, в которых отражается любовное отношение к хлебу. Поэты и писатели, художники и композиторы посвящали ему свои творения. Более 70 лет Вологодский хлебокомбинат радует вологжан свежим, душистым, мягким и вкусным хлебом.	г	325	100	39.99	1	2024-11-15 17:17:46	2024-11-15 17:17:46
26	4	1	3	Хлеб, Батон пшеничный нарезанной	Во все времена к хлебу было самое почтительное отношение. Народ посвятил хлебу много пословиц и поговорок, в которых отражается любовное отношение к хлебу. Поэты и писатели, художники и композиторы посвящали ему свои творения. Более 70 лет Вологодский хлебокомбинат радует вологжан свежим, душистым, мягким и вкусным хлебом.	г	400	100	50.99	1	2024-11-15 17:20:19	2024-11-15 17:20:44
\.


--
-- Data for Name: _promo_code_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._promo_code_detail (promo_code_id, code, title, description, type, min_order_amount, max_discount_amount, offer_price, start_date, end_date, status, created_date, modify_date) FROM stdin;
1	CGREFILL	СКИДКА ДО 90%	Теперь попробуйте сухофрукты и орехи премиум-класса в Happilo. Плоская скидка 34% на заказ. Нет минимальных критериев покупки. Изучите различные виды орехов, сухофруктов, семян, ягод, семейных наборов, комбинаций и многого другого всего по цене от 99 рупий. Просто нажмите на ссылку и посетите страницу предложения, чтобы узнать больше	1	2.0	50.0	10	2023-08-08 00:00:00	2023-09-08 00:00:00	1	2023-08-08 08:57:31	2023-08-08 09:16:31
2	ADREFILL	СКИДКА ДО 50%	Теперь попробуйте сухофрукты и орехи премиум-класса в Happilo. Плоская скидка 34% на заказ. Нет минимальных критериев покупки. Изучите различные виды орехов, сухофруктов, семян, ягод, семейных наборов, комбинаций и многого другого всего по цене от 99 рупий. Просто нажмите на ссылку и посетите страницу предложения, чтобы узнать больше	1	10.0	50.0	10	2023-08-08 00:00:00	2023-09-08 00:00:00	1	2023-08-08 08:57:31	2023-08-08 09:16:31
3	TEST10	Test Code1	Description	1	10.0	50.0	10	2024-05-26 00:00:00	2024-05-30 00:00:00	2	2024-05-26 10:09:22	2024-05-26 10:12:57
4	TEST10	Test 10 per	Description	1	5.0	50.0	10	2024-05-26 00:00:00	2024-05-31 00:00:00	2	2024-05-26 11:03:16	2024-05-26 11:20:29
5	TEST20	Test20 Fixed	Ds	0	200.0	50.0	50	2024-05-26 00:00:00	2024-05-30 00:00:00	2	2024-05-26 11:20:11	2024-05-27 22:44:17
6	TEST20	Test20	Description	0	60.0	60.0	20	2024-05-28 00:00:00	2024-05-29 00:00:00	2	2024-05-27 22:46:03	2024-05-27 22:46:17
7	TEST20	Test 20	Description	0	50.0	50.0	10	2024-05-28 00:00:00	2024-05-29 00:00:00	2	2024-05-27 23:41:52	2024-05-27 23:43:15
\.


--
-- Data for Name: _review_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._review_detail (review_id, order_id, prod_id, user_id, rate, message, status, created_date, modify_date) FROM stdin;
1	10	5	2	5.0		1	2024-11-10 11:14:03	2024-11-10 11:14:03
\.


--
-- Data for Name: _type_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._type_detail (type_id, type_name, image, color, status, created_date, modify_date) FROM stdin;
1	Бобовые	type/202307261610181018aVOpgmY1W1.png	F8A44C	1	2023-07-26 16:10:18	2023-07-26 16:12:39
2	Бобовые	type/202307310959535953siLWeCJ71I.png	F8A44C	2	2023-07-31 09:59:53	2023-07-31 09:59:53
3	Рис	type/202307311000160168a0737aEiC.png	53B175	1	2023-07-31 10:00:16	2023-07-31 10:00:16
4	Test	type/202405211913091394DyHulmF7S.jpg	777777	2	2024-05-21 19:12:41	2024-05-21 19:13:14
5	Test	type/202405230721552155llwQXdWhLB.jpg	BBBB00	2	2024-05-23 07:21:55	2024-05-23 07:22:24
\.


--
-- Data for Name: _user_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._user_detail (user_id, username, user_type, name, email, mobile, mobile_code, password, area_id, auth_token, dervice_token, reset_code, status, created_date, modify_date) FROM stdin;
1	admin	2	admin	admin@admin.com			123456	0	PO1ap5DwJv40MRQzkD3c		0	1	2023-07-26 14:57:59	2024-11-15 15:06:00
2	testuser	1	Артем	test@gmail.com	9815007343	+7	123456	0	HVz5dFLSNlCG7mvc7bxM		3791	1	2023-07-25 10:57:32	2024-12-20 16:25:42
5	User1	1		user1@gmail.com			123456	0	pJYFk5XGrCrGZl92K5qu		0	1	2023-07-29 16:55:36	2023-07-29 16:55:36
6	user1	1		user2@gmail.com			123456	0	g0mtdJJqF9Xn7iDjQmNN		0	1	2023-08-02 11:01:46	2023-08-02 11:01:46
7	user6	1		test7@gmail.com			123456	0	hNytj5vmrr9DmzaSXsyw		0	1	2023-08-02 11:33:19	2023-08-06 23:42:01
8	User12	1		user12@gmail.com			123456	0	fCOkVg8cDDv6mdUwtR1D		0	1	2024-12-20 16:25:33	2024-12-20 16:25:33
\.


--
-- Data for Name: _zone_detail; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._zone_detail (zone_id, name, status, created_date, modify_date) FROM stdin;
1	Zone 1	1	2023-07-28 16:22:28	2023-07-28 16:24:16
2	Zone 2	1	2023-07-28 16:22:34	2023-07-28 16:22:34
3	Zone 4	2	2024-05-14 00:14:41	2024-05-14 00:17:25
4	Zone4	2	2024-05-15 00:02:01	2024-05-15 00:02:18
5	Zone 3	2	2024-05-15 00:19:11	2024-05-15 00:19:33
\.


--
-- PostgreSQL database dump complete
--

