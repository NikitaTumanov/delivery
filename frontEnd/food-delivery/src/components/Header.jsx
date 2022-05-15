import {NavLink} from "react-router-dom";
import React, { useState } from 'react';
import {
    MDBContainer,
    MDBNavbar,
    MDBNavbarBrand,
    MDBNavbarToggler,
    MDBNavbarNav,
    MDBNavbarItem,
    MDBNavbarLink,
    MDBIcon,
    MDBCollapse
} from 'mdb-react-ui-kit';

function Header(){
    const [showNavSecond, setShowNavSecond] = useState(false);

    return (
        <MDBNavbar expand='lg' light bgColor='light'>
            <MDBContainer fluid>
                <MDBNavbarBrand href='/'>Доставка продуктов</MDBNavbarBrand>
                <MDBNavbarToggler
                    aria-expanded='false'
                    aria-label='Toggle navigation'
                    onClick={() => setShowNavSecond(!showNavSecond)}
                >
                    <MDBIcon icon='bars' fas />
                </MDBNavbarToggler>
                <MDBCollapse navbar show={showNavSecond}>
                    <MDBNavbarNav>
                        <MDBNavbarLink href='/'>Все товары</MDBNavbarLink>
                        <MDBNavbarLink href='/orders'>Корзина</MDBNavbarLink>
                        <MDBNavbarLink href='/account'>Личный кабинет</MDBNavbarLink>
                        <MDBNavbarLink href='/admin'>Панель админа</MDBNavbarLink>
                        <MDBNavbarLink href='/courier'>Панель доставщика</MDBNavbarLink>
                        <MDBNavbarLink href='/logIn'>Авторизация</MDBNavbarLink>
                    </MDBNavbarNav>
                </MDBCollapse>
            </MDBContainer>
        </MDBNavbar>
    );
}
export default Header;