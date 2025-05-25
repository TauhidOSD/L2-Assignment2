-- Active: 1747481365322@@127.0.0.1@5432@conservation_db

--create a ranger table
create table ranger (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(50) not null,
    region varchar(50) not null
)

--create species table

CREATE table species (
    species_id serial PRIMARY key,
    common_name VARCHAR(50) not null,
    scientific_name varchar(50) not null,
    discovery_date DATE not NULL,
    conservation_status VARCHAR(50) CHECK (
        conservation_status IN ('Endanger','Vulnerable', 'Historic')
    )

)

-- crate sightings table
CREATE table sightings (
    sighting_id serial primary key,
    species_id int REFERENCES species(species_id),
    ranger_id int REFERENCES ranger(ranger_id),
    sighting_time TIMESTAMP not null,
    locations VARCHAR(100) not null,
    note text

)


--insert data into ranger table
insert INTO ranger (name,region) VALUES 
('Alice Green', 'Northern Hills'),
('Bob white', 'River Delta'),
('coral king', 'mountain Range');

--check ranger table
select * from ranger

--insert data into species table



