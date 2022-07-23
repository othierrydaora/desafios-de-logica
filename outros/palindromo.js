// Função q verifica se o texto inserido é um palíndromo

function palindromo(texto) {
	for (let i = 0; i < texto.length; i++) if (texto[i] != texto[texto.length - 1 - i]) return false;
	return true;
}

console.log(palindromo("luzazul"));
