import React from 'react'
import {
  BrowserRouter as Router,
  Routes,
  Route
} from 'react-router-dom'
import './App.css'
import Layout from './Layout'
import AddChore from './AddChore'
import ListChores from './ListChores'
import ViewChore from './ViewChore'

function App() {
  return (
    <div className="App">
      <Router>
        <Routes>
          <Route path="/" element={<Layout />}>
            <Route index path='/list-chores' element={<ListChores />} />
            <Route path='/add-chore' element={<AddChore />} />
            <Route path='/view-chore/:choreId' element={<ViewChore />} />
          </Route>
        </Routes>
      </Router>
    </div>
  )
}

export default App
