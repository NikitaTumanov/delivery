import {NavLink} from "react-router-dom";
import './styles/Header.css';

function Header(){
    return(
        <header className='header'>
            <NavLink to='/'>Все товары</NavLink>
            <NavLink to='/categories'>Все категории</NavLink>
            <NavLink to='/orders'>Корзина</NavLink>
            <NavLink to='/account'>Кабинет пользователя</NavLink>
            <NavLink to='/admin'>Окно админа</NavLink>
            <NavLink to='/courier'>Окно тоставщика</NavLink>
            <NavLink to='/logIn'>Окно авторизации</NavLink>
        </header>
    );
}
export default Header;