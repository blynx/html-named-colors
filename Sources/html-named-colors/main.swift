import Cocoa

let colorListName = "HTML Named Colors"
let inputFile = "html-named-colors.csv"
let outFile = URL(fileURLWithPath: "./\(colorListName).clr")

let colorList = NSColorList(name: colorListName)

if let data = readCSV(from: inputFile, dropFirstRow: true) {
    for row in data {
        if let color = NSColor(hex: row[1]) {
            colorList.setColor(color, forKey: row[0])
        }
    }
}

try? colorList.write(to: outFile)
