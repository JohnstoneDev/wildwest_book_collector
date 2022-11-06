puts "Seeding Data..."


author = Author.new(name: "R. J. Hollingdale")
author.save 


nietzsche = Book.new(
    title: "Nietzsche",
    author: author,
    publisher: "Cambridge University Press",
    published_date: "2001-04-09",
    category: "Biography & Autobiography",
    description: "The ideal book for anyone interested in Nietzsche's life and work.",
    maturity_rating: "NOT_MATURE",
    image_link_one: "http://books.google.com/books/content?id=zRblXLiiNLQC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
    image_link_two: "http://books.google.com/books/content?id=zRblXLiiNLQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
    page_count: 288,
)
nietzsche.save
 

nietzsche_review = Review.new(
    my_notes: "Clear Philosophical explanations",
    book: nietzsche
)
nietzsche_review.save 


puts "Done Seeding"
