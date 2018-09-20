
DROP TABLE IF EXISTS lar_2014;
CREATE TABLE lar_2014 (  
    year VARCHAR,
    respondent_id VARCHAR,
    agency_code VARCHAR,
    loan_type VARCHAR,
    property_type VARCHAR,
    loan_purpose VARCHAR,
    occupancy VARCHAR,
    loan_amount VARCHAR,
    preapproval VARCHAR,
    action_type VARCHAR,
    msa VARCHAR,
    state_code VARCHAR,
    county_code VARCHAR,
    census_tract VARCHAR,
    applicant_ethnicity VARCHAR,
    co_applicant_ethnicity VARCHAR,
    applicant_race_1 VARCHAR,
    applicant_race_2 VARCHAR,
    applicant_race_3 VARCHAR,
    applicant_race_4 VARCHAR,
    applicant_race_5 VARCHAR,
    co_applicant_race_1 VARCHAR,
    co_applicant_race_2 VARCHAR,
    co_applicant_race_3 VARCHAR,
    co_applicant_race_4 VARCHAR,
    co_applicant_race_5 VARCHAR,
    applicant_sex VARCHAR,
    co_applicant_sex VARCHAR,
    income VARCHAR,
    purchaser_type VARCHAR,
    denial_1 VARCHAR,
    denial_2 VARCHAR,
    denial_3 VARCHAR,
    rate_spread VARCHAR,
    hoepa_status VARCHAR,
    lien_status VARCHAR,
    edit_status VARCHAR,
    sequence_num VARCHAR,
    population VARCHAR,
    minority_population_percent VARCHAR,
    ffiec_median_income VARCHAR,
    tract_to_msa_income_percent VARCHAR,
    owner_occupied_units VARCHAR,
    one_to_four_units VARCHAR,
    app_date_indicator VARCHAR
);

COPY lar_2014
FROM '{data_path}HMDA_Data_Science_Kit/data/lar/lar_2014.csv'
    DELIMITER ',' ENCODING 'latin1';