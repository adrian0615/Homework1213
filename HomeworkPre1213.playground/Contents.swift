enum Maybe<Element> {
    case some(Element)
    case none
    
    //Allows you to use transform to determine what the new Element is going to be.
    func transformUnwrapped<NewElement>(transform: (Element) -> NewElement) -> Maybe<NewElement> {
        switch self {
        case .none:
            return .none
        case .some(let value):
            return .some(transform(value))
        }
    }
    
    // Using transform to turn an Element(Whatever you enter) into a String that converts to a maybe string
    func transformUnwrapped(transform: (Element) -> String) -> Maybe<String> {
        switch self {
        case .none:
            return .none
        case .some(let value):
            return .some(transform(value))
        }
    }
}
//Above is equal to below.  Recognize the switch of instance being the switch of self. Also the returns are of the Maybe<String> type!
//func transformUnwrapped<Element>(instance: Maybe<Element>, transform: (Element) -> String) -> Maybe<String> {
//     switch instance {
//      case .none:
//       return Maybe<String>.none
//      case .some:
//       return Maybe<String>.some(transform(value))


