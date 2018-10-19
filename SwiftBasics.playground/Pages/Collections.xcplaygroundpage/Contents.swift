// Dictionaries

/*
    Airport Code (key)      Airport Name (value)

        KIX                     Kansai
        NRT                     Narita
        HND                     Haneda
        KGL                     Kigali
 
 */

var airportCodes: [String: String] = [
    "KIX": "Kansai",
    "NRT": "Narita",
    "HND": "Haneda",
    "KGL": "Kigali"
]

let exchangeRates = ["USD": 899, "EURO": 1001]

// Accessing elements of a dictionary

airportCodes["KIX"]

// Inserting Key Value　Pairs

airportCodes["DXB"] = "Dubai"

airportCodes.updateValue("Bujumbura", forKey: "BJA")

// Removing Key Value Pairs

airportCodes["NRT"] = nil
airportCodes.removeValue(forKey: "BJA")