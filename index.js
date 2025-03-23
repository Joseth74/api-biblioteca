import express from 'express'
import cors from 'cors'

const app = express()

import productosRouter from './routes/libroRoute.js';

app.use (express.json())
app.use(express.urlencoded({extended:true}))
app.use(cors())

//Usar las rutas
app.use('/libros', productosRouter); // LIBROS

const port = 3000

app.listen(port,()=>{
    console.log(`Servidor corriendo en el puerto${port}`)
})