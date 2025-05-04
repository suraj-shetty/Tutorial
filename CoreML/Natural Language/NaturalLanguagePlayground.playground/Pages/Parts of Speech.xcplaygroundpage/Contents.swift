import NaturalLanguage

let text = "Knowledge will give you power, but character respect."
//let text = "אין עשן בלי אש"
//let text = "读书须用意，一字值千金"

let tagger = NLTagger(tagSchemes: [.language, .lexicalClass, .script, .nameType])
tagger.string = text

//LexicalClass :- Identifies the parts of speech (Grammer)
//tagger.enumerateTags(in: text.startIndex..<text.endIndex,
//                     unit: .word,
//                     scheme: .lexicalClass,
//                     options: [.omitPunctuation, .omitWhitespace]) { (tag, range) -> Bool in
//    print("\(text[range]) - \(tag?.rawValue ?? "Unknown")")
//    return true
//}

//Identifies the language of each word. EN for English, zh-Hans for simplified chinese
//tagger.enumerateTags(in: text.startIndex..<text.endIndex,
//                     unit: .word,
//                     scheme: .language,
//                     options: [.omitPunctuation, .omitWhitespace]) { (tag, range) -> Bool in
//    print("\(text[range]) - \(tag?.rawValue ?? "Unknown")")
//    return true
//}


tagger.enumerateTags(in: text.startIndex..<text.endIndex,
                     unit: .word,
                     scheme: .nameType,
                     options: [.omitPunctuation, .omitWhitespace]) { (tag, range) -> Bool in
    print("\(text[range]) - \(tag?.rawValue ?? "Unknown")")
    return true
}
