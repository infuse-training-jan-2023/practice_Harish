const express = require('express')
const cors =require('cors');

const app = express()
const port = 8000
const bodyParser = require('body-parser');  
app.use(cors())
app.use(bodyParser.urlencoded({ extended: false }))

task =[]
app.get('/', (req, res) => {
  res.send('Hello  server is live!')
})

app.post('/addtask', (req, res) => {
  response={
    task:req.body.task,
  }  
  task.push(response)
  console.log(req.body)
})
app.get('/view', (req, res) => {
  res.send(task)
})

var server =app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})