//
//  PersonsInfo.swift
//  Persons List
//
//  Created by Alina Sokolova on 28.12.21.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
    "John", "Aaron", "Tim", "Ted",
    "Steven", "Sharon", "Nicola", "Allan",
    "Bruce", "Carl"]
    
    let surnames = [
    "Smith", "Dow", "Isaacson", "Pennyworth",
    "Jankin", "Butler", "Black", "Robertson",
    "Murphy", "Williams"]
    
    let emails = [
    "jjjj@mail.ru", "aaaa@mail.ru", "eeee@mail.ru", "hhhh@mail.ru",
    "wwww@mail.ru", "mmmm@mail.ru", "xxxx@mail.ru", "pppp@mail.ru",
    "ssss@mail.ru", "llll@mail.ru"]
    
    let phones = ["74539609", "14587630", "25694783", "84735904",
    "783037203", "83649024", "749303746", "9384763930", "464393904", "847473920"]
    
    private init() {}
}
