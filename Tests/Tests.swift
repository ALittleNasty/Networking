import Foundation
import XCTest

class Tests: XCTestCase {
    let baseURL = "http://httpbin.org"
}

// MARK: GET

/*
extension Tests {
    func testSynchronousGET() {
        var success = false
        let networking = Networking(baseURL: baseURL)
        networking.GET("/get", completion: { JSON, error in
            success = true
        })

        XCTAssertTrue(success)
    }

    func testGET() {
        let networking = Networking(baseURL: baseURL)
        networking.GET("/get", completion: { JSON, error in
            let JSON = JSON as! [String : AnyObject]
            let url = JSON["url"] as! String
            XCTAssertEqual(url, "http://httpbin.org/get")
        })
    }

    func testGETWithInvalidPath() {
        let networking = Networking(baseURL: baseURL)
        networking.GET("/invalidpath", completion: { JSON, error in
            if let JSON: AnyObject = JSON {
                fatalError("JSON not nil: \(JSON)")
            } else {
                XCTAssertNotNil(error)
            }
        })
    }

    func testGETStubs() {
        let networking = Networking(baseURL: baseURL)

        networking.stubGET("/stories", response: ["name" : "Elvis"])

        networking.GET("/stories", completion: { JSON, error in
            let JSON = JSON as! [String : String]
            let value = JSON["name"]
            XCTAssertEqual(value!, "Elvis")
        })
    }

    func testGETStubsUsingFile() {
        let networking = Networking(baseURL: baseURL)

        networking.stubGET("/entries", fileName: "entries.json", bundle: NSBundle(forClass: self.classForKeyedArchiver!))

        networking.GET("/entries", completion: { JSON, error in
            let JSON = JSON as! [[String : AnyObject]]
            let entry = JSON[0]
            let value = entry["title"] as! String
            XCTAssertEqual(value, "Entry 1")
        })
    }
}

// MARK: POST

extension Tests {
    func testSynchronousPOST() {
        var success = false
        let networking = Networking(baseURL: baseURL)
        networking.POST("/post", params: nil) { JSON, error in
            success = true
        }

        XCTAssertTrue(success)
    }

    func testPOST() {
        let networking = Networking(baseURL: baseURL)
        networking.POST("/post", params: ["username":"jameson", "password":"password"]) { JSON, error in
            XCTAssertNotNil(JSON!, "JSON not nil")
            XCTAssertNil(error, "Error")
        }
    }

    func testPOSTWithIvalidPath() {
        let networking = Networking(baseURL: baseURL)
        networking.POST("/posdddddt", params: ["username":"jameson", "password":"password"]) { JSON, error in
            XCTAssertNotNil(error)
            XCTAssertNil(JSON)
        }
    }

    func testPOSTStubs() {
        let networking = Networking(baseURL: baseURL)

        networking.stubPOST("/story", response: [["name" : "Elvis"]])

        networking.POST("/story", params: ["username":"jameson", "password":"password"]) { JSON, error in
            let JSON = JSON as! [[String : String]]
            let value = JSON[0]["name"]
            XCTAssertEqual(value!, "Elvis")
        }
    }
}

// MARK: Utilities

extension Tests {
    func testBasicAuth() {
        let networking = Networking(baseURL: baseURL)
        networking.autenticate("user", password: "passwd")
        networking.GET("/basic-auth/user/passwd", completion: { JSON, error in
            let JSON = JSON as! [String : AnyObject]
            let user = JSON["user"] as! String
            let authenticated = JSON["authenticated"] as! Bool
            XCTAssertEqual(user, "user")
            XCTAssertEqual(authenticated, true)
        })
   }

    func testURLForPath() {
        let networking = Networking(baseURL: baseURL)
        let url = networking.urlForPath("/hello")
        XCTAssertEqual(url.absoluteString, "http://httpbin.org/hello")
    }
}*/