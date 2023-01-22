import React from 'react'
import { useEffect } from 'react'
import { useState } from 'react'
import axios from 'axios'

const Questions = () => {
    const [questions, setQuestions] = useState([])

    useEffect(()=>{
        const fetchAllQuestions = async () =>{
            try {
                const res = await axios.get("http://localhost:8800/questions")
                setQuestions(res.data);
            } catch(err) {
                console.log(err);
            }
        }
        fetchAllQuestions()
    },[])

    return (
        <div>
            <h1>LeetCode Questions</h1>
            <div className="questions">
                {questions.map(question=>(
                    <><h2>{question.title}</h2>
                    <h2>{question.category}</h2>
                    <h2>{question.difficulty}</h2>
                    <h2>{question.link}</h2>
                    </>
                ))}
            </div>
        </div>
    )
}

export default Questions