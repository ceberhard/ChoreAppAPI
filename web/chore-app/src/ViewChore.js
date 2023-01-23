import React from 'react'
import axios from 'axios'
import { useParams } from 'react-router'
import './ListChores.css'

function ViewChore() {
    
    let { choreId } = useParams()
    
    console.log(choreId)

    const choreData = GetChoreData(choreId)

    return <div>
        <h2>View Chore</h2>
        <dl>
            <dt>Chore Id:</dt>
            <dd><label id='lblChoreId'>{choreId}</label></dd>
        </dl>
    </div>
}

function GetChoreData(choreId) {
    const getAPIendpoint = `http://localhost:5258/api/chore/${choreId}`

    axios.get(getAPIendpoint)
        .then(res => {
            console.log(res)
            console.log(res.data)
        }).catch((error) => {
            if (error.response) {
                console.log(error.response)
                console.log(error.response.status)
                console.log(error.response.data)
            } else if (error.request) {
                console.log(error.request)
            } else {
                console.log('Error', error.Message)
            }
            console.log(error.config)
        })
}

export default ViewChore
