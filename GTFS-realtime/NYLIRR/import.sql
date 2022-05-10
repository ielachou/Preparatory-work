COPY vehicle_positions(trip_id, vehicle_id, latitude, longitude
) FROM './preprocessing/realtime_positions.csv' DELIMITER ',' CSV HEADER;

