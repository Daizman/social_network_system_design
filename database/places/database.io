// mongodb + elastic for fast search by name

Table places {
    place_id integer [primary key, note: 'Location identifier']
    name text [not null, unique, note: 'Location name']
    coords point [not null, note: 'Lat/long for location']

    indexes {
        coords
    }
}
