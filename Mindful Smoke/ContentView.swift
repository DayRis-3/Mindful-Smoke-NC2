//
//  ContentView.swift
//  Mindful Smoke
//
//  Created by M Irsyad R on 22/05/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        NavigationView {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Mindful Smoke").font(FontProvider.custom(.metropolis, .largeTitle)).fontWeight(.bold).foregroundColor(Color("Teal300"))
                    }
                    
                    ZStack {
                        HStack {
                            
                            VStack {
                                Text("Mindful Minutes").font(FontProvider.custom(.metropolis, .caption)).fontWeight(.bold).foregroundColor(Color("Teal300"))
                                HStack {
                                    VStack {
                                        Text("Today").font(FontProvider.custom(.metropolis, .caption)).fontWeight(.bold).foregroundColor(Color.gray)
                                        Text("0 Hours").font(FontProvider.custom(.metropolis, .caption)).fontWeight(.regular).foregroundColor(Color(uiColor: .label))

                                    }
                                }
                            }
                            Spacer()
                            Text ("")
                        }
                        .padding(.vertical,12)
                        .padding(.horizontal,16)
                        .background(Color(uiColor: .secondarySystemFill))
                    .cornerRadius(8)
                        
                        HStack {
                            Spacer()
                            Image ("Hero Image")
                                .padding(.trailing)
                        }
                    }
                }
            }
            .padding(.horizontal,24)
        }
    }
}
   
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
