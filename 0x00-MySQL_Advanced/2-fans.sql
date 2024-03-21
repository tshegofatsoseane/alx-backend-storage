-- SQL script to rank country origins of bands
-- Ordered by number of non-unique fans
-- Column must be origin and nb_fans

SELECT origin, SUM(fans) as nb_fans FROM metal_bands
GROUP BY origin ORDER BY nb_fans DESC;
