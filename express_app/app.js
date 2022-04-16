const express = require('express')
const app = express()
const port = 8003

app.get('/test/', (req, res) => {
  res.send({
  	"status": 200,
  	"message": "success",
  })
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
