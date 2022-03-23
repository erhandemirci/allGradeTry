//
//  ViewController.swift
//  allGrade
//
//  Created by erhan demirci on 14.03.2022.
//

import UIKit

enum NetworkError: Error {
    case badURL
}

class ViewController: UIViewController {
    func adOlustur()
    {
        
    }
    
    
    

    override func viewDidLoad() {
        yap { ad in
            print(ad)
        }
        asa { isim in
            print(isim," erb")
        }
     
        
        super.viewDidLoad()
        adOlustur()
        // Do any additional setup after loading the view.
        
        
        doSomeWork {veri in
            print("function inside",veri)
        }
        fetchUnreadCount1(from: "https://www.hackingwithswift.com") { result in
            switch result{
            case .failure(let error) :
                print("sdsdsz")
            
            case .success(let count) :
                print("sasa")
                
            }
            
        }
       
        fetchUnreadCount1(from: "https://www.hackingwithswift.com") { result in
            switch result {
            case .success(let count):
                print("\(count) unread messages.")
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
       
        
    }
    func doSomeWork(completion: (_ veri:Bool)->())
    {
        print("funtion worked")
        var a:String="rr"
        completion(true)
        
        
    }
    
    
   
    
    func fetchUnreadCount1(from urlString: String, completionHandler: @escaping (Result<Int, NetworkError>) -> Void)  {
        guard let url = URL(string: urlString) else {
            completionHandler(.failure(.badURL))
            return
        }

        // complicated networking code here
        print("Fetching \(url.absoluteString)...")
        completionHandler(.success(5))
    }
    func yap(completion: (_ ad:Bool)->())
    {
        completion(true)
        
    }
    
    func asa(completion:(_ isim:String)->())
    {
        if "erhan" == "erhan"
        {
            completion("erhan")
        }else
        {
            completion("melek")
        }
            
        
    }
   
    

   
    


}

