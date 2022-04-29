import React from 'react';
import {
    MDBFooter
} from 'mdb-react-ui-kit';

export default function App() {
    return (
        <MDBFooter className='text-center text-white' style={{ backgroundColor: '#0a4275' }}>
            <div className='text-center p-3' style={{ backgroundColor: 'rgba(0, 0, 0, 0.2)' }}>
                Курсовая работа студента Туманова Никиты Алексеевича группы ИКБО-01-19 на тему "Доставка продуктов"
            </div>
        </MDBFooter>
    );
}