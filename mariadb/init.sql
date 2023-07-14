CREATE TABLE messages (
    m_id INT NOT NULL AUTO_INCREMENT,
    m_date DATETIME,
    m_name VARCHAR(100) NOT NULL,  
    m_message LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL 
    CHECK (JSON_VALID(`m_message`)
     PRIMARY KEY (id)
);