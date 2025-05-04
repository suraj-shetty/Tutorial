import NaturalLanguage

let text = "Bonjour! Je m'appelle Suraj."

//Detect the language
if let recognisedLanguage = NLLanguageRecognizer.dominantLanguage(for: text) {
    print("Text is: \(text)")
    print("Detected language: \(recognisedLanguage.rawValue.uppercased())")
}
else {
    print( "Failed to detect language of \(text)")
}

//Detect probability
let text2 = "你好！我叫"
let recogniser = NLLanguageRecognizer()
recogniser.processString(text2)
//recogniser.languageConstraints = [.english, .simplifiedChinese, .traditionalChinese] //Restricting the search results. This will yield probability on for the mentioned languages

//let languages = recogniser.knownLanguages
let result = recogniser.languageHypotheses(withMaximum: 4)
for (language, probability) in result { //Only top probabilities
    print("Language: \(language.rawValue.uppercased()), Probability: \(probability)")
}

recogniser.reset()
