COPY quays(id, name, centroid_val) 
FROM '/mnt/c/Users/HP/PyCharmProjects/testArbres/netex-csvs/quays.txt' DELIMITER ',' CSV HEADER;

COPY dayTypes(id) 
FROM '/mnt/c/Users/HP/PyCharmProjects/testArbres/netex-csvs/dayTypes.txt' DELIMITER ',' CSV HEADER;

Copy journeyPatterns(id, distance)
FROM '/mnt/c/Users/HP/PyCharmProjects/testArbres/netex-csvs/serviceJourneyPatterns.txt' DELIMITER ',' CSV HEADER;

COPY operators(id, name, phone, url, organisationType)
FROM '/mnt/c/Users/HP/PyCharmProjects/testArbres/netex-csvs/operators.txt' DELIMITER ',' CSV HEADER;

COPY lines(id, name, transportMode, publiccode)
FROM '/mnt/c/Users/HP/PyCharmProjects/testArbres/netex-csvs/lines.txt' DELIMITER ',' CSV HEADER;

COPY StopPlaces(id, name, centroid_val, quayID)
FROM '/mnt/c/Users/HP/PyCharmProjects/testArbres/netex-csvs/stopPlaces.txt' DELIMITER ',' CSV HEADER;

Copy ServiceJourneys(id, dayTypeRef, ServiceJourneyPatternRef, operatorRef)
FROM '/mnt/c/Users/HP/PyCharmProjects/testArbres/netex-csvs/serviceJourneys.txt' DELIMITER ',' CSV HEADER;

Copy ScheduledStopPoints(id, location_val)
FROM '/mnt/c/Users/HP/PyCharmProjects/testArbres/netex-csvs/scheduledStopPoints.txt' DELIMITER ',' CSV HEADER;

Copy StopAssignments(id, stopAssOrder, ScheduledStopPointRef, StopPlaceRef, quayRef)
FROM '/mnt/c/Users/HP/PyCharmProjects/testArbres/netex-csvs/stopAssignments.txt' DELIMITER ',' CSV HEADER;

Copy pointsInSequence(id, pointOrder, ScheduledStopPointRef, forAlighting, forBoarding, journeyPatternRef)
FROM '/mnt/c/Users/HP/PyCharmProjects/testArbres/netex-csvs/stopPointsInSequence.txt' DELIMITER ',' CSV HEADER;