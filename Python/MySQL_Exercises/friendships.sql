select u1.first_name, u1.last_name, u2.first_name, u2.last_name 
from users u1
left join friendships 
	on u1.id = friendships.user_id
left join users as u2
	on friendships.friend_id = u2.id
