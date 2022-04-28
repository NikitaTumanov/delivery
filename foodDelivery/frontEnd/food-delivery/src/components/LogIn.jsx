import {NavLink} from "react-router-dom";

function LogIn(props){
	return( 
		<div className='logIn'>
			<ul>{props.head}</ul>
			<form>
				<label>Логин:<input type="text" name="name" /></label>
				<label>Пароль:<input type="text" name="password" /></label>
				<input type="submit" value="Войти" />
			</form>
			<NavLink to='/registration'>Окно регистрации</NavLink>
		</div> ); 
}
export default LogIn;