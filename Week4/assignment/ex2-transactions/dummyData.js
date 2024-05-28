export const dummyData = [
  {
    account_number: 101,
    balance: 5000,
    account_changes: [],
  },
  {
    account_number: 102,
    balance: 2000,
    account_changes: [
      {
        change_number: 1,
        amount: -500,
        changed_date: new Date(),
        remark: '102 sent 500',
      },
    ],
  },
  {
    account_number: 103,
    balance: 1000,
    account_changes: [
      {
        change_number: 1,
        amount: 500,
        changed_date: new Date(),
        remark: '103 received 500',
      },
    ],
  },
];
