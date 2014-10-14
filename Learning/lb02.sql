select division_name, count(member_id)
 from member,division
 where member.division_id=division.division_id
 group by division.division_id
 order by division.division_id;
