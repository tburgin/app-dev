//
//  SearchView.swift
//  Athena
//
//  Created by student on 5/16/24.
//

import Foundation
import SwiftUI
struct SearchView: View {
    @State private var programs = [Program]()

    var body: some View {
        List(programs, id: \.id) { item in
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.headline)
                Text(item.description)
            }
        }
        .onAppear(perform: parseJson)
    }
    func parseJson() {

            if let url = Bundle.main.url(forResource: "Opps.json", withExtension: nil){

                if let data = try? Data(contentsOf: url){

                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "yyyy-MM-dd"

                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .formatted(dateFormatter)

                    do{
                        let programs = try decoder.decode([Program].self, from: data)
                        self.programs = programs

                    }
                    catch {
                        print("error trying parse json")
                    }
                }
            }
        }
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
