SET any_join_get_any_from_right_table = 1;

SELECT * FROM (SELECT dummy as a, (toUInt8(0), toUInt8(0)) AS tup FROM system.one)
JOIN (SELECT dummy as a, (toUInt8(0), toUInt8(0)) AS tup FROM system.one)
USING (a, tup);

SELECT * FROM (SELECT dummy as a, (toUInt8(0), toUInt8(0)) AS tup FROM system.one)
GLOBAL ANY FULL OUTER JOIN (SELECT dummy as a, (toUInt8(0), toUInt8(0)) AS tup FROM system.one)
USING (a, tup);
