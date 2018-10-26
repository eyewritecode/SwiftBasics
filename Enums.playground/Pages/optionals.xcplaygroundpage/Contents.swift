// OPTIONALS

struct Person {
    let firstName: String
    let middleName: String? //Question mark makes it optional, otherwise nil would result in an error
    let lastName: String
    
    func fullName() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        }else{
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me = Person(firstName: "First", middleName: nil, lastName: "Afkhk")
me.fullName()

// OPTIONALS BINDING 

let movieDictionary = ["Spectre": ["cast": ["Daniel Craig", "Christoph Waltz", "Léa Seydoux", "Ralph Fiennes", "Monica Bellucci", "Naomie Harris"]]]

var leadActor: String = ""

if let movieDic = movieDictionary["Spectre"], let movieCast = movieDic["cast"] {
    leadActor = movieCast[0]
}

// EARLY EXIT
// Using guard you only check values that are not supposed to be nil

struct Friend{
    let name: String
    let age: String
    let address: String?
}

func newFriend(friendDictionary: [String : String]) -> Friend?{
    guard let name = friendDictionary["name"], let age = friendDictionary["age"] else {
        return nil
    }
    let address = friendDictionary["address"]
    return Friend(name: name, age: age, address: address)
}

struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String : String]){
        guard let title = dict["title"], let author = dict["author"] else{
            return nil
        }
        self.title = title
        self.author = author
        self.price = dict["price"]
        self.pubDate = dict["pubDate"]
    }
}