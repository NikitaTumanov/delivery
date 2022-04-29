import './App.css';
import Header from './components/Header';
import Products from "./components/Products";
import Orders from "./components/Orders";
import Account from "./components/Account";
import Admin from "./components/Admin";
import Courier from "./components/Courier";
import LogIn from './components/LogIn';
import Registration from "./components/Registration";
import React, {useState, useEffect} from 'react';
import{
  BrowserRouter as Router,
  Route,
  Routes
} from "react-router-dom";
import Footer from "./components/Footer";

function App() {
    const [products, setProducts] = useState(false);
    useEffect(() => {
        getProducts();
    }, []);
    function getProducts() {
        fetch('http://localhost:8080/public/products', { mode: 'no-cors'})
            .then(response => {
                console.log(response);
                return response.text();
            })
            .then(productsData => {
                setProducts(productsData);
            });
    }

  return (
      <div className="App">
        <Router>
          <Header/>
          <Routes>
            <Route path="/" element={<Products head='Здесь все товары'/>}/>
            <Route path="/orders" element={<Orders head='Здесь корзина'/>}/>
            <Route path="/account" element={<Account head='Здесь кабинет пользователя'/>}/>
            <Route path="/admin" element={<Admin head='Здесь окно админа'/>}/>
            <Route path="/courier" element={<Courier head='Здесь окно тоставщика'/>}/>
            <Route path="/logIn" element={<LogIn head='Здесь окно авторизации'/>}/>
            <Route path="/registration" element={<Registration head='Здесь окно регистрации'/>}/>
          </Routes>
        </Router>
          {products ? products : 'There is no products data available'}
          <Footer/>
      </div>
  );
}
export default App;