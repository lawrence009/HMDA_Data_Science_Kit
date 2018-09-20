
DROP TABLE IF EXISTS lar_2008;
CREATE TABLE lar_2008(   
    year VARCHAR,
    respondent_id VARCHAR,
    agency_code VARCHAR,
    loan_type VARCHAR,
    loan_purpose VARCHAR,
    occupancy VARCHAR,
    loan_amount VARCHAR,
    action_type VARCHAR,
    msa VARCHAR,
    state_code VARCHAR,
    county_code VARCHAR,
    census_tract VARCHAR,
    applicant_sex VARCHAR,
    co_applicant_sex VARCHAR,
    income VARCHAR,
    purchaser_type VARCHAR,
    denial_1 VARCHAR,
    denial_2 VARCHAR,
    denial_3 VARCHAR,
    edit_status VARCHAR,
    property_type VARCHAR,
    preapproval VARCHAR,
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
    rate_spread VARCHAR,
    hoepa_status VARCHAR,
    lien_status VARCHAR,
    sequence_num VARCHAR
    );

CREATE TEMPORARY TABLE lar_load
(LAR VARCHAR); -- LAR contains an entire LAR record

COPY lar_load
-- Change this path to your local data path.
FROM '{data_path}HMDA_Data_Science_Kit/data/lar/lar_2008.dat';

COMMIT;

INSERT INTO lar_2008 (
    year,
    respondent_id,
    agency_code,
    loan_type,
    loan_purpose,
    occupancy,
    loan_amount,
    action_type,
    msa,
    state_code,
    county_code,
    census_tract,
    applicant_sex,
    co_applicant_sex,
    income,
    purchaser_type,
    denial_1,
    denial_2,
    denial_3,
    edit_status,
    property_type,
    preapproval,
    applicant_ethnicity,
    co_applicant_ethnicity,
    applicant_race_1,
    applicant_race_2,
    applicant_race_3,
    applicant_race_4,
    applicant_race_5,
    co_applicant_race_1,
    co_applicant_race_2,
    co_applicant_race_3,
    co_applicant_race_4,
    co_applicant_race_5,
    rate_spread,
    hoepa_status,
    lien_status,
    sequence_num
    )

SELECT 
SUBSTRING(LAR, 1,4),
SUBSTRING(LAR, 5,10),
SUBSTRING(LAR, 15,1),
SUBSTRING(LAR, 16,1),
SUBSTRING(LAR, 17,1),
SUBSTRING(LAR, 18,1),
SUBSTRING(LAR, 19,5),
SUBSTRING(LAR, 24,1),
SUBSTRING(LAR, 25,5),
SUBSTRING(LAR, 30,2),
SUBSTRING(LAR, 32,3),
SUBSTRING(LAR, 35,7),
SUBSTRING(LAR, 42,1),
SUBSTRING(LAR, 43,1),
SUBSTRING(LAR, 44,4),
SUBSTRING(LAR, 48,1),
SUBSTRING(LAR, 49,1),
SUBSTRING(LAR, 50,1),
SUBSTRING(LAR, 51,1),
SUBSTRING(LAR, 52,1),
SUBSTRING(LAR, 53,1),
SUBSTRING(LAR, 54,1),
SUBSTRING(LAR, 55,1),
SUBSTRING(LAR, 56,1),
SUBSTRING(LAR, 57,1),
SUBSTRING(LAR, 58,1),
SUBSTRING(LAR, 59,1),
SUBSTRING(LAR, 60,1),
SUBSTRING(LAR, 61,1),
SUBSTRING(LAR, 62,1),
SUBSTRING(LAR, 63,1),
SUBSTRING(LAR, 64,1),
SUBSTRING(LAR, 65,1),
SUBSTRING(LAR, 66,1),
SUBSTRING(LAR, 67,5),
SUBSTRING(LAR, 72,1),
SUBSTRING(LAR, 73,1),
SUBSTRING(LAR, 74,7)

FROM lar_load;
COMMIT;
DROP TABLE IF EXISTS lar_load; 
COMMIT;

