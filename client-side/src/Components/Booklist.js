import Book from "./Book";

function Booklist({ allBooks }){
    return (
        <div>
            {allBooks.map((book) => {
                return (
                <Book key={book.etag} bookDetails={book}/>
                )
            })}
        </div>
    )
}

export default Booklist;