const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
   
    console.log('at the main route');

    let query = `SELECT ID FROM tbl_data`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); 
         res.render('home', { thing: result });
    })
})

router.get('/svgdata/:target', (req, res) => {
    console.log('hit a dynamic route!');
    console.log(req.params.id);

    let query = `SELECT * FROM tbl_data WHERE ID ="${req.params.target}"`;
// dynamic selection based on the id
    sql.query(query, (err, result) => {
        if (err) console.log(err);
        console.log(result); 
        res.json(result[0]);
    
        
       
        // result[0].Program = result[0].Program.split(",").map(function(item) {
        //     item = item.trim(); 

        //     return item;
        // })

        // console.log('after split: ', result[0]);

        // res.json(result); 
    })
})

module.exports = router;