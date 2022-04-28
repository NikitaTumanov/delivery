import './App.css';
import Header from './components/Header.jsx';
import LogIn from './components/LogIn.jsx';

import{
  BrowserRouter as Router,
  Route,
  Routes
} from "react-router-dom";
import Products from "./components/Products";
import Registration from "./components/Registration";

function App() {
  return (
      <div className="App">
        Доставка продуктов
        <Router>
          <Header/>
          <Routes>
            <Route path="/" element={<Products head='Здесь все товары'/>}/>
            <Route path="/categories" element={<LogIn head='Здесь все категории'/>}/>
            <Route path="/orders" element={<LogIn head='Здесь корзина'/>}/>
            <Route path="/account" element={<LogIn head='Здесь кабинет пользователя'/>}/>
            <Route path="/admin" element={<LogIn head='Здесь окно админа'/>}/>
            <Route path="/courier" element={<LogIn head='Здесь окно тоставщика'/>}/>
            <Route path="/logIn" element={<LogIn head='Здесь окно авторизации'/>}/>
            <Route path="/registration" element={<Registration head='Здесь окно регистрации'/>}/>
          </Routes>
        </Router>
      </div>
  );
}
export default App;