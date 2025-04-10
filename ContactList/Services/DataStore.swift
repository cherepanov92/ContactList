//
//  DataStore.swift
//  ContactList
//
//  Created by User on 07.04.2025.
//

final class DataStore {
    var names = ["Сэмюэл Л.", "Ума", "Кристоф", "Курт", "Брэд", "Харви", "Тим", "Майкл", "Леонардо", "Стив", "Джейми", "Дэниэл", "Сильвестр", "Джон", "Брюс", "Дэвид", "Уолтон", "Сид", "Дженнифер", "Зои"]
    
    var surnames = ["Джексон", "Турман", "Вальц", "Рассел", "Питт", "Кейтель", "Рот", "Мэдсен", "ДиКаприо", "Бушеми", "Фокс", "Дэй-Льюис", "Сталлоне", "Траволта", "Уиллис", "Кэррадайн", "Гоггинс", "Хейг", "Ли", "Белл"]
    
    var emails = ["email_1@mockmail.com", "email_2@mockmail.com", "email_3@mockmail.com", "email_4@mockmail.com", "email_5@mockmail.com", "email_6@mockmail.com", "email_7@mockmail.com", "email_8@mockmail.com", "email_9@mockmail.com", "email_10@mockmail.com", "email_11@mockmail.com", "email_12@mockmail.com", "email_13@mockmail.com", "email_14@mockmail.com", "email_15@mockmail.com", "email_16@mockmail.com", "email_17@mockmail.com", "email_18@mockmail.com", "email_19@mockmail.com", "email_20@mockmail.com"]
    
    var phones = ["8-800-200-00-01", "8-800-200-00-02", "8-800-200-00-03", "8-800-200-00-04", "8-800-200-00-05", "8-800-200-00-06", "8-800-200-00-07", "8-800-200-00-08", "8-800-200-00-09", "8-800-200-00-10", "8-800-200-00-11", "8-800-200-00-12", "8-800-200-00-13", "8-800-200-00-14", "8-800-200-00-15", "8-800-200-00-16", "8-800-200-00-17", "8-800-200-00-18", "8-800-200-00-19", "8-800-200-00-20"]
    
    func createRandomPerson() -> Person {
        let name = self.names.remove(
            at: Int.random(
                in: 0..<self.names.count
            )
        )
        let surname = self.surnames.remove(
            at: Int.random(
                in: 0..<self.surnames.count
            )
        )
        let email = self.emails.remove(
            at: Int.random(
                in: 0..<self.emails.count
            )
        )
        let phone = self.phones.remove(
            at: Int.random(
                in: 0..<self.phones.count
            )
        )
        
        return Person(
            name: name,
            surname: surname,
            email: email,
            phone: phone
        )
    }
}
