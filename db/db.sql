CREATE TABLE alumno(
    alumno_PK INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR 
);

INSERT INTO alumno (nombre) VALUES ('John Doe');
INSERT INTO alumno (nombre) VALUES ('Jane Smith');
INSERT INTO alumno (nombre) VALUES ('Robert Johnson');
INSERT INTO alumno (nombre) VALUES ('Emily Davis');
INSERT INTO alumno (nombre) VALUES ('James Brown');