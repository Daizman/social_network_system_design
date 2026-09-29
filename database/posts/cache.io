// redis

Table user_posts {
    user_id integer [primary key, note: 'Users posts for feed']
    posts bytea[] [not null, note: 'Serialized prepared posts for user']
}
