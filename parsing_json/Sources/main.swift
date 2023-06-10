
import Foundation

import Foundation

// Example JSON string
let jsonString = """
{
  "name": "John Doe",
  "age": 30,
  "email": "johndoe@example.com"
}
"""

// Convert the JSON string to Data
guard let jsonData = jsonString.data(using: .utf8) else {
    print("Failed to convert JSON string to Data")
     // Handle the error appropriately, such as returning from the current function or displaying an error message
    fatalError()
}

do {
    // Deserialize the JSON Data into a Swift object
    let jsonObject = try JSONSerialization.jsonObject(with: jsonData, options: [])
    
    // Check if the JSON object is a dictionary
    if let jsonDict = jsonObject as? [String: Any] {
        // Access the values from the dictionary
        if let name = jsonDict["name"] as? String {
            print("Name: \(name)")
        }
        if let age = jsonDict["age"] as? Int {
            print("Age: \(age)")
        }
        if let email = jsonDict["email"] as? String {
            print("Email: \(email)")
        }
    }
} catch {
    print("Error deserializing JSON: \(error)")
}

