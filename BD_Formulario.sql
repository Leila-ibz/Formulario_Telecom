USE formulario_telecom;

CREATE TABLE Cursos (
    Id_Curso INT PRIMARY KEY,
    Nombre_de_Curso ENUM('Testing', 'Big Data', 'Programacion')
);

CREATE TABLE Instructores (
    Id_Instructor INT PRIMARY KEY,
    Nombre_de_Instructor ENUM('Laura Lazarte', 'Susana Gimenez', 'Maria Perez')
);


CREATE TABLE Estudiantes (
    Id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Apellido VARCHAR(255),
    Correo_Electronico VARCHAR(255),
    Curso_Realizado INT,
    Instructor_a_Cargo INT,
    Contenido_Modulos TEXT,
    Conocimientos_Relevantes TEXT,
    Calidad_Ensenanza ENUM('Excelente', 'Buena', 'Regular', 'Mala'),
    Facil_de_Usar BOOLEAN,
    Recursos_Utiles BOOLEAN,
    Problemas_Tecnicos BOOLEAN,
    Sugerencias_de_Mejora TEXT,
    Recomendaria_Curso BOOLEAN,
    Comentario_Final TEXT,
    Fecha_de_Envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Curso_Realizado) REFERENCES Cursos(Id_Curso),
    FOREIGN KEY (Instructor_a_Cargo) REFERENCES Instructores(Id_Instructor)
);
