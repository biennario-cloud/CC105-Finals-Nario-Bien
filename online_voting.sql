-- Create the database
CREATE DATABASE IF NOT EXISTS online_voting;
USE online_voting;

-- Table for storing voters
CREATE TABLE Voters (
    voter_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

-- Table for storing candidates
CREATE TABLE Candidates (
    candidate_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    party VARCHAR(50) NOT NULL
);

-- Table for recording votes
CREATE TABLE Votes (
    vote_id INT AUTO_INCREMENT PRIMARY KEY,
    voter_id INT NOT NULL,
    candidate_id INT NOT NULL,
    vote_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (voter_id) REFERENCES Voters(voter_id),
    FOREIGN KEY (candidate_id) REFERENCES Candidates(candidate_id)
);

-- Sample data for voters
INSERT INTO Voters (name, email) VALUES
('Juan Dela Cruz', 'juan@email.com'),
('Maria Santos', 'maria@email.com'),
('Pedro Reyes', 'pedro@email.com');

-- Sample data for candidates
INSERT INTO Candidates (name, party) VALUES
('Alex Reyes', 'Unity Party'),
('Jamie Cruz', 'Progressive Alliance'),
('Lina Gomez', 'Forward Party');

-- Sample data for votes
INSERT INTO Votes (voter_id, candidate_id, vote_date) VALUES
(1, 2, '2026-01-07'),
(2, 1, '2026-01-06');
