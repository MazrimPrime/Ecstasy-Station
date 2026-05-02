import { type Antagonist, Category } from '../base';

const Stowaway: Antagonist = {
  key: 'stowaway',
  name: 'Stowaway',
  description: [
    `
      An unapproved resident of the Space Station. Maybe they're a criminal running from the police or a refugee just trying to survive,
      either way they now find themselves hiding in maintenance tunnels and stealing to survive.
    `,

    `
      You're not allowed to kill or grievously injure people. You can break into wherever and steal from wherever though,
      but when you finally get caught you better hope you didn't steal anything valuable enough to get you executed.
    `,

    `
      You can only spawn as this atag if you roll assistant as your job at round start.
    `,
  ],
  category: Category.Roundstart,
};

export default Stowaway;
