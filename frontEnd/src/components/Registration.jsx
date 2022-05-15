import {NavLink} from "react-router-dom";
import React from 'react';
import { MDBInput } from 'mdb-react-ui-kit';
import { MDBBtn } from 'mdb-react-ui-kit';

function Registration(){
    return(
        <div className='logIn'>
            <h2>Регистрация</h2>
            <form>
                <label>Логин:<MDBInput required id='typeText' type='text' /></label><br/>
                <label>Пароль:<MDBInput required id='typePassword' type='password' /></label><br/>
                <label>Возраст:<MDBInput required id='typeAge' type='number' min="1" max="150"/></label><br/>
                <label>Почта:<MDBInput required id='typeEmail' type='email' /></label><br/>
                <label>Номер телефона:<MDBInput required id='typePhone' type='tel' /></label><br/>
                <MDBBtn rounded>Создать аккаунт</MDBBtn>
            </form>
            <NavLink to='/logIn'>У меня есть аккаунт</NavLink>
        </div> );
}
export default Registration;