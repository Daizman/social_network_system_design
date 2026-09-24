// postgresql

Table comments {
    comment_id uuid [primary key, note: 'Comment identifier']
    post_id uuid [not null, note: 'Commented post']
    user_id integer [not null, note: 'Comment author']
    content text [not null, note: 'Comment content']
    created_at timestampz [not null, note: 'Creation time of the comment']

    indexes {
        post_id
    }
}
