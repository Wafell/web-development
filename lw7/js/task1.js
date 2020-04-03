function isPrimeNumber(n) {
	let isPrime
	isPrime = true
	if (typeof n == 'number') {
        for (j = 2; j < n; j++) {
            if (i % j == 0) { 	
        	    isPrime = false
        	    break
	        }	    
        }
        if (isPrime) {
        	console.log(n + ' is prime number') 	
        } else{
            console.log(n + ' is not prime number') 
        }
	} else {
		if (typeof n == 'object') {
			for (let i = 0; i < n.length; i++) {
				if (typeof n[i] == 'number'){
					for (let j = 2; j < n[i]; j++) {
                        if (n[i] % j == 0) {
                            isPrime = false
                            break
                        }
                    }
                    if (isPrime) {
                    	console.log(n[i] + ' is prime number')
                    } else {
                    	console.log(n[i] + ' is not prime number')
                    }
                } else {
                	console.log(n[i] + ' is an invalid data type')
                }
            }
        } else {
        	console.log(n + ' is an invalid data type')
        }                                
    }
}
