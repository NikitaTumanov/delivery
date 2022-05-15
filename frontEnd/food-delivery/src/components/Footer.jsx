import React from 'react';
import {
    MDBFooter
} from 'mdb-react-ui-kit';

var style = {
    backgroundColor: "#0a4275",
    textAlign: "center",
    position: "fixed",
    left: "0",
    bottom: "0",
    height: "60px",
    width: "100%",
    zIndex: 101
};

export default function App() {
    return (
        <div>&#160;
            <MDBFooter className='text-center text-white' style={style}>
                <div className='text-center p-3' style={{ backgroundColor: 'rgba(0, 0, 0, 0.2)' }}>
                    Курсовая работа студента Туманова Никиты Алексеевича группы ИКБО-01-19 на тему "Доставка продуктов"
                </div>
            </MDBFooter>
        </div>
    );
}