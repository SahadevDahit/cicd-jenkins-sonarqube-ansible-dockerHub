// Import the express module
const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.send('Hello, World! Welcome to the cicd pipeline'); // Send a response to the client
});
app.get('/products', (req, res) => {
    // Assuming products are stored in an array called 'products'
    const products = [{
            id: 1,
            name: 'Product 1',
            price: 10
        },
        {
            id: 2,
            name: 'Product 2',
            price: 20
        },
        {
            id: 3,
            name: 'Product 3',
            price: 30
        }
    ];

    // Send the products as a JSON response to the client
    res.json(products);
});

const port = 4000;

// Start the server and listen on the specified port
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});