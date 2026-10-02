// redis

Table post_reactions {
    post_id uuid [primary key, not null, note: 'Reacted post']
    reaction_type smallint [not null, note: 'Reaction type (stored together with reaction_count)']
    reaction_count integer [not null, note: 'Reaction count for post (stored together with reaction_type)']
}
