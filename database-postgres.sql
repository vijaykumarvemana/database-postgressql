
DROP TABLE IF EXISTS public.books CASCADE;

CREATE TABLE
    IF NOT EXISTS
        authors (
            book_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
            name VARCHAR ( 50 ) NOT NULL,
            last_name VARCHAR ( 50 ) NOT NULL,
            birth_year INTEGER NOT NULL,
            country VARCHAR (50) NOT NULL)

INSERT INTO authors(
	name,
	last_name,
	birth_year,
	country
)
VALUES(
	'Christie',
	'Agatha',
	1890,
	'UK'
)       

CREATE TABLE IF NOT EXISTS public.books
(
    book_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    category character varying(50) COLLATE pg_catalog."default" NOT NULL,
	cover character varying(1000) COLLATE pg_catalog."default" NOT NULL,
    author integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	published_at integer NOT NULL
   
)

INSERT INTO books(
    name,
	category,
	cover,
	published_at
)

VALUES(
   'Five Little Pigs',
	'mystery',
	'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSMNvSZ-l_BkRVSPiZJCdAIkhMgRN40ubwKjQH3Gy5WuMlJe-RP',
	1934
)

UPDATE public.authors
UPDATE public.authors
	SET birth_year=1949
	WHERE author_id=1;
	
UPDATE public.books
    SET cover='https://m.media-amazon.com/images/I/51BbtnhHSYL._SY346_.jpg' WHERE book_id=2;
	
SELECT category from books;
SELECT * FROM public.books WHERE name LIKE 'A%';
SELECT * FROM public.books WHERE name LIKE '%high%';
SELECT * FROM public.authors WHERE 2021-birth_year > 60;
SELECT * FROM public.authors WHERE birth_year > 40;
SELECT  category,published_at FROM public.books;
SELECT COUNT(*) FROM books;
SELECT * FROM public.authors ORDER BY 2021-birth_year ASC;
SELECT * FROM public.authors ORDER BY 2021-birth_year DESC;
DELETE FROM public.authors WHERE name='Japan';
DELETE FROM public.books WHERE category='thriller';
DELETE FROM public.authors WHERE name LIKE '%he%';


	