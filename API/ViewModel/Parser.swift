//
//  Parser.swift
//  API
//
//  Created by Soufiane AIT ELGHZI on 4/16/22.
//  Copyright © 2022 Soufiane AIT ELGHZI. All rights reserved.
//

import Foundation


struct Parser {
    func parse(comp :@escaping ([User])->())
   {
    let api = URL(string: "http://192.168.61.33:8089/users")
    URLSession.shared.dataTask(with: api!){
        data,response,error in
        if error != nil{
            print(error?.localizedDescription)
            return
        }
        do{
            let result =  try JSONDecoder().decode(Welcome.self, from: data!)
            comp(result.embedded.users)
            
        }catch{}
    }.resume()
    }
    
}
