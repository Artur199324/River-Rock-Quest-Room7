

import Foundation

class UserPreferences {
    private let usernameKey = "usernameKey"
    private let uKey = "uKey"
    private let passwordKey = "passwordKey"
    private let genderKey = "gender"
    private let currentItemKey = "currentItemKey"
    private let itemsKey = "itemsKey"
    private let logKey = "logKey"
     
     
     func saveCurrentItem(_ item: Int) {
         UserDefaults.standard.set(item, forKey: currentItemKey)
         addItemToList(item)
     }
     
     
     func getCurrentItem() -> Int? {
         let value = UserDefaults.standard.integer(forKey: currentItemKey)
         return value != 0 ? value : nil
     }
     
    func getItemsCount() -> Int {
        return getItems()?.count ?? 0
    }
     private func addItemToList(_ item: Int) {
         var items = getItems() ?? []
         if !items.contains(item) {
             items.append(item)
             saveItems(items)
         }
     }
     

     private func saveItems(_ items: [Int]) {
         UserDefaults.standard.set(items, forKey: itemsKey)
     }
     
   
     func getItems() -> [Int]? {
         return UserDefaults.standard.array(forKey: itemsKey) as? [Int]
     }
    
    func saveLog(_ items: Int) {
        UserDefaults.standard.set(items, forKey: logKey)
         UserDefaults.standard.synchronize()
    }
    
  
    func getLog() -> Int? {
        return UserDefaults.standard.integer(forKey: logKey)
    }
    
     

    func saveCredentials(username: String, password: String) {
        UserDefaults.standard.set(username, forKey: usernameKey)
        UserDefaults.standard.set(password, forKey: passwordKey)
        UserDefaults.standard.synchronize()
    }
    
    func saveU(u:String){
        UserDefaults.standard.set(u, forKey: uKey)
    }
    
    func getU() -> String?{
        return UserDefaults.standard.string(forKey: uKey)
    }
    
    func saveGender(gender:Int){
        UserDefaults.standard.set(gender, forKey: genderKey)
    }


    func getUsername() -> String? {
        return UserDefaults.standard.string(forKey: usernameKey)
    }


   
    func getPassword() -> String? {
        return UserDefaults.standard.string(forKey: passwordKey)
    }
    
    func getGender() ->Int?{
        return UserDefaults.standard.integer(forKey: genderKey)
    }

    func clearCredentials() {
        UserDefaults.standard.set("", forKey: usernameKey)
        UserDefaults.standard.set("", forKey: passwordKey)
        UserDefaults.standard.set(0, forKey: genderKey)
        UserDefaults.standard.set(0, forKey: logKey)
        UserDefaults.standard.set(0, forKey: currentItemKey)
        UserDefaults.standard.synchronize()
    }
}
