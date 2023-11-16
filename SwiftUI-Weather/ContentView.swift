import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing: 8){
                Text("Cupertino, CA").font(.system(size: 32,weight: .medium, design: .default)).foregroundColor(.white)
                    .padding()
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                    .resizable()
                        .frame(width: 180, height: 180)
                    
                    Text("76°").font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)
                }.padding(.bottom, 40)
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 78)
                    WeatherDayView(dayOfWeek: "THR", imageName: "wind.snow", temperature: 60)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "snow", temperature: 51)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "sunset.fill", temperature: 77)
                }
                Spacer()
                Button{
                    print("tapped")
                }label:{
                    Text("Change Day Time")
                        .frame(width:200,height: 50)
                        .background(Color.white)
                        .font(.system(size: 20,weight: .bold,design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack{
            Text(dayOfWeek).font(.system(size: 20,weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 50, height: 50)
            
            Text("\(temperature)°").font(.system(size: 30,weight: .medium))
                .foregroundColor(.white)
        }
    }
}
