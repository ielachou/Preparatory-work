CREATE EXTENSION IF NOT EXISTS MobilityDB CASCADE;

COPY quays(id, name, centroid_val)
FROM '/tmp/Preparatory-work/NeTEx/netex-csvs/quays.txt' DELIMITER ',' CSV HEADER;

COPY dayTypes(id) 
FROM '/tmp/Preparatory-work/NeTEx/netex-csvs/dayTypes.txt' DELIMITER ',' CSV HEADER;

Copy journeyPatterns(id, distance)
FROM '/tmp/Preparatory-work/NeTEx/netex-csvs/serviceJourneyPatterns.txt' DELIMITER ',' CSV HEADER;

COPY operators(id, name, phone, url, organisationType)
FROM '/tmp/Preparatory-work/NeTEx/netex-csvs/operators.txt' DELIMITER ',' CSV HEADER;

COPY lines(id, name, transportMode, publiccode)
FROM '/tmp/Preparatory-work/NeTEx/netex-csvs/lines.txt' DELIMITER ',' CSV HEADER;

COPY StopPlaces(id, name, centroid_val, quayID)
FROM '/tmp/Preparatory-work/NeTEx/netex-csvs/stopPlaces.txt' DELIMITER ',' CSV HEADER;

Copy ServiceJourneys(id, dayTypeRef, ServiceJourneyPatternRef, operatorRef)
FROM '/tmp/Preparatory-work/NeTEx/netex-csvs/serviceJourneys.txt' DELIMITER ',' CSV HEADER;

Copy ScheduledStopPoints(id, location_val)
FROM '/tmp/Preparatory-work/NeTEx/netex-csvs/scheduledStopPoints.txt' DELIMITER ',' CSV HEADER;

Copy StopAssignments(id, stopAssOrder, ScheduledStopPointRef, StopPlaceRef, quayRef)
FROM '/tmp/Preparatory-work/NeTEx/netex-csvs/stopAssignments.txt' DELIMITER ',' CSV HEADER;

Copy pointsInSequence(id, pointOrder, ScheduledStopPointRef, forAlighting, forBoarding, journeyPatternRef)
FROM '/tmp/Preparatory-work/NeTEx/netex-csvs/stopPointsInSequence.txt' DELIMITER ',' CSV HEADER;