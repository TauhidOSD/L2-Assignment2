-- Active: 1747481365322@@127.0.0.1@5432@conservation_db

--create a ranger table
create table ranger (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(50) not null,
    region varchar(50) not null
)

--create species table

CREATE table  species (
    species_id serial PRIMARY key,
    common_name VARCHAR(50) not null,
    scientific_name varchar(50) not null,
    discovery_date DATE not NULL,
    conservation_status VARCHAR(50) CHECK (
        conservation_status IN ('Endangered','Vulnerable', 'Historic')
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

insert into species (common_name, scientific_name, discovery_date,conservation_status) VALUES 
('snow leopard','Panther uncia','1775-01-01','Endangered' ),
('Bengal Tiger','Panther tigris tigris','1758-01-01','Endangered' ),
('Red Panda','Ailurus fulgens','1825-01-01','Vulnerable' ),
('Asiatic Elephant','Elephas maximus indicus','1758-01-01','Endangered' );

--check species table
select * from species


-- insert data into sightings table

insert into sightings (sighting_id, species_id, ranger_id, locations,sighting_time,note) VALUES
(1,1,1, 'peak ridge', '2024-05-10 07:45:00', 'camera trap image captured'),
(2,2,2, 'Backwood area', '2024-05-12 16:20:00', 'juvenile seen'),
(3,3,3, 'Bamboo grove East', '2024-05-15 09:10:00', 'Feeding observed'),
(4,1,2, 'Snowfall pass', '2024-05-18 18:30:00', null);


SELECT * from sightings

--Q1: register a new ranger
insert into ranger (name, region) VALUES('Derek Fox', 'Costal Plains');

--Q2: Count unique species ever sighted
SELECT count(DISTINCT species_id) as unique_species_counts
from sightings

--find sighting where location includes "pass"

select * from sightings
where locations ILIKE '%pass%';

--list each anger names and their total number of sighting

select ranger.name, count(sightings.sighting_id) from ranger
left join sightings on ranger.ranger_id = sightings.ranger_id
group by ranger.name  
order by ranger.name;