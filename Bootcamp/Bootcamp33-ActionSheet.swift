//
//  Bootcamp33-ActionSheet.swift
//  Bootcamp
//
//  Created by Роман Пшеничников on 09.06.2025.
//

import SwiftUI

struct Bootcamp33_ActionSheet: View {
    
    @State  var showActionSheet: Bool = false
    @State var actionSheetOptions: ActionSheetOptions? = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@Username")
                Spacer()
                Button(action: {
                    actionSheetOptions = .isMyPost
                    showActionSheet.toggle()
                }) {
                    Image(systemName: "ellipsis")
                }
                
            }
            .padding()
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        
    }
    
    
    func getActionSheet() -> ActionSheet {
        
        let sharedButton = ActionSheet.Button.default(Text("Поделиться")) {
            // add code to share the post
        }
        
        let reportButton = ActionSheet.Button.destructive(Text("Пожаловаться")) {
            // add code to report this post
        }
        
        let deleteButton = ActionSheet.Button.destructive(Text("Удалить")) {
            // add code to delete this post
        }
        
        let cancelButton = ActionSheet.Button.cancel(Text("Отмена"))
        
        switch actionSheetOptions {
        case .isOtherPost:
            return ActionSheet(
                title: Text("Действия с постом"),
                message: Text("Выберите действие, которое вы хотите выполнить"),
                buttons: [sharedButton, reportButton, cancelButton]
            )
        case .isMyPost:
            return ActionSheet(
                title: Text("Действия с вашим постом"),
                message: Text("Выберите действие, которое вы хотите выполнить"),
                buttons: [sharedButton, deleteButton, cancelButton]
            )
        case .none:
            return ActionSheet(
                title: Text("Действия с постом"),
                message: Text("Выберите действие, которое вы хотите выполнить"),
                buttons: [cancelButton]
            )
        }
        
        

        
//        let button1 = ActionSheet.Button.default(Text("Default"))
//        let button2 = ActionSheet.Button.destructive(Text("Destructive"))
//        let button3 = ActionSheet.Button.cancel(Text("Cancel"))
//        
//        return ActionSheet(
//            title: Text("This is the title"),
//            message: Text("This is the message"),
//            buttons: [button1, button2, button3]
//        )
    }
    
    
}

#Preview {
    Bootcamp33_ActionSheet()
}
