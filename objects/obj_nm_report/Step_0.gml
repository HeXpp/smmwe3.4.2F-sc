if reported == 0{
if obj_nm_card_expand.author != global.my1{
if global.cooldown = 0{
    canpress = 1
	image_index = 0
}
else if reported = 1{
	canpress = 0
	image_index = 2
}
else {
    canpress = 0
	image_index = 1
}
}
else if (obj_nm_card_expand.author == global.my1){
	canpress = 0
	image_index = 2
}
}
else{
	canpress = 0
	image_index = 2
}
	