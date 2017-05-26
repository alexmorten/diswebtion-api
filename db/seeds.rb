u1 = User.create(firstname:"Tom",lastname:"Burton")
u2 = User.create(firstname:"Max",lastname:"Mustermann")

t1 = Topic.create(title:"Ist Trump unfähig?",description:"Es gibt nicht viel zu erklären...",user:u1)
t2 = Topic.create(title:"Butter oder Margerine?",description:"Hier könnte ihre Werbung stehen!",user:u2)

s1 = Side.create(title:"Trump ist unfähig",user:u2)
s2 = Side.create(title:"Trump ist nicht unfähig",user:u2)
