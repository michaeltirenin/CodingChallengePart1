//
//  LibraryViewController.swift
//  CodingChallengePart1
//
//  Created by Michael Tirenin on 6/21/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController {
    
    var libraries = Library[]()
    var shelves = Shelf[]()
    var books = Book[]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        entireLibrary() // sample data for libraries, shelves, and books
        reportAllBooks() // method to report all books the library contains
    }

    func reportAllBooks() {
        
        var allBooks = String[]()
        for shelf:Shelf in shelves {
            for book:Book in shelf.books {
                allBooks += book.bookTitle
            }
        }
        var sortedAllBooks = sort(allBooks)
        println("These libraries contain the following \(sortedAllBooks.count) books:\n")
        var i = 1
        for item in sortedAllBooks {
            println("\(i). \(item)")
            i++
        }
    }
    
    func entireLibrary() {
        
        let library1 = Library(libraryName: "Central Library")
        let library2 = Library(libraryName: "Montlake Branch")
        let library3 = Library(libraryName: "West Seattle Branch")
        
        libraries = [library1, library2, library3]
        
        let shelf1 = Shelf(shelfName: "Art History")
        let shelf2 = Shelf(shelfName: "Biography")
        let shelf3 = Shelf(shelfName: "Historical Fiction")
        let shelf4 = Shelf(shelfName: "Mystery")
        let shelf5 = Shelf(shelfName: "Romance")
        let shelf6 = Shelf(shelfName: "Science Fiction")
        let shelf7 = Shelf(shelfName: "Urban Fiction")
        
        libraries[0].shelves = [shelf1, shelf2, shelf3]
        libraries[1].shelves = [shelf4, shelf5]
        libraries[2].shelves = [shelf6, shelf7]
        
        // Art History
        let book1 = Book(bookTitle: "Beautiful Geometry")
        let book2 = Book(bookTitle: "Edward Hopper Paints His World")
        let book3 = Book(bookTitle: "History of Florence in Painting")
        let book4 = Book(bookTitle: "Michelangelo: His Life and Work")
        let book5 = Book(bookTitle: "Picasso and Chicago")
        // Biography
        let book6 = Book(bookTitle: "Beauty's Legacy: The Gilded Age")
        let book7 = Book(bookTitle: "I Know Why the Caged Bird Sings")
        let book8 = Book(bookTitle: "Piero Della Francesca")
        let book9 = Book(bookTitle: "Truth About Shakespeare")
        let book10 = Book(bookTitle: "Year of Reading Proust")
        // Historical Fiction
        let book11 = Book(bookTitle: "All Souls' Rising")
        let book12 = Book(bookTitle: "Crossroads")
        let book13 = Book(bookTitle: "Rebel")
        let book14 = Book(bookTitle: "Stone of the Builder")
        let book15 = Book(bookTitle: "Witch in the Well")
        // Mystery
        let book16 = Book(bookTitle: "Angelica's Smile")
        let book17 = Book(bookTitle: "House at Riverton: A Novel")
        let book18 = Book(bookTitle: "Invisible")
        let book19 = Book(bookTitle: "Murder on the Mediterranean")
        let book20 = Book(bookTitle: "Tempest in A Teapot")
        // Romance
        let book21 = Book(bookTitle: "Accidental Duchess")
        let book22 = Book(bookTitle: "Lady Windermere's Lover")
        let book23 = Book(bookTitle: "Millionaire Affair")
        let book24 = Book(bookTitle: "Scoundrel's Seduction")
        let book25 = Book(bookTitle: "Twisted")
        // Science Fiction
        let book26 = Book(bookTitle: "Cobra Slave")
        let book27 = Book(bookTitle: "Gilded Lily")
        let book28 = Book(bookTitle: "Moon Knight: Volumne 2")
        let book29 = Book(bookTitle: "Suicide Blonde")
        let book30 = Book(bookTitle: "Tomorrow and Tomorrow")
        // Urban Fiction
        let book31 = Book(bookTitle: "Coldhearted & Crazy")
        let book32 = Book(bookTitle: "Forty Acres: A Thriller")
        let book33 = Book(bookTitle: "Legacy: A Novel")
        let book34 = Book(bookTitle: "Rich Girl Problems")
        let book35 = Book(bookTitle: "Silver Bullets")
        
        libraries[0].shelves[0].books = [book1, book2, book3, book4, book5]
        libraries[0].shelves[1].books = [book6, book7, book8, book9, book10]
        libraries[0].shelves[2].books = [book11, book12, book13, book14, book15]
        
        libraries[1].shelves[0].books = [book16, book17, book18, book19, book20]
        libraries[1].shelves[1].books = [book21, book22, book23, book24, book25]
        
        libraries[2].shelves[0].books = [book26, book27, book28, book29, book30]
        libraries[2].shelves[1].books = [book31, book32, book33, book34, book35]


        // Example: To "enshelf" a book
//        book1.enshelf(shelf1)

        // Example: To "unshelf" a book
//        book1.unshelf(shelf1, index: 0)
        
        // For reportAllBooks()
        shelves += [shelf1, shelf2, shelf3, shelf4, shelf5, shelf6, shelf7]
        books += [book1, book2, book3, book4, book5, book6, book7, book8, book9, book10, book11, book12, book13, book14, book15, book16, book17, book18, book19, book20, book21, book22, book23, book24, book25, book26, book27, book28, book29, book30, book31, book32, book33, book34, book35]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
