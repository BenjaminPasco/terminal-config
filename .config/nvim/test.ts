type TestArgs = {
          foo: string;
          bar: number;
};

function testFunction(args: TestArgs) {
          return `${args.bar} + ${args.foo}`;
}

console.log(testFunction({ foo: '200', bar: 100 }));

console.log('what is going on');

async function test() {}

const testArray = [];

for (let i = 0; i < testArray.length; i++) {
          console.log('i', i);
}

const d = 128789629720937;
