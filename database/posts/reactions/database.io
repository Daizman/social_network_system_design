// postgresql

Table reactions {
    post_id uuid [not null, note: 'Reacted post']
    user_id integer [not null, note: 'User who reacted']
    reaction smallint [not null, note: 'Reaction type']

    indexes {
        (post_id, user_id) [unique, note: 'Only one reaction for post from user']
    }
}
