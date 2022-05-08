COPY realtime_positions(trip_id, vehicle_id, latitude, longitude
) FROM '/mnt/c/Users/HP/PycharmProjects/testArbres/gtfs-rt/realtime_positions.csv' DELIMITER ',' CSV HEADER;

ALTER TABLE realtime_positions add column point geometry;
Update realtime_positions SET point = ST_SetSRID(ST_MakePoint(longitude, latitude),4326);