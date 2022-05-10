COPY quays(id, name, centroid_val) 
FROM 'netex-csvs/quays.txt' DELIMITER ',' CSV HEADER;

COPY dayTypes(id) 
FROM 'netex-csvs/dayTypes.txt' DELIMITER ',' CSV HEADER;

Copy journeyPatterns(id, distance)
FROM 'netex-csvs/serviceJourneyPatterns.txt' DELIMITER ',' CSV HEADER;

COPY operators(id, name, phone, url, organisationType)
FROM 'netex-csvs/operators.txt' DELIMITER ',' CSV HEADER;

COPY lines(id, name, transportMode, publiccode)
FROM 'netex-csvs/lines.txt' DELIMITER ',' CSV HEADER;

COPY StopPlaces(id, name, centroid_val, quayID)
FROM 'netex-csvs/stopPlaces.txt' DELIMITER ',' CSV HEADER;

Copy ServiceJourneys(id, dayTypeRef, ServiceJourneyPatternRef, operatorRef)
FROM 'netex-csvs/serviceJourneys.txt' DELIMITER ',' CSV HEADER;

Copy ScheduledStopPoints(id, location_val)
FROM 'netex-csvs/scheduledStopPoints.txt' DELIMITER ',' CSV HEADER;

Copy StopAssignments(id, stopAssOrder, ScheduledStopPointRef, StopPlaceRef, quayRef)
FROM 'netex-csvs/stopAssignments.txt' DELIMITER ',' CSV HEADER;

Copy pointsInSequence(id, pointOrder, ScheduledStopPointRef, forAlighting, forBoarding, journeyPatternRef)
FROM 'netex-csvs/stopPointsInSequence.txt' DELIMITER ',' CSV HEADER;