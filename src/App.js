import React from 'react';

const users = ['Sree Krishna', 'Balaji', 'Mahesh babu', 'Dhoni'];

function App() {
  return (
    <div style={{ textAlign: 'center', marginTop: '50px' }}>
      <h1>User List</h1>
      <ul>
        {users.map((name, index) => (
          <li key={index}>{name}</li>
        ))}
      </ul>
    </div>
  );
}

export default App;
