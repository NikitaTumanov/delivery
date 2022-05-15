import React, {Component, useEffect, useState} from 'react';
import '../../node_modules/bootstrap/dist/css/bootstrap.min.css';
import {MDBBtn, MDBBtnGroup, MDBInput} from 'mdb-react-ui-kit';
import { MDBDataTable } from 'mdbreact';
import axios from "axios";
import './styles/tables.css';

function Products(){
    const [products, setProducts] = useState([]);
    const [categories, setCategories] = useState([]);
    useEffect(() => {
        getProducts();
        getCategories();
    }, []);
    async function getProducts() {
        const response = await axios.get('http://localhost:8080/public/products');
        const jsonData = await response.data;
        console.log({jsonData})
        setProducts(jsonData)
    }
    async function getCategories() {
        const response = await axios.get('http://localhost:8080/public/categories');
        const jsonData = await response.data;
        console.log({jsonData})
        setCategories(jsonData)
    }

    return(
        <div className='products'>
            <h2>Категории</h2>
            {categories?.map(category => (
                <MDBBtn style={{margin: 2}}>{category.name}</MDBBtn>
            ))}
            <br/>
            <h2>Продукты</h2>
            <table>
                <thead>
                <tr>
                    <th><h4 className="mid">Название</h4></th>
                    <th><h4 className="mid">Цена</h4></th>
                    <th><h4 className="mid">Количество</h4></th>
                    <th/>
                    <th/>
                </tr>
                </thead>
                <tbody>
                {products?.map(product => (
                    <tr key={product.id}>
                        <td>{product.name}</td>
                        <td>{product.price}</td>
                        <td>{product.volume}</td>
                        <td>
                            <label><MDBInput required id='typeCount' type='number' min="1" max={product.volume}/></label><br/>
                        </td>
                        <td>
                            <MDBBtn style={{margin: 2}}>Купить</MDBBtn>
                        </td>
                    </tr>
                ))}
                </tbody>
            </table>
        </div>
    );
}
export default Products;