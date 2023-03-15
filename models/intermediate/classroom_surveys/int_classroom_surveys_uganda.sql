{{ config(
  materialized='table',
   indexes=[
      {'columns': ['_airbyte_ab_id'], 'type': 'hash'}
    ],
    enabled=true,
    schema='intermediate'
) }}

select
CASE 
  When forms_uganda = 'cc_ug' then 'coaching_calls_uganda'
  When forms_uganda = 'del_ins' then 'district_education_leader_institute'
  When forms_uganda = 'cct_ins' then 'center_coordinating_tutors_institute'
  When forms_uganda = 'sel_ins' then 'school_education_leader_institute'
  When forms_uganda = 'asshu_nb' then 'association_of_secondary_school_headteachers_of_uganda_national_bootcamp'
  When forms_uganda = 'dam_ug' then 'district_alignment_meeting_uganda'
  When forms_uganda = 'nm_ug' then 'network_meeting_uganda'
  When forms_uganda = 'cro_ug' then 'classroom_observation_uganda'
  When forms_uganda = 'mid_term_ug' then 'mid_term_meetups_Uganda'
END As forms,
{{ dbt_utils.star(from= source('source_classroom_surveys', 'uganda'), except=[district_bunyoro,district_kigezi,
    district_masaka, district_rwenzori, district_central, 's1', 's2', 's3', 'e1', 'e2','c1', 'c1a', 'c2', 'c2a', 'c3', 'se1', 'se2', 'se3', 'date', 'date_coaching','starttime','endtime','submissiondate','completiondate']) }},
'Uganda' AS country, location_uganda AS region, coalesce (district_bunyoro,district_kigezi,district_masaka, district_rwenzori, district_central) as sub_region,
to_date(coalesce(date,date_coaching), 'Mon, DD YYYY') as observation_date,
COALESCE(cro1, s1) as s1,
COALESCE(cro2, s2) as s2,  
COALESCE(cro3, s3) as s3, 
COALESCE(cro4, e1) as e1, 
COALESCE(cro5, e2) as e2, 
COALESCE(cro7, c1) as c1,
COALESCE(cro7a, c1a) as c1a, 
COALESCE(cro8, c2) as c2, 
COALESCE(cro8a, c2a) as c2a, 
COALESCE(cro9, c3) as c3, 
COALESCE(cro10, se1) as se1,
COALESCE(cro11, se2) as se2, 
COALESCE(cro12, se3) as se3, 
to_timestamp(starttime,'Mon, DD YYYY HH:MI:SS AM') AS starttime,
to_timestamp(endtime,'Mon, DD YYYY HH:MI:SS AM') AS endtime,
to_timestamp(completiondate,'Mon, DD YYYY HH:MI:SS AM') AS completiondate,
to_timestamp(submissiondate,'Mon, DD YYYY HH:MI:SS AM') AS submissiondate
from {{ source('source_classroom_surveys', 'uganda') }} 
