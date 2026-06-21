
CREATE TABLE plant_master (
    plant_id INT PRIMARY KEY,
    plant_name VARCHAR(255),
    country VARCHAR(100),
    plant_type VARCHAR(100),
    capacity_mw FLOAT,
    installation_year INT,
    operator_company VARCHAR(255)
);

CREATE TABLE energy_generation (
    generation_id BIGINT PRIMARY KEY,
    plant_id INT,
    datetime DATETIME,
    energy_generated_mwh FLOAT,
    downtime_minutes INT,
    efficiency_percent FLOAT
);

CREATE TABLE sensor_readings (
    sensor_id BIGINT PRIMARY KEY,
    plant_id INT,
    timestamp DATETIME,
    temperature FLOAT,
    vibration_level FLOAT,
    voltage FLOAT,
    humidity FLOAT
);

CREATE TABLE maintenance_logs (
    maintenance_id BIGINT PRIMARY KEY,
    plant_id INT,
    maintenance_type VARCHAR(100),
    issue_severity VARCHAR(50),
    maintenance_cost FLOAT,
    downtime_hours FLOAT,
    maintenance_date DATE
);

CREATE TABLE energy_sales (
    sale_id BIGINT PRIMARY KEY,
    plant_id INT,
    customer_type VARCHAR(100),
    energy_sold_mwh FLOAT,
    revenue_usd FLOAT,
    sale_date DATE
);

CREATE TABLE weather_data (
    weather_id BIGINT PRIMARY KEY,
    country VARCHAR(100),
    timestamp DATETIME,
    wind_speed FLOAT,
    sunlight_hours FLOAT,
    rainfall_mm FLOAT,
    temperature FLOAT
);

CREATE TABLE carbon_credits (
    credit_id BIGINT PRIMARY KEY,
    plant_id INT,
    credits_generated FLOAT,
    market_price_usd FLOAT,
    transaction_date DATE
);

CREATE TABLE grid_failures (
    failure_id BIGINT PRIMARY KEY,
    plant_id INT,
    failure_type VARCHAR(100),
    outage_hours FLOAT,
    financial_loss_usd FLOAT,
    failure_date DATE
);
