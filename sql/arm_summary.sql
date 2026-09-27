-- Per-arm metric summary. Runs as-is in Amazon Athena (table: robotic_task_logs)
-- and locally in DuckDB (the notebook registers the CSV under the same name).
SELECT
    algorithm,
    COUNT(*)                          AS tasks,
    AVG(duration_min)                 AS avg_duration_min,
    STDDEV_SAMP(duration_min)         AS sd_duration_min,
    AVG(CAST(error_occurred AS DOUBLE)) AS error_rate,
    AVG(energy_kwh)                   AS avg_energy_kwh,
    STDDEV_SAMP(energy_kwh)           AS sd_energy_kwh
FROM robotic_task_logs
GROUP BY algorithm
ORDER BY algorithm;
