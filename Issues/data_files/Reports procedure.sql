USE [SCLS2022]
GO
/****** Object:  StoredProcedure [dbo].[ENUMERATOR_WISE_CLUSTER_PROGRESS]    Script Date: 2/13/2023 3:33:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[ENUMERATOR_WISE_CLUSTER_PROGRESS] (@cluster nvarchar(255)=NULL )
as
Begin
select District,Cluster_code,G3_Supervisor_1 as Supervisor,G2_Interviewer_1 as Enumerator,Household_ID,NamesList_ComaSep as [Roaster Members],i8,i7_12,address_of_household from main
where 1=1
and cluster_code=@cluster
order by G2_Interviewer_1_code,district,cluster_code,household_ID
end
GO
/****** Object:  StoredProcedure [dbo].[SUPERVISOR_WISE_CLUSTER_PROGRESS_REPORT]    Script Date: 2/13/2023 3:33:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------
CREATE PROCEDURE [dbo].[SUPERVISOR_WISE_CLUSTER_PROGRESS_REPORT] (@Supervisor_code int=NULL)
as
begin

With Tbl1 as
(

SELECT        Name_of_District AS [Name of District], Name_of_Survey_Team AS [Team Supervisor], Cluster_Code AS [Cluster Code],
SUM(Completed + Postponed_No_HH_members_or_no_competent_respondent_at_home_at_time_of_visit + Refused + Dwelling_vacant_destroyed_not_found_HH_absent_for_extended_period_or_address_not_of_a_dwelling + Partially_complete_children_not_found_children_missing
+ Incomplete ) AS [Number of HHs Interviewed Excluded No Eligible Children],

SUM(Completed + Postponed_No_HH_members_or_no_competent_respondent_at_home_at_time_of_visit + Refused + Dwelling_vacant_destroyed_not_found_HH_absent_for_extended_period_or_address_not_of_a_dwelling + Partially_complete_children_not_found_children_missing + Incomplete + [No Eligible Children in HH]
) AS [Total Number of HHs Interviewed]


FROM            (SELECT        dbo.MAIN.district AS Name_of_District, G3_Supervisor_1 AS Name_of_Survey_Team, dbo.MAIN.cluster_code AS Cluster_Code, dbo.ReferenceTable.[Count of HH_ID] AS Number_of_Target_HouseHolds, 
(CASE WHEN [i7_12] IN ('1', '1a') THEN 1 ELSE 0 END) AS Completed, (CASE [i7_12] WHEN '2' THEN 1 ELSE 0 END) AS Postponed_No_HH_members_or_no_competent_respondent_at_home_at_time_of_visit, 
(CASE [i7_12] WHEN '3' THEN 1 ELSE 0 END) AS Refused, (CASE [i7_12] WHEN '4' THEN 1 ELSE 0 END) AS Dwelling_vacant_destroyed_not_found_HH_absent_for_extended_period_or_address_not_of_a_dwelling, 
(CASE [i7_12] WHEN '5' THEN 1 ELSE 0 END) AS Partially_complete_children_not_found_children_missing, (CASE [i7_12] WHEN '6' THEN 1 ELSE 0 END) AS Incomplete,
(CASE [i7_12] WHEN '7' THEN 1 ELSE 0 END) AS [No Eligible Children in HH]
FROM            dbo.MAIN INNER JOIN
dbo.ReferenceTable ON replace(dbo.MAIN.cluster_code,'.0','') = dbo.ReferenceTable.Cluster_Code) AS Subquery
GROUP BY Name_of_District, Name_of_Survey_Team, Cluster_Code, Number_of_Target_HouseHolds
)

,TBL2 as
(select distinct(cluster_code)as [Cluster Code],G3_Supervisor_1 as [Supervisor Name]
,count(distinct(household_ID))[Total Households(Excluding duplicated HH)],count(household_ID)[Total Households(Including duplicated HH)]
from main
where 1=1  and G3_Supervisor_1_code=@Supervisor_code
group by cluster_code,G3_Supervisor_1

)
select TBL1.[Name of District],TBL1.[Cluster Code],Tbl1.[Team Supervisor],TBL1.[Total Number of HHs Interviewed]
,TBL2.[Total Households(Excluding duplicated HH)]
,TBL1.[Number of HHs Interviewed Excluded No Eligible Children] AS [Final Excluded No Eligible Children HH]
from TBL1 inner join TBL2 on TBL1.[Cluster Code]=TBL2.[Cluster Code] and tbl1.[Team Supervisor]=tbl2.[Supervisor Name]
and  tbl1.[Total Number of HHs Interviewed]=tbl2.[Total Households(Including duplicated HH)]
order by [Cluster Code]

end



GO
