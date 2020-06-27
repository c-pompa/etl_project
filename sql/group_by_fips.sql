-- Query multiple tables, group by fips
SELECT dn.fips, dn.county_name, statewide_db.cddist
FROM (SELECT district_name_num.fips, district_name_num.county_name FROM district_name_num
GROUP BY district_name_num.fips) as dn JOIN statewide_db ON dn.fips = statewide_db.fips
GROUP BY dn.fips, dn.county_name, statewide_db.cddist
ORDER BY dn.fips






