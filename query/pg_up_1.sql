
CREATE TABLE specialities(
    id SERIAL PRIMARY KEY,
    naming VARCHAR(60) NOT NULL,
    code VARCHAR(10) NOT NULL
);

CREATE TABLE groups(
    id SERIAL PRIMARY KEY,
    depart_id INT NOT NULL,
    spec_id INT NOT NULL,
    FOREIGN KEY (spec_id) REFERENCES specialities(id)
);

CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(60) NOT NULL,
    group_id INT NOT NULL,
    cours_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

CREATE TABLE objects(
    id SERIAL PRIMARY KEY,
    naming varchar(30) NOT NULL,
    lection_id INT NOT NULL,
    FOREIGN KEY (lection_id) REFERENCES lections(id)
);

CREATE TABLE courses(
    id SERIAL PRIMARY KEY,
    naming VARCHAR(60) NOT NULL,
    spec_id INT NOT NULL,
    obj_id INT NOT NULL,
    FOREIGN KEY (spec_id) REFERENCES specialities(id),
    FOREIGN KEY (obj_id) REFERENCES objects(id)
);

CREATE TABLE schedules(
    id SERIAL PRIMARY KEY,
    obj_id INT NOT NULL,
    date TIMESTAMP NOT NULL,,
    FOREIGN KEY (obj_id) REFERENCES objects(id)
);

CREATE TABLE attendances(
    id SERIAL PRIMARY KEY,
    stud_id INT NOT NULL,
    sched_id INT NOT NULL,
    FOREIGN KEY (stud_id) REFERENCES students(id),
    FOREIGN KEY (sched_id) REFERENCES schedules(id)
);

CREATE TABLE lections(
    id SERIAL PRIMARY KEY,
    material_id INT NOT NULL,
    eqiup varchar(60)
);