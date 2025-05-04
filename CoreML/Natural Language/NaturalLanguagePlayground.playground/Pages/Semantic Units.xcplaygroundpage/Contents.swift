import NaturalLanguage

//Identify Name, Places & Organizations
let text = "Steve Jobs, Steve Wozniak, and Ronald Wayne founded Apple Computer in the garage of Steve Jobs's Los Altos home."
//let text = "אין עשן בלי אש"
//let text = "读书须用意，一字值千金"

let tagger = NLTagger(tagSchemes: [.nameTypeOrLexicalClass])
tagger.string = text

tagger.enumerateTags(in: text.startIndex..<text.endIndex,
                     unit: .word,
                     scheme: .nameTypeOrLexicalClass,
                     options: [.omitPunctuation, .omitWhitespace, .joinNames]) { (tag, range) -> Bool in
    print("\(text[range]) - \(tag?.rawValue ?? "Unknown")")
    return true
}
