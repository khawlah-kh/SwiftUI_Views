
import SwiftUI
struct MainView: View {
    var body: some View {
        
    
                TabView {
                        ForEach(1..<6){ num in
                           Text("\(num)")
                                .padding()
                                .background(LinearGradient(colors: [Color.blue.opacity(0.5),Color.blue], startPoint: .top, endPoint: .bottom))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .padding(.bottom)
                        }

                       }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode:.always))
                .frame(height: 150)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
                
                 
                
         
           
        }
        
    }

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

