function validatePIN(pin) {
    if (pin.trim().length < 4 || pin.length == 5 || pin.trim().length > 6)
        return false;
    
    for (const i of pin) {
        if (isNaN(i))
            return false;
    }
    return true
}

console.log(validatePIN('09876'));
//ok
