import axios from 'axios';
import React from 'react'
import { useState } from 'react'
import { useNavigate } from 'react-router-dom';

const Login = () => {
    const [users, setUsers] = useState({
        email: "",
        pwd: ""
    });

    const navigate = useNavigate()

    const handleChange = (e) => {
        setUsers((prev) => ({ ...prev, [e.target.name]: e.target.value}))
    };

    const handleClick = async e => {
        e.preventDefault()
        try {
            await axios.post("http://localhost:8800/Users" + email, users)
            navigate("/")
        } catch(err) {
            console.log(err)
        }
    }

    console.log(users);
    return (
        <div>
            <h1>Login</h1>
            <input type="text" placeholder='Email' onChange={handleChange} name="email"/>
            <input type="password" placeholder='Password' onChange={handleChange} name="pwd"/>
            <button onClick={handleClick}>Login</button>
            <a href="./signup"><button>Sign Up</button></a>
        </div>
    )
}

export default Login