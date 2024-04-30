import Foundation

class TextProcessor {
    var smartphoneDictionary: [String: Double] = [:] // Словарь смартфонов
    var vendorDictionary: [String: String] = [:] // Словарь производителей

    func addSmartphone(name: String, cost: Double) {
        smartphoneDictionary[name] = cost
    }

    func addVendor(name: String, country: String) {
        vendorDictionary[name] = country
    }

    func countSmartphones() -> Int {
        return smartphoneDictionary.count
    }

    func countVendors() -> Int {
        return vendorDictionary.count
    }

    func showMenu() {
        print("Меню:")
        print("1. Добавить смартфон")
        print("2. Добавить производителя")
        print("3. Подсчитать количество смартфонов")
        print("4. Подсчитать количество производителей")
        print("5. Выйти")
        print("Выберите операцию (1-5):")
        
        if let choice = readLine() {
            switch choice {
                case "1":
                    print("Введите название смартфона:")
                    if let name = readLine() {
                        print("Введите цену смартфона:")
                        if let costStr = readLine(), let cost = Double(costStr) {
                            addSmartphone(name: name, cost: cost)
                        }
                    }
                case "2":
                    print("Введите название производителя:")
                    if let name = readLine() {
                        print("Введите страну, в которой находится производитель:")
                        if let country = readLine() {
                            addVendor(name: name, country: country)
                        }
                    }
                case "3":
                    print("Количество смартфонов: \(countSmartphones())")
                case "4":
                    print("Количество производителей: \(countVendors())")
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
