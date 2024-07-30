
import SwiftUI

struct ContentView: View {
    
    @State var number1 = ""
    @State var number2 = ""
    @State var result = ""
    var body: some View {
        
        VStack {
            Text("CALCULATOR").foregroundStyle(.white)
                .font(.largeTitle)
            TextField("Number1",text: $number1){
                
            }
            .padding()
            .background(Color.orange.opacity(1))
            .cornerRadius(15)
            .font(.title)
            TextField("Number2",text: $number2){
                
            }
            .padding()
            .background(Color.orange.opacity(1))
            .cornerRadius(15)
            .font(.title)
            
            HStack{
                
                Button(action: add){
                    
                    Image(systemName: "plus")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding()
                     .background(Circle().fill(Color.orange))
                }
                    .padding()
                   
                Button(action:minus){
                    Image(systemName: "minus")
                     .frame(width: 20, height: 20)
                     .padding()
                     .background(Circle().fill(Color.orange))
                    
                }
                    .padding()
                Button(action: divide){
                    Image(systemName: "divide")
                    .frame(width: 20, height: 20)
                    .padding()
                    .background(Circle().fill(Color.orange))
                }
                    .padding()
                Button(action: multiply){
                    Image(systemName: "multiply")
                     .frame(width: 20, height: 20)
                     .padding()
                     .background(Circle().fill(Color.orange))
                }
                    .padding()
            }
            Text("Result = \(result)")
                .font(.title)
                .foregroundStyle(.white)
        }
        .padding()
        .background(Color.black)
Spacer()
    }
    func add(){
        if let num1=Double(number1) ,let num2=Double(number2) {
            result = "\(num1 + num2)"
            number1 = ""
            number2 = ""
        }else{
            result = "Invalid input"
        }
    }
    func minus(){
        if let num1=Double(number1),let num2=Double(number2) {
            result = "\(num1 - num2)"
            number1 = ""
            number2 = ""
        }else{
            result = "Invalid input"
        }
    }
    func multiply(){
        if let num1=Double(number1),let num2=Double(number2) {
            result = "\(num1 * num2)"
            number1 = ""
            number2 = ""
        }else{
            result = "Invalid input"
        }
    }
    func divide(){
        if let num1=Double(number1),let num2=Double(number2) {
            result = "\(num1 / num2)"
            number1 = ""
            number2 = ""
        }else{
            result = "Invalid input"
        }
    }

}
#Preview {
    ContentView()
}


