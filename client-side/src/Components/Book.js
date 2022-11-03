function Book({ bookDetails }){
    const { volumeInfo, pageCount, categories, maturityRating  } = bookDetails
    const { title, authors, publisher, publishedDate , description, imageLinks } = volumeInfo
    const { thumbnail , smallThumbnail } = imageLinks;
    return (
        <>
           <h3>{title}</h3> 
           <img src={thumbnail} alt=""/>
        </>
    )
}

export default Book;