export const recipes = [
  {
    name: 'burger',
    description: 'Best burger',
    ingredients: [
      {
        name: 'meat',
        amount: 1,
        unit: 'pound',
      },
      {
        name: 'lettuce',
        amount: 1,
        unit: 'leaf',
      },
      {
        name: 'tomato',
        amount: 1,
        unit: 'slice',
      },
      {
        name: 'bun',
        amount: 2,
        unit: 'piece',
      },
    ],
    instructions: [
      'put meat on bun',
      'put lettuce on meat',
      'put tomato on lettuce',
      'put bun on tomato',
      'enjoy',
    ],
    categories: ['dinner', 'lunch', 'main course'],
    created_at: new Date(),
  },
  {
    name: 'pizza',
    description: 'Best pizza',
    ingredients: [
      {
        name: 'dough',
        amount: 1,
        unit: 'pound',
      },
      {
        name: 'tomato sauce',
        amount: 1,
        unit: 'cup',
      },
      {
        name: 'cheese',
        amount: 1,
        unit: 'cup',
      },
      {
        name: 'pepperoni',
        amount: 1,
        unit: 'ounce',
      },
    ],
    instructions: [
      'put dough on pan',
      'put tomato sauce on dough',
      'put cheese on tomato sauce',
      'put pepperoni on cheese',
      'bake',
      'enjoy',
    ],
    categories: ['dinner', 'lunch', 'main course'],
    created_at: new Date(),
  },
];
