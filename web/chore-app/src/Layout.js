import React from 'react'
import './Layout.css'
import {
    Link,
    Outlet
} from 'react-router-dom'

export default function Layout() {
    return (
        <div>
            <h1>Chore App</h1>
            <ul>
                <li>
                    <Link to='/list-chores' id='lnkListChores'>List Chores</Link>
                </li>
                <li>
                    <Link to='/add-chore' id='lnkAddChore'>Add Chore</Link>
                </li>
            </ul>

            <Outlet />
        </div>
    )
}
