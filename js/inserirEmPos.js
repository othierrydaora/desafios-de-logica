// Inserir um caractere em uma posição da array

function insert(arr, pos, num) {
	let newArr = [];
	for (let i = 0; i < arr.length; i++) {
		if (i === pos) {
			newArr.push(num, arr[i]);
		} else newArr.push(arr[i]);
	}

	return newArr;
}

console.log(insert([1, 2, 3, 4, 5], 1, 8));
