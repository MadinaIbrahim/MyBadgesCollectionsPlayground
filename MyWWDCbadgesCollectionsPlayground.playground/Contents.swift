//: Playground - noun: a place where people can play

import UIKit

func badgeForSpeaker(name: String) -> String {
    return "Hello, my name is \(name)"
}

func badgesForSpeakers(speakers: [String])-> [String] {
    
    var badgesArray = [String] ()
    for name in speakers {
        let message = "Hello, my name is \(name)"
        badgesArray.append(message)
    }
    print(badgesArray)
    return badgesArray
}

func roomAssignmentsForSpeakers(speaker:[String])-> [String]{
    
    let speakersRoomsTable:[String:Int] = ["Anita Borg":201,
                              "Alan Kay":202,
                              "Ada Lovelace":203,
                              "Aaron Swartz":215,
                              "Alan Turing":204,
                              "Michael Faraday":205,
                              "Grace Hopper":230]
    
    var roomAssignments = [String]()
    
    for (key,value) in speakersRoomsTable {
        let emptyKey = "\(speaker) has not been assigned to a room."
        let descriptionMessage = "\(key) will be speaking in Room \(value)."
        
        if key == "" {
            roomAssignments.append(emptyKey)
            return roomAssignments
        } else {
            roomAssignments.append(descriptionMessage)
                }
            }
    print(roomAssignments)
    return roomAssignments
}

badgeForSpeaker("Anita Borg")
badgesForSpeakers(["Anita Borg", "Alan Kay", "Ada Lovelace", "Aaron Swartz", "Alan Turing", "Michael Faraday", "Grace Hopper"])

roomAssignmentsForSpeakers(["Anita Borg", "Alan Kay", "Ada Lovelace", "Aaron Swartz", "Alan Turing", "Michael Faraday", "Grace Hopper"])
