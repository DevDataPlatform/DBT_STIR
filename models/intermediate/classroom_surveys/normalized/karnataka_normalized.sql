{{ config(
  materialized='table'
) }}

with cte as (
  {{ flatten_json(
    model_name = source('source_classroom_surveys_dev', 'karnataka'),
      json_column = 'data'
  ) }}
)

SELECT 
    date,
    n1,
    n2,
    n3,
    n4,
    starttime,
    "SubmissionDate",
    CAST(facilitator_role_stir_dl AS bigint) AS facilitator_role_stir_dl,
    coach_gender,
    coachee_gender,
    c2a,
    n1_secd,
    CAST(observer_gender_male AS bigint) AS observer_gender_male,
    remarks_coaching,
    CAST(facilitator_gender_male AS bigint) AS facilitator_gender_male,
    CAST(observer_role_na AS bigint) AS observer_role_na,
    meeting,
    CAST(s1 AS bigint) AS s1,
    CAST(se1 AS bigint) AS se1,
    CAST(s2 AS bigint) AS s2,
    CAST(observer_role_brp AS bigint) AS observer_role_brp,
    CAST(s3 AS bigint) AS s3,
    CAST(se3 AS bigint) AS se3,
    CAST(observer_role_coaching_nodal AS bigint) AS observer_role_coaching_nodal,
    CAST(s4 AS bigint) AS s4,
    CAST(se2 AS bigint) AS se2,
    CAST(se5 AS bigint) AS se5,
    CAST(se4 AS bigint) AS se4,
    CAST(facilitator_role_mrp AS bigint) AS facilitator_role_mrp,
    observer_role,
    CAST(expected AS bigint) AS expected,
    coach_gender_specify,
    name_of_the_coachee,
    district_kt,
    CAST(c1 AS bigint) AS c1,
    CAST(c2 AS bigint) AS c2,
    CAST(c3 AS bigint) AS c3,
    CAST(facilitator_gender_female AS bigint) AS facilitator_gender_female,
    "instanceID",
    devicephonenum,
    CAST(observer_role_coaching_crp AS bigint) AS observer_role_coaching_crp,
    caseid,
    CAST(facilitator_role_crp AS bigint) AS facilitator_role_crp,
    meeting_coaching,
    "KEY",
    CAST(observer_role_stir_dl AS bigint) AS observer_role_stir_dl,
    CAST(observer_role_coaching_na AS bigint) AS observer_role_coaching_na,
    n_seca,
    n_secc,
    CAST(facilitator_role_external AS bigint) AS facilitator_role_external,
    CAST(cc1 AS bigint) AS cc1,
    CAST(duration AS bigint) AS duration,
    CAST(cc3 AS bigint) AS cc3,
    name_of_the_coach,
    CAST(cc2 AS bigint) AS cc2,
    CAST(observer_role_diet_principal AS bigint) AS observer_role_diet_principal,
    CAST(cc5 AS bigint) AS cc5,
    CAST(femalepresent AS bigint) AS femalepresent,
    CAST(observer_role_dc AS bigint) AS observer_role_dc,
    CAST(observer_role_coaching_stir_dl AS bigint) AS observer_role_coaching_stir_dl,
    CAST(cc4 AS bigint) AS cc4,
    review_quality,
    facilitator_role_coaching,
    review_status,
    "CompletionDate",
    observation_term,
    CAST(observer_role_crp AS bigint) AS observer_role_crp,
    endtime,
    date_coaching,
    CAST(e1 AS bigint) AS e1,
    CAST(e2 AS bigint) AS e2,
    deviceid,
    CAST(observer_role_nodal AS bigint) AS observer_role_nodal,
    coachee_gender_specify,
    CAST(observer_gender_female AS bigint) AS observer_gender_female,
    CAST(observer_role_coaching_brp AS bigint) AS observer_role_coaching_brp,
    CAST(formdef_version AS bigint) AS formdef_version,
    c1a,
    device_info,
    CAST(observer_role_coaching_diet_principal AS bigint) AS observer_role_coaching_diet_principal,
    role_coaching,
    CAST(facilitator_role_brp AS bigint) AS facilitator_role_brp,
    CAST(duration_coaching AS bigint) AS duration_coaching,
    forms,
    remarks,
    CAST(malepresent AS bigint) AS malepresent,
    username,
    division_kt
FROM cte