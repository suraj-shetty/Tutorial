import NaturalLanguage

let text = "Hello, world!"
let tagger = NLTagger(tagSchemes: [.tokenType])
tagger.string = text

//tagger.enumerateTags(in: text.startIndex..<text.endIndex,
//                     unit: .word,
//                     scheme: .tokenType) { tag, range in
//    print("\(text[range]) : \(tag?.rawValue ?? "none")")
//    
//    return true
//}
