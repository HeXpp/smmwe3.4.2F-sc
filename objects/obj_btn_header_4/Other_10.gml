if  (obj_header.page == 0 || obj_header.page == 1){
	x = obj_header.x+183
	visible = 1
}
else if (obj_header.page == 2)
{
	x = obj_header.x+155
	visible = 1
}
else if (obj_header.page == 3 || obj_header.page == 4 || obj_header.page == 5 || obj_header.page == 6 || obj_header.page == 7 || obj_header.page == 8)
{
	x = obj_header.x+127
	visible = 1
}
else
	visible = 0
