import React from 'react';
import './App.css';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import DailyTodo from './pages/DailyTodo';
import Layout from './pages/Layout';

function App() {
  return (
    <div className="App">
      <BrowserRouter>
      <Routes>
          <Route index element={<DailyTodo/>}/>
          <Route path="/" element={<Layout/>}> 
            <Route path="dailytodo" element={<DailyTodo/>}/>
          </Route>
      </Routes>
    </BrowserRouter>
    </div>
  ); 
}

export default App;
