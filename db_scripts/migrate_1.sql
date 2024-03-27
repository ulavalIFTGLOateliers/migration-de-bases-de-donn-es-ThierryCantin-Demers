CREATE TABLE IF NOT EXISTS band
(
    bandName VARCHAR(50) PRIMARY KEY,
    creation YEAR        NOT NULL,
    genre    VARCHAR(50) NOT NULL
);

RENAME TABLE singer TO musician;
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
ALTER TABLE musician
    ADD COLUMN role VARCHAR(50);
ALTER TABLE musician
    ADD COLUMN bandName VARCHAR(50);

ALTER TABLE album
    DROP FOREIGN KEY FK_A_singerName;
ALTER TABLE album
    ADD CONSTRAINT KF_A_musicianName FOREIGN KEY (singerName) REFERENCES musician (musicianName);

INSERT INTO band
VALUES ('Crazy Duo', 2015, 'rock'),
       ('Luna', 2009, 'classical'),
       ('Mysterio', 2019, 'pop');

UPDATE musician SET role = 'vocals', bandName = 'Crazy Duo' WHERE musicianName = 'Alina';
UPDATE musician SET role = 'guitar', bandName = 'Mysterio' WHERE musicianName = 'Mysterio';
UPDATE musician SET role = 'percussion', bandName = 'Crazy Duo' WHERE musicianName = 'Rainbow';
UPDATE musician SET role = 'piano', bandName = 'Luna' WHERE musicianName = 'Luna';
