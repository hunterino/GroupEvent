Based on httpie
```
brew install httpie
```

```
http :3000/group_events
http :3000/group_events title="It's a party" begins="01/01/2001" end="02/02/2002" location="Amazon Rain Forest" description="just a little river"
http :3000/group_events title="What's up doc" begins="03/03/2001" end="04/04/2002" location="Paris Hilton" description="just a little river"
http :3000/group_events title="Doing what I want to" begins="05/05/2001" end="06/06/2002" location="Rocky Mountains"
http DELETE :3000/group_events/1
http :3000/group_events
http DELETE :3000/group_events
http PUT :3000/group_events/2 published=true
http PUT :3000/group_events/3 putlished=true
http :3000/group_events
```