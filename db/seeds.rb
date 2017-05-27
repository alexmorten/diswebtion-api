u1 = User.create(firstname:"Tom",lastname:"Burton")
u2 = User.create(firstname:"Max",lastname:"Mustermann")

t1 = Topic.create(title:"Ist Trump unfähig?",description:"Es gibt nicht viel zu erklären...",user:u1)
t2 = Topic.create(title:"Butter oder Margerine?",description:"Hier könnte ihre Werbung stehen!",user:u2)

s1 = Side.create(title:"Trump ist unfähig",description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",user:u2,topic:t1)
s2 = Side.create(title:"Trump ist nicht unfähig",description:"er ist einfach nur....seltsam",user:u2,topic:t1)

a1 = Argument.create(title:"Er hat dies und jenes gamcht",description:"hier sieht man belege und so bla bla",side:s1)
a2 = Argument.create(title:"Er hat außerdem  ..... nicht gemacht!",description:"Belege sind hier:....",side:s1)
a3 = Argument.create(title:"Er hat aber  ..... nicht gemacht!",description:"Belege sind außerdem unnütz!",side:s2)
