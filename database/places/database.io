// mongodb

Table places {
    place_id integer [primary key, note: 'Location identifier']
    name text [not null, unique, note: 'Location name']
}
