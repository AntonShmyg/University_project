
CREATE TABLE lessons(
    id SERIAL PRIMARY KEY,
    object varchar(100) NOT NULL,
    date TIMESTAMP NOT NULL,
    class INT NOT NULL
);

CREATE TABLE specialities(
    id SERIAL PRIMARY KEY,
    naming VARCHAR(60) NOT NULL,
    code VARCHAR(10) NOT NULL,
    depart_id INT NOT NULL
);

CREATE TABLE groups(
    id SERIAL PRIMARY KEY,
    depart_id INT NOT NULL,
    group_code VARCHAR(20) NOT NULL,
    spec_id INT NOT NULL,
    FOREIGN KEY (spec_id) REFERENCES specialities(id)
);

CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(60) NOT NULL,
    group_id INT NOT NULL,
    spec_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(id),
    FOREIGN KEY (spec_id) REFERENCES specialities(id)
);

CREATE TABLE schedule(
    lesson_id INT NOT NULL,
    group_id INT NOT NULL,
    FOREIGN KEY (lesson_id) REFERENCES lessons(id),
    FOREIGN KEY (group_id) REFERENCES groups(id)
);

CREATE TABLE journal(
    id SERIAL PRIMARY KEY,
    stud_id INT NOT NULL,
    lesson_id INT NOT NULL,
    FOREIGN KEY (stud_id) REFERENCES students(id),
    FOREIGN KEY (lesson_id) REFERENCES lessons(id)
);
