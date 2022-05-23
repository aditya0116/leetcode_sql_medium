select a.id , case when a.p_id is null then 'Root' when b.id is not null then 'Inner' else 'Leaf' end type from Tree a left join Tree b on a.id = b.p_id group by 1 order by 1 ;
