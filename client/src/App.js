import React from 'react';
import './App.css';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Login from './pages/Login';
import DailyTodo from './pages/DailyTodo';
import Questions from './pages/Questions';
import Settings from './pages/Settings';
import Signup from './pages/Signup';
import Layout from './pages/Layout';


function App() {
  return (
    <div className="App">
      <BrowserRouter>
      <Routes>
          <Route index element={<Login/>}/>
          <Route path="/" element={<Layout/>}> 
          <Route path="dailytodo" element={<DailyTodo/>}/>
          <Route path="questions" element={<Questions/>}/>
          <Route path="settings" element={<Settings/>}/>
          <Route path="signup" element={<Signup/>}/>
        </Route>
      </Routes>
    </BrowserRouter>
    </div>
  ); 
}

export default App;
