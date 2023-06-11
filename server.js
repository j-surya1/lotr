const express = require('express')
const morgan = require('morgan')

const app = express()

app.use(morgan(":method :url :status :res[content-length] - :response-time ms"))



app.get("/test", (req, res) => {
  res.send("<h1>It's working 🤗</h1>")
})

app.get("/", async (req, res) => {
  try {
    res.send("<img src='https://source.unsplash.com/user/wsanter' width=500px height=350px></img>")
  } catch (error) {
    res.send(error)
  }
})


const port = process.env.PORT || 8080
app.listen(port, () => console.log(`Listening on port ${port}`))