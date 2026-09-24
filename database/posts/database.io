// postgresql + cache seen on client (2 days)

Table posts {
    post_id uuid [primary key, note: 'Post identifier']
    user_id integer [not null, note: 'Author of the post']
    description text [not null, note: 'Description for the post']
    place_id integer [not null, note: 'Location where post refers']
    pictures text[] [note: 'Keys for s3 storage of pictures for the post']
    created_at timestampz [not null, note: 'Creation time of the post']
    coord point [not null, note: 'Lat/long coordinate pair for the post']

    indexes {
      user_id
      place_id
      created_at [type: desc]
    }
}
