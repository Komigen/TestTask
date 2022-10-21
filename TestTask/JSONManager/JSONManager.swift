import Foundation

final class JsonManager {

    func loadJson() -> [Section] {
        
        guard let url = Bundle.main.url(forResource: "jsonviewer", withExtension: "json") else { return [] }
        guard let data = try? Data(contentsOf: url) else { return [] }
        guard let result = try? JSONDecoder().decode(DataModel.self, from: data) else { return [] }
                
        print("JSON decoding success")
        return result.sections
    }
}


