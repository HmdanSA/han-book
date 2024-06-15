# Basic book script for RSG RedM

![2](https://github.com/HmdanSA/han-book/assets/165506655/ad1e2e88-25fc-4f6b-b245-b5fc1b26311b)


Add this in the config side when you want to add a new book, and make sure the name is consistent with the item.

When you add a picture to the book, make sure to adjust the size to match the size of the picture.

Normal size = width = 600 | height = 800

Add the link in (url)

test_book = {
    pages = {
        { url = "" },
        { url = "" },
        { url = "" },
    },
    size = {
        width = 600, height = 800,
    },
},


Then add this in the server side (edit name)

exports['rsg-core']:AddItem("test_book", {
    name = "test_book", label = "Book", weight = 500, type = 'item', image = 'book.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = ""
})

original script : https://github.com/Gigachad-Money-Maker/gmm-books.git
