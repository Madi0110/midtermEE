CREATE TABLE IF NOT EXISTS users (
                        user_id SERIAL PRIMARY KEY,
                        user_login TEXT NOT NULL,
                        user_password TEXT NOT NULL,
                        user_fname TEXT,
                        user_lname TEXT
                    );
