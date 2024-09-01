if  (obj_header.page == 0 || obj_header.page == 1)
	visible = 0
else if obj_header.page = 2 {
	x = obj_header.x-28
	visible = 1
}
else if (obj_header.page == 3 || obj_header.page == 4 || obj_header.page == 5 || obj_header.page == 6 || obj_header.page == 7 || obj_header.page == 8)
{
	x = obj_header.x-56
	visible = 1
}
else
{
	x = obj_header.x-84
	visible = 1
}