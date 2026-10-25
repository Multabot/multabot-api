// Node 18+. Requiere MULTABOT_API_KEY en el entorno.
const API = 'https://api.multabot.com.ar';

async function consultarInfracciones({ plate, document }) {
  const params = new URLSearchParams(plate ? { plate } : { document });
  const res = await fetch(`${API}/v1/infracciones?${params}`, {
    headers: { Authorization: `Bearer ${process.env.MULTABOT_API_KEY}` },
  });
  if (!res.ok) throw new Error(`Multabot API ${res.status}: ${await res.text()}`);
  return res.json();
}

console.log(await consultarInfracciones({ plate: 'AB123CD' }));
