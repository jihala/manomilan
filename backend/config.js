'use strict'
const dotenv = require('dotenv');
const assert = require('assert');

dotenv.config();

const {
    PORT,
    HOST,
    HOST_URL,
    API_KEY,
    AUTH_DOMAIN,
    DATABASE_URL,
    PROJECT_ID,
    STORAGE_BUCKET,
    MESSAGING_SENDER_ID,
    APP_ID,
    MEASUREMENT_ID
} = process.env;

assert(PORT, 'port is REQUIRED');
assert(HOST, 'host is REQUIRED');

module.exports ={
    port: PORT,
    host: HOST,
    url: HOST_URL,
    firebaseConfig: {
        apiKey:API_KEY,
        authDomain:AUTH_DOMAIN,
        databaseUrl:DATABASE_URL,
        projectId:PROJECT_ID,
        storageBucket:STORAGE_BUCKET,
        messagingSenderId:MESSAGING_SENDER_ID,
        appId:APP_ID ,
        measurementId: MEASUREMENT_ID
    }
}