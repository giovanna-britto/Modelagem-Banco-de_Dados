-- Criação da tabela de usuários
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(4) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(255),
    social_name VARCHAR(255),
    phone VARCHAR(50) NOT NULL
);

-- Criação da tabela de formulários de revisão
CREATE TABLE review_form (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id),
    age INTEGER NOT NULL,
    gender VARCHAR(50) NOT NULL,
    education VARCHAR(50) NOT NULL,
    housing VARCHAR(50) NOT NULL,
    family_composition VARCHAR(255) NOT NULL,
    income_bracket INTEGER NOT NULL,
    household_members INTEGER NOT NULL,
    country VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    neighborhood VARCHAR(50) NOT NULL
);

-- Criação da tabela de formulário presente
CREATE TABLE present_form (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id),
    dog_name VARCHAR(50) NOT NULL,
    gender VARCHAR(50) NOT NULL,
    belongs_to VARCHAR(50) NOT NULL,
    neutered BOOLEAN NOT NULL,
    neuter_date DATE NOT NULL,
    cohabitation_duration INTEGER NOT NULL,
    first_dog BOOLEAN NOT NULL,
    dog_count INTEGER NOT NULL,
    cat_count INTEGER NOT NULL,
    dog_age INTEGER NOT NULL,
    breed VARCHAR(255) NOT NULL,
    acquisition_source VARCHAR(255) NOT NULL,
    paid BOOLEAN NOT NULL,
    age_arrived INTEGER NOT NULL,
    dog_personality TEXT NOT NULL,
    dog_characteristics TEXT NOT NULL,
    adoption_agents VARCHAR(255) NOT NULL,
    other_dog TEXT NOT NULL,
    vet_visits INTEGER NOT NULL,
    about_dog TEXT NOT NULL,
    reasons_for_owning_dog_id INTEGER REFERENCES reasons_for_owning_dog(id)
);

-- Criação da tabela de formulário passado
CREATE TABLE past_form (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id),
    dog_name VARCHAR(255) NOT NULL,
    belongs_to VARCHAR(50) NOT NULL,
    dog_personality TEXT NOT NULL,
    cohabitation_time INTEGER NOT NULL,
    first_dog BOOLEAN NOT NULL,
    cat_count INTEGER NOT NULL,
    dog_count INTEGER NOT NULL,
    dog_years INTEGER NOT NULL,
    neutered BOOLEAN NOT NULL,
    neuter_date DATE NOT NULL,
    dog_breed VARCHAR(50) NOT NULL,
    dog_origin VARCHAR(255) NOT NULL,
    paid_value VARCHAR(50) NOT NULL,
    pet_characteristics TEXT NOT NULL,
    adoption_agents VARCHAR(255) NOT NULL,
    liked_most TEXT NOT NULL,
    liked_least TEXT NOT NULL,
    vet_visits BOOLEAN NOT NULL,
    vet_visit_count INTEGER NOT NULL,
    stopped_cohabitation DATE NOT NULL,
    reasons_stopped_cohabitation INTEGER NOT NULL,
    would_cohabitate_new_dog TEXT NOT NULL,
    reasons_for_owning_dog_id INTEGER REFERENCES reasons_for_owning_dog(id)
);

-- Criação da tabela de formulário futuro
CREATE TABLE future_form (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id),
    dog_size VARCHAR(50) NOT NULL,
    dog_coat VARCHAR(50) NOT NULL,
    dog_color VARCHAR(50) NOT NULL,
    dog_gender VARCHAR(50) NOT NULL,
    dog_age INTEGER NOT NULL,
    dog_breed VARCHAR(255) NOT NULL,
    dog_name VARCHAR(255) NOT NULL,
    name_reason TEXT NOT NULL,
    intent VARCHAR(255) NOT NULL,
    when_to_buy DATE NOT NULL,
    dog_personality TEXT NOT NULL,
    researched_expenses VARCHAR(255) NOT NULL,
    reasons_for_owning_dog_id INTEGER REFERENCES reasons_for_owning_dog(id)
);

-- Criação da tabela de formulário nulo
CREATE TABLE null_form (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    reasons_not_want TEXT
);

-- Criação da tabela de razões para possuir um cachorro
CREATE TABLE reasons_for_owning_dog (
    id SERIAL PRIMARY KEY,
    kids_company BOOLEAN NOT NULL DEFAULT false,
    adults_company BOOLEAN NOT NULL DEFAULT false,
    appearance BOOLEAN NOT NULL DEFAULT false,
    dogs_company BOOLEAN NOT NULL DEFAULT false,
    responsibility_to_children BOOLEAN NOT NULL DEFAULT false,
    friends_have BOOLEAN NOT NULL DEFAULT false,
    protection BOOLEAN NOT NULL DEFAULT false,
    help_friend_couldnt_keep_it BOOLEAN NOT NULL DEFAULT false,
    save_my_life BOOLEAN NOT NULL DEFAULT false,
    was_cute BOOLEAN NOT NULL DEFAULT false,
    chose_me BOOLEAN NOT NULL DEFAULT false,
    gift BOOLEAN NOT NULL DEFAULT false
);
