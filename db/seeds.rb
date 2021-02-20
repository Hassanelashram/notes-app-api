Note.create!(
    title: "Buy groceries",
    body: "bananas and milk"
)

Note.create!(
    title: "Workout",
    body: "Gotta stay fit"
)

Note.create!(
    title: "Things to learn",
    body: "Programming"
)

Comment.create!(
    body: "commenting",
    note: Note.first
)

