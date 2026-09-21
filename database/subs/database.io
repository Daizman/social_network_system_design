// postgresql

Table subs {
    user_id integer [primary key, note: 'User who is subscribed to someone else']
    to integer[] [note: 'People subed by a user']
}

// transfer user to it manually from admin panel
Table subs_celebs {
    user_id ingeger [primary key, note: 'Popular user']
    subs integer[] [not null, note: 'Subscribers']
}
