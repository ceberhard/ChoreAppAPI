import React from 'react'
import { Formik, Field, Form } from 'formik'
import axios from 'axios'
import './AddChore.css'

function AddChore() {
    return <div>
        <h2 id='addChoreHeader'>Add New Chore</h2>
        <Formik initialValues={{ Title: '' }} onSubmit={handleAddChore}>
            <Form>
                <Field id='Title' name='Title' type='text' placeholder='Chore Title' className='titleField'></Field>
                <button type='submit'>Submit</button>
            </Form>
        </Formik>

    </div>
}

function handleAddChore(formData) {
    console.log(formData)

    const addAPIendpoint = 'http://localhost:5258/api/chore'

    axios.put(addAPIendpoint, formData)
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

export default AddChore
