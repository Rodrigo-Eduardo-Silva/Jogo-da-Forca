import UIKit
import Foundation

public func chooseWord(){
 //   let json = WordData()
 //   let list : [String] = json.animal //["Camelo","Sapo","Cachorro","Passaro","Gato","Tamandua"]
 //   let randomitem = Int(arc4random_uniform(UInt32(list.count)))
 //   let word : String =   list[randomitem]
    let word : String = WordData.init().getRandomWord()
    
    let letter : [String] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","u","t","v","w","x","y","z"]
    
    var  trycaracter : String
    var x : Int = 0
    
    var caracterFound : [String] = []
    let wordInlist = Array(word)
     
    
    for _ in word {
        caracterFound.append("_")
    }
    while caracterFound.contains("_"){
            
        var randomletter = Int(arc4random_uniform(UInt32(letter.count)))
        trycaracter = letter[randomletter]
        x = 0
 
        for  _ in word{
        
       
            
            if trycaracter == String(wordInlist[x]).lowercased(){
           caracterFound[x] = trycaracter
           
           
        }
            x = x + 1
        }
   

    
    print(caracterFound)
    print(word)
    print("Ültima letra tentada \(trycaracter)")
        
    
        
    Thread.sleep(forTimeInterval: 0.2)
   }
    print("Parabéns, você ganhou!")
        print("       ___________      ")
        print("      '._==_==_=_.'     ")
        print("      .-\\:      /-.    ")
        print("     | (|:.     |) |    ")
        print("      '-|:.     |-'     ")
        print("        \\::.    /      ")
        print("         '::. .'        ")
        print("           ) (          ")
        print("         _.' '._        ")
        print("        '-------'       ")
}


chooseWord()
