struct Friend{
    let name: String
    let age: String
    let address: String?
}

enum FriendError: Error{
    case invalidData(description: String)
}

func friend(from dict: [String: String]) throws -> Friend{
    guard let name = dict["name"] else {
        throw FriendError.invalidData(description: "Invalid name value")
    }
    guard let age = dict["age"] else { throw FriendError.invalidData(description: "Invalid age value")
    }
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}

let stalker = ["name": "John", "ae": "12", "address": "outside"]
//let friendStalker = try friend(from: stalker)
//print(friendStalker)

enum ParserError: Error {
    case emptyDictionary
    case invalidKey
}

struct Parser {
    var data: [String : String?]?
    
    func parse() throws {
        guard let data = data else {
            throw ParserError.emptyDictionary
        }
        
        guard data["somekey"] != nil else {
            throw ParserError.invalidKey
        }
    }
}

let data: [String : String?]? = ["somekey": nil]

do {
    let parser = try Parser(data: data)
    try parser.parse()
} catch ParserError.emptyDictionary(let description) {
    print(description)
}
catch ParserError.invalidKey(let description) {
    print(description)
}