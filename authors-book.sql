-- Create tables
CREATE TABLE IF NOT EXISTS
	authors (
	 	author_id INTEGER GENERATED ALWAYS AS IDENTITY,
		name VARCHAR (30) NOT NULL,
		last_name VARCHAR (30) NOT NULL,
		country VARCHAR (30) NOT NULL,
		birth_year INTEGER NOT NULL
		PRIMARY KEY(author_id)
	);
	 
CREATE TABLE 
	books (
	   book_id INTEGER GENERATED ALWAYS AS IDENTITY,
	   author_id INTEGER,
	   book_name VARCHAR(30) NOT NULL,
	   category VARCHAR(30),
	   cover TEXT NOT NULL,
	   created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	   updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	   published_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	   PRIMARY KEY(book_id),
	   CONSTRAINT fk_author
		  FOREIGN KEY(author_id) 
		  REFERENCES authors(author_id)
);

-- Insert authors
INSERT INTO public.authors(name, last_name, country, birth_year) VALUES('Dan', 'Brown', 'US', 1964);
INSERT INTO public.authors(name, last_name, country, birth_year) VALUES('Agatha', 'Christie', 'UK', 1890);
INSERT INTO public.authors(name, last_name, country, birth_year) VALUES('Paulo', 'Coelho', 'Brazil', 1947);
INSERT INTO public.authors(name, last_name, country, birth_year) VALUES('Ken', 'Follett', 'UK', 1949);
INSERT INTO public.authors(name, last_name, country, birth_year) VALUES('John', 'Grisham', 'US', 1955);
INSERT INTO public.authors(name, last_name, country, birth_year) VALUES('Stephen', 'King', 'US', 1947);
INSERT INTO public.authors(name, last_name, country, birth_year) VALUES('Haruki', 'Murakami', 'Japan', 1949);
INSERT INTO public.authors(name, last_name, country, birth_year) VALUES('James', 'Patterson', 'US', 1947);

-- Insert 3 books per author

-- Insert 5 Agatha Christie books

-- Update author birth_year given an author_id

-- Update book cover given a book_id

-- Update authors birth_year

-- Select book from a category

-- Select books which starts with a letter

-- Select books which include a given word

-- Select authors which are “not” older than 60 years ()

-- Select authors which are  older than 40 years old

-- Select authors which are  older than 40 years old

-- Select only category,published_at from books

-- Count all books

-- Select authors and order them by age (calculate age in SQL)

-- Select authors and order them by birth_year desc