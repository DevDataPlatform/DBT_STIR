{{ config(
  materialized='table',
  schema=generate_schema_name('prod_intermediate', this)
) }}

with cte as (
  {{ flatten_json(
      model_name = source('source_classroom_surveys', 'indonesia'),
      json_column = 'data'
  ) }}
)

SELECT 
    starttime,
    "SubmissionDate",
    coachee_gender,
    c2a,
    remarks_coaching,
    facilitator_others,
    teacher_others,
    meeting,
    CAST(s1 AS bigint) AS s1,
    CAST(se1 AS bigint) AS se1,
    CAST(s2 AS bigint) AS s2,
    CAST(s3 AS bigint) AS s3,
    CAST(se3 AS bigint) AS se3,
    CAST(ge_1 AS bigint) AS ge_1,
    CAST(s4 AS bigint) AS s4,
    CAST(se2 AS bigint) AS se2,
    CAST(se5 AS bigint) AS se5,
    n5_sece,
    CAST(se4 AS bigint) AS se4,
    CAST(ge_4 AS bigint) AS ge_4,
    CAST(ge_5 AS bigint) AS ge_5,
    CAST(expected AS bigint) AS expected,
    CAST(cro13av_settlers___stirrers AS bigint) AS cro13av_settlers___stirrers,
    CAST(c1 AS bigint) AS c1,
    CAST(c2 AS bigint) AS c2,
    CAST(c3 AS bigint) AS c3,
    caseid,
    meeting_coaching,
    "KEY",
    cro7a,
    n_seca,
    b_secb,
    n_secc,
    name_of_the_coach,
    CAST(cro13av_growth_mindset AS bigint) AS cro13av_growth_mindset,
    n4_sece,
    review_quality,
    CAST(cro10 AS bigint) AS cro10,
    facilitator_role_coaching,
    review_status,
    "CompletionDate",
    facilitator_role,
    endtime,
    CAST(e1 AS bigint) AS e1,
    CAST(e2 AS bigint) AS e2,
    coachee_gender_specify,
    CAST(e3 AS bigint) AS e3,
    CAST(cro13av_the_mistakes_factory AS bigint) AS cro13av_the_mistakes_factory,
    CAST(cro8 AS bigint) AS cro8,
    CAST(cro9 AS bigint) AS cro9,
    CAST(cro7 AS bigint) AS cro7,
    CAST(cro4 AS bigint) AS cro4,
    CAST(cro5 AS bigint) AS cro5,
    CAST(cro2 AS bigint) AS cro2,
    CAST(cro3 AS bigint) AS cro3,
    CAST(duration_coaching AS bigint) AS duration_coaching,
    CAST(cro1 AS bigint) AS cro1,
    date,
    n1,
    n2,
    n3,
    n4,
    n1_sece,
    CAST(cro13av_collab___coop_learning AS bigint) AS cro13av_collab___coop_learning,
    n1_secd,
    CAST(cro13av_pairwork___groupwork AS bigint) AS cro13av_pairwork___groupwork,
    cro8a,
    observer_gender,
    observer_role,
    CAST(cro11 AS bigint) AS cro11,
    CAST(cro12 AS bigint) AS cro12,
    name_of_the_coachee,
    remarks_classroom,
    "instanceID",
    devicephonenum,
    CAST(cro13av_differentiated_instruction AS bigint) AS cro13av_differentiated_instruction,
    CAST(cro13av_digital_learning AS bigint) AS cro13av_digital_learning,
    CAST(cro13av_normalising_error AS bigint) AS cro13av_normalising_error,
    teacher_gender,
    n2_sece,
    CAST(cro13c AS bigint) AS cro13c,
    district_indonesia,
    CAST(cro13b AS bigint) AS cro13b,
    n3_sece,
    location_indonesia,
    forms_indonesia,
    CAST(cc1 AS bigint) AS cc1,
    CAST(duration AS bigint) AS duration,
    CAST(cc3 AS bigint) AS cc3,
    CAST(cc2 AS bigint) AS cc2,
    CAST(cc5 AS bigint) AS cc5,
    CAST(femalepresent AS bigint) AS femalepresent,
    CAST(cc4 AS bigint) AS cc4,
    observation_term,
    date_coaching,
    deviceid,
    CAST(formdef_version AS bigint) AS formdef_version,
    c1a,
    device_info,
    district_kota_kediri,
    cro13a,
    role_coaching,
    facilitator_gender,
    remarks,
    CAST(malepresent AS bigint) AS malepresent,
    username,
    CAST(gc1 AS bigint) AS gc1,
    CAST(gc2 AS bigint) AS gc2,
    CAST(gc3 AS bigint) AS gc3,
    CAST(gc4 AS bigint) AS gc4,
    CAST(gc5 AS bigint) AS gc5
FROM cte
