import {MDBContainer, MDBDataTable, MDBInputGroup} from "mdbreact";
import React from "react";
import {MDBBtn} from "mdb-react-ui-kit";

const data = {
    columns: [
        {
            label: 'Номер заказа',
            field: 'name',
            sort: 'asc',
            width: 150
        },
        {
            label: 'Общая стоимость',
            field: 'position',
            sort: 'asc',
            width: 270
        },
        {
            label: 'Статус',
            field: 'office',
            sort: 'asc',
            width: 200
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

class Account extends React.Component{

    render() {
        return (
            <div>
                <MDBContainer>
                    <br/>
                    <MDBInputGroup required containerClassName="mb-3" prepend="Логин" value="Username" />
                    <MDBInputGroup required containerClassName="mb-3" prepend="Пароль" value="Password" />
                    <MDBInputGroup required containerClassName="mb-3" prepend="Возраст" value="18" type='number' min="1" max="150"/>
                    <MDBInputGroup required containerClassName="mb-3" prepend="Почта" value="bigredbear37@gmail.com" type='email'/>
                    <MDBInputGroup required containerClassName="mb-3" prepend="Телефон" value="89637690605" type='tel'/>
                    <MDBBtn rounded>Обновить данные</MDBBtn>
                </MDBContainer>
                <h2>Мои заказы</h2>
                <MDBDataTable
                    striped
                    bordered
                    small
                    data={data}
                />
            </div>
        );
    }
}

export default Account;