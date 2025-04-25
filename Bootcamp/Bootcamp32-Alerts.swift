//
//  Bootcamp32-Alerts.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 25.04.2025.
//

import SwiftUI

struct Bootcamp32_Alerts: View {
    
    @State var showAlert: Bool = false
    @State var alertType: AlertType? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = .yellow
    
    enum AlertType {
        case error
        case success
        
        var title: String {
            switch self {
            case .error: return "Ошибка загрузки"
            case .success: return "Успешно загружено"
            }
        }
            
        var message: String {
            switch self {
            case .error: return "Видео не удалось загрузить"
            case .success: return "Ваше видео теперь доступно публично!"
            }
        }
        
        var backgroundColor: Color {
            switch self {
            case .error: return .red
            case .success: return .green
            }
        }
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Всплывающие уведомления")
                    .font(.title)
                    .bold()
                    .padding()
                
                Button("Показать ошибку") {
                    alertType = .error
                    showAlert = true
                }
                .buttonStyle(.borderedProminent)
                
                Button("Показать успех") {
                    alertType = .success
                    showAlert = true
                }
                .buttonStyle(.borderedProminent)
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
        
        
    }
    
    func getAlert() -> Alert {

        guard let type = alertType else {
                return Alert(title: Text("Что-то пошло не так"))
            }
            
            return Alert(
                title: Text(type.title),
                message: Text(type.message),
                dismissButton: .default(Text("OK"), action: {
                    backgroundColor = type.backgroundColor
                })
            )
        
//            switch alertType {
//            case .error:
//                return Alert(
//                    title: Text("ERROR UPLOADING VIDEO"),
//                    message: Text("The video could not be uploaded"),
//                    dismissButton: .default(Text("OK"), action: {
//                        print("OK")
//                        backgroundColor = .red
//                    })
//                )
//            case .success:
//                return Alert(
//                    title: Text("Successfully uploaded video"),
//                    message: Text("Your video is now public!"),
//                    dismissButton: .default(Text("OK"), action: {
//                        print("OK")
//                        backgroundColor = .green
//                    })
//                )
//            default:
//                return Alert(
//                    title: Text("Unknown error"),
//                    message: Text("Something went wrong"),
//                    dismissButton: .default(Text("OK"), action: {
//                        print("OK")
//                        backgroundColor = .yellow
//                    })
//                )
//            }
        
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"), action: {
//                print("OK")
//                backgroundColor = .green
//            })
            
//            title: Text("Title"),
//            message: Text("Here we will describe the error."),
//            primaryButton: .destructive(Text("Delete"), action: {
//                print("Delete")
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel()
    }
}

#Preview {
    Bootcamp32_Alerts()
}

