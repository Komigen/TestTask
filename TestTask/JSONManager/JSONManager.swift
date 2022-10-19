import Foundation

class JsonManager {
    
    func loadJson() -> [Section]? {
        
        let decoder = JSONDecoder()
        guard let url = Bundle.main.url(forResource: "jsonviewer", withExtension: "json"),
        let data = try? Data(contentsOf: url),
        let result = try? decoder.decode(DataModel.self, from: data)
        else { return nil }
        
        print("JSON decoding success")
        return result.sections
    }
}
