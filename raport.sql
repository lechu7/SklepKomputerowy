SELECT 
  OBJECT_NAME(st.object_id) as Nazwa_tabeli, 
  Liczba_rekordow = SUM(st.row_count),
  case when SUM(st.row_count) <100 then 'mala'
	when SUM(st.row_count)<400 then 'srednia'
	else 'duza'
	end as Wielkosc_tabeli
FROM sys.dm_db_partition_stats st
INNER JOIN sys.objects AS o 
  ON o.object_id = st.object_id
WHERE (index_id < 2)
  AND o.type = 'U'
GROUP BY st.object_id
ORDER BY Liczba_rekordow DESC;
