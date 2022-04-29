import {NavLink} from "react-router-dom";
import {MDBBtn, MDBInput} from "mdb-react-ui-kit";
import React from "react";

function LogIn(props){
	return( 
		<div className='logIn'>
			<ul>{props.head}</ul>
			<form>
				<label>Логин:<MDBInput required id='typeText' type='text' /></label><br/>
				<label>Пароль:<MDBInput required id='typePassword' type='password' /></label><br/>
				<MDBBtn rounded>Войти</MDBBtn>
			</form>
			<NavLink to='/registration'>Окно регистрации</NavLink>
		</div> ); 
}
export default LogIn;