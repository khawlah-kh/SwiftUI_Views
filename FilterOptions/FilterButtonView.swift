


import SwiftUI

enum FilterOptions: Int, CaseIterable {
    
    case option1
    case option2
    case option3
    
    var title: String {
        switch self {
        case .option1: return "Option 1"
        case .option2: return "Option 2"
        case .option3: return "Option 3"
        }
    }
}

struct FilterButtonView: View {
    
    
    private let underlineWidth = UIScreen.main.bounds.width / CGFloat(FilterOptions.allCases.count)
    
    @State var selectedFilter : FilterOptions = FilterOptions.option1
    
    private var padding : CGFloat{
        
        
        let rawValue = CGFloat(selectedFilter.rawValue)
        
        return underlineWidth*rawValue+16
    }
    
    var body: some View {
        
        VStack(alignment:.leading){
            
            HStack {
                ForEach(FilterOptions.allCases, id: \.self) { option in
                    Button(action: {

                        self.selectedFilter = option
                        
                    }, label: {
                        Text(option.title)
                            .frame(width: underlineWidth )
                    })
                    
                    
                }
            }
            
            
            Rectangle()
             
                .frame(width: underlineWidth-18, height: 3,alignment:
                        selectedFilter == .option1 ? .leading : selectedFilter == .option2 ? .center : .trailing
                  )
                .foregroundColor(.blue)
                .shadow(radius: 10)
                .animation(.spring())
                .padding(.leading,padding)
              
           
            
            
        }
        
        
    }
}

struct FilterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonView()
    }
}

