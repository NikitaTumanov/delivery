import React, { Component } from 'react';
import '../../node_modules/bootstrap/dist/css/bootstrap.min.css';
import BootstrapTable from 'react-bootstrap-table-next';

const data = [
    {name: 'Product 1', value: '11', price: '111'},
    {name: 'Product 2', value: '22', price: '222'},
    {name: 'Product 3', value: '33', price: '333'},
];
const columns = [
    {
    dataField: 'name',
    text: 'Name'
}, {
    dataField: 'value',
    text: 'Value'
}, {
    dataField: 'price',
    text: 'Price'
}];

function Products(props){
    return(
        <div className='products'>
            <ul>{props.head}</ul>

            <BootstrapTable keyField='id' data={ data } columns={ columns } />
        </div>
    );
}
export default Products;