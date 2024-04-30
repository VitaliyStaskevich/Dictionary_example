import Foundation

class TextProcessor {
    var patientDictionary: [String: String] = [:] 
    var hospitalDictionary: [String: String] = [:] 

    func addPatient(name: String, diagnosis: String) {
        patientDictionary[name] = diagnosis
    }

    func addHospital(name: String, city: String) {
        hospitalDictionary[name] = city
    }

    func countPatients() -> Int {
        return patientDictionary.count
    }

    func countHospitals() -> Int {
        return hospitalDictionary.count
    }

    func showMenu() {
        print("Меню:")
        print("1. Добавить пациента")
        print("2. Добавить больницу")
        print("3. Подсчитать количество пациентов")
        print("4. Подсчитать количество больниц")
        print("5. Выйти")
        print("Выберите операцию (1-5):")
        
        if let choice = readLine() {
            switch choice {
                case "1":
                    print("Введите имя пациента:")
                    if let name = readLine() {
                        print("Введите диагноз пациента:")
                        if let diagnosis = readLine() {
                            addPatient(name: name, diagnosis: diagnosis)
                        }
                    }
                case "2":
                    print("Введите название больницы:")
                    if let name = readLine() {
                        print("Введите город, в котором находится больница:")
                        if let city = readLine() {
                            addHospital(name: name, city: city)
                        }
                    }
                case "3":
                    print("Количество пациентов: \(countPatients())")
                case "4":
                    print("Количество больниц: \(countHospitals())")
                case "5":
                    return
                default:
                    print("Некорректный выбор операции.")
            }
        }
    }

    func run() {
            showMenu()
    }
}

let processor = TextProcessor()
processor.run()
