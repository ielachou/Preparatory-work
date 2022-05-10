ALTER TABLE realtime_positions add column point geometry;
Update realtime_positions SET point = ST_SetSRID(ST_MakePoint(longitude, latitude),4326);