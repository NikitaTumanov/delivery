import {MDBBtn, MDBBtnGroup} from "mdb-react-ui-kit";
import React from "react";
import {MDBDataTable} from "mdbreact";

function Orders(){
    const data = {
        columns: [
            {
                label: 'Название',
                field: 'name',
                sort: 'asc',
                width: 150
            },
            {
                label: 'Стоимость',
                field: 'position',
                sort: 'asc',
                width: 270
            },
            {
                label: 'Количество',
                field: 'office',
                sort: 'asc',
                width: 200
            },
            {
                label: '18+',
                field: 'age',
                sort: 'asc',
                width: 100
            },
            {
                label: 'Salary',
                field: 'salary',
                sort: 'asc',
                width: 100
            }
        ],
        rows: [
            {
                name: 'Jonas Alexander',
                position: 'Developer',
                office: 'San Francisco',
                age: '30',
                date: '2010/07/14',
                salary: '$86'
            },
            {
                name: 'Shad Decker',
                position: 'Regional Director',
                office: 'Edinburgh',
                age: '51',
                date: '2008/11/13',
                salary: '$183'
            },
            {
                name: 'Donna Snider',
                position: 'Customer Support',
                office: 'New York',
                age: '27',
                date: '2011/01/25',
                salary: '$112'
            }
        ]
    };

    return(
        <div className='products'>
            <h2>Товары в корзине</h2>
            <MDBDataTable
                striped
                bordered
                small
                data={data}
            />
        </div>
    );
}
export default Orders;