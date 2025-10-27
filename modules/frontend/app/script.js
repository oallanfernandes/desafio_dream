const backendUrl = "/api/health"; 

async function checkHealth() {
  try {
    const res = await fetch(backendUrl);
    const data = await res.json();
    document.getElementById("status").textContent = `Backend está ${data.status}`;
  } catch (e) {
    document.getElementById("status").textContent = "Erro ao consultar backend 😞";
  }
}

checkHealth();
