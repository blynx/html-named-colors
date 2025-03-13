func readCSV(from filepath: String, delimiter: String = ",") -> [[String]]? {
    do {
        let content = try String(contentsOfFile: filepath)
        var result: [[String]] = []
        let rows = content.components(separatedBy: .newlines)
        for row in rows {
            if !row.isEmpty {
                let columns = row.components(separatedBy: delimiter).map {
                    $0.trimmingCharacters(in: .whitespaces)
                }.filter { !$0.isEmpty }
                result.append(columns)
            }
        }
        return result
    } catch {
        print("Error reading CSV file: \(error)")
        return nil
    }
}
