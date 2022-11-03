import { useEffect, useState, useRef, useCallback } from 'react'
import Booklist from './Booklist'


function MainDisplay(){ 
    const [criteria, setCriteria ] = useState('philosophy')
    const [books, setBooks ] = useState([])

    const criteriaRef = useRef(criteria);

    let booksUrl = `https://www.googleapis.com/books/v1/volumes?q=${criteria}`

    const getBooks = useCallback(() => {
            fetch(booksUrl)
            .then(r => r.json())
            .then(d => {
                setBooks(d.items)
                })
            .catch(e => console.log(e))
        },[booksUrl]);

    useEffect(() => {
        getBooks();
    },[getBooks,criteria])


    function handleSubmit(e){
        e.preventDefault()
        const typedCriteria = criteriaRef.current.value;

        if(typedCriteria !== " ") setCriteria(typedCriteria); 

        getBooks()
    }

    function SearchBar(){
        return (
            <form onSubmit={handleSubmit}>
                <input ref={criteriaRef} placeholder="Enter book,author or genre name"/>
                <button type='submit'>Search</button>
            </form>
        )
    }

    return (
        <>
            <h2>All Components Go here </h2>
            <SearchBar />
            <Booklist allBooks={books}/>
        </>
    )
}

export default MainDisplay;