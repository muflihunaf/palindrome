function fizzBuzz(n: number): void {
  for (let i = 1; i <= n; i++) {
      let output: string = '';
      if (i % 3 === 0) output += 'Fizz';
      if (i % 5 === 0) output += 'Buzz';
      console.log(output || i);
  }
}

const n: number = 15;
fizzBuzz(n);
