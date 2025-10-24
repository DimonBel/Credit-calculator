import React, { useState } from 'react';

const Calculator: React.FC = () => {
  const [num1, setNum1] = useState<number>(0);
  const [num2, setNum2] = useState<number>(0);
  const [response, setResponse] = useState<any>(null);

  const handleSubmit = async () => {
    const data = { num1, num2 };

    try {
      const res = await fetch('http://localhost:4567/test', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
      });

      const json = await res.json();
      setResponse(json);
    } catch (err) {
      console.error('Request failed', err);
    }
  };

  return (
    <div>
      <input
        type="number"
        value={num1}
        onChange={(e) => setNum1(Number(e.target.value))}
      />
      <input
        type="number"
        value={num2}
        onChange={(e) => setNum2(Number(e.target.value))}
      />
      <button onClick={handleSubmit}>Send</button>

      {response && (
        <pre>{JSON.stringify(response, null, 2)}</pre>
      )}
    </div>
  );
};

export default Calculator;
