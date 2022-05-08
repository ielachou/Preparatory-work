import google.protobuf.json_format as json_format
#import google.protobuf.message as message
import google.protobuf.text_format as text_format
import json

import gtfs_realtime_pb2 as rt



f = open('C:\\Users\\HP\\Documents\\prep master thesis\\Preparatory-work\\GTFS-realtime\\NYLIRR\\rt.protobuf')
#f = open('C:\\Users\\HP\\Downloads\\mta-420-20220401-032827.protobuf.txt') #metro
#f = open('C:\\Users\\HP\\Downloads\\mta-421-20210715-203259.protobuf (1).txt') #lirr
vd = rt.VehicleDescriptor()
vd.id = "1"
vd.label = "hehe"
tu = rt.TripUpdate(vehicle=vd)

text = text_format.MessageToString(tu)
#print(text)

#print(f.readlines())
lines = f.readlines()
message = text_format.Parse(''.join(lines),rt.FeedMessage())
#print(message.getDescriptor())
f.close()

#print(text_format.MessageToString(message))
#print(json_format.MessageToJson(message))
"""output = open("../output.json", "w")
output.write(json_format.MessageToJson(message))
output.close()"""

data = json.loads(json_format.MessageToJson(message))
#print(data['entity'])
i = 0
j=0
rt_output = open("realtime_positions.csv", "w")
rt_output.write("tripID, vehicleID, latitude, longitude\n")
for dic in data["entity"]:
	if "vehicle" in dic:
		i += 1
		curr_v = data["entity"][j]["vehicle"]
		s = curr_v["trip"]["tripId"] + "," + curr_v["vehicle"]["id"]+","+\
		    str(curr_v["position"]["latitude"]) + "," + str(curr_v["position"]["longitude"])+"\n"
		rt_output.write(s)
		"""print(curr_v["trip"]["tripId"], curr_v["vehicle"]["id"],
		      curr_v["position"]["latitude"], curr_v["position"]["longitude"])"""
		print(curr_v)
	j+=1
rt_output.close()
#print(data)
print(i)


#print(json_format.MessageToJson(tu))

#tu.ParseFromString(f.read())




#message = f.join("")

#format = json_format.MessageToJson(message)
#google.protobuf.ParseMessage(f)