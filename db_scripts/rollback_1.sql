DROP TABLE IF EXISTS band;

RENAME TABLE musician TO singer;
ALTER TABLE singer RENAME COLUMN musicianName TO singerName;
ALTER TABLE singer DROP COLUMN role;
ALTER TABLE singer DROP COLUMN bandName;

ALTER TABLE album DROP FOREIGN KEY KF_A_musicianName;
ALTER TABLE album ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES singer(singerName) ;