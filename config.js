import {createConnection, createPool} from "mysql2";
const config = createPool ({
    host : '127.0.0.1',
    user: 'root',
    password: 'Joseth1234',
    database: 'biblioteca',
    port: 3306,
    enableKeepAlives: true,
    keepAliveIbitialDelay:true
})
export{config}