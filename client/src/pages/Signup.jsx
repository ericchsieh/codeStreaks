import axios from 'axios';
import React from 'react'
import { useState } from 'react'
import { useNavigate } from 'react-router-dom';

const Signup = () => {
    const [users, setUsers] = useState({
        email: "",
        pwd: "",
        nickname: "",
        status: null,
        preference: null,
        company: "",
    });

    const navigate = useNavigate()

    const handleChange = (e) => {
        setUsers((prev) => ({ ...prev, [e.target.name]: e.target.value}))
    };

    const handleClick = async e => {
        e.preventDefault()
        try {
            await axios.post("http://localhost:8800/Users", users)
            navigate("login")
        } catch(err) {
            console.log(err)
        }
    }

    console.log(users);

    return (
        <div className='form'>
            <h1>Sign up</h1>
            <input type="text" placeholder='Email' onChange={handleChange} name="email"/>
            <input type="password" placeholder='Password' onChange={handleChange} name="pwd"/>
            <input type="text" placeholder='Nickname' onChange={handleChange} name="nickname"/>
            <p>Status</p>
            <label><input type="radio" onChange={handleChange} name="status" value="1"/>Working</label>
            <label><input type="radio" onChange={handleChange} name="status" value="2"/>Seeking</label>
            <p>Preference</p>
            <label><input type="radio" onChange={handleChange} name="preference" value="1"/>Flexible</label>
            <label><input type="radio" onChange={handleChange} name="preference" value="2"/>Normal</label>
            <label><input type="radio" onChange={handleChange} name="preference" value="3"/>Intensive</label>
            <input type="text" placeholder='Company Name' onChange={handleChange} name="company"/>
            <button onClick={handleClick}>Sign Up</button>
        </div>
    )
}

export default Signup