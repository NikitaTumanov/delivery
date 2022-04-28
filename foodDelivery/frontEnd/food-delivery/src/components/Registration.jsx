import {NavLink} from "react-router-dom";

function Registration(props){
    return(
        <div className='logIn'>
            <ul>{props.head}</ul>
            <form>
                <label>Логин:<input required type="text" name="name" /></label>
                <label>Пароль:<input required type="text" name="password" /></label>
                <label>Возраст:<input required type="number" name="age" min="1" max="150" /></label>
                <label>Почта:<input required type="email" name="email" /></label>
                <label>Номер телефона: +7 <input required type="tel" name="phoneNumber" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" /></label>
                <input type="submit" value="Войти" />
            </form>
            <NavLink to='/logIn'>Окно авторизации</NavLink>
        </div> );
}
export default Registration;