import Foundation


public class WordData{
public   let animal: [String]
   public init(){
      let path = Bundle.main.path(forResource: "animals", ofType: "json")
      let url = URL(fileURLWithPath: path!)
        
      let data = try! Data(contentsOf: url)
      animal = try! JSONDecoder().decode([String].self, from: data)
      
    
    
    }
    public  func getRandomWord() -> String {
       let index = Int(arc4random_uniform(UInt32(animal.count)))
       let choiceWord : String = animal[index]
        return choiceWord
 }
}
