var hours;
if reported = 0{
if current_minute < 10
	hours = "0"
else
	hours = ""
webhook1 = discord_webhook(1132016570827276350, "VtrkA8Iaba1-8_Su5fJIEEo2pf1rG5flPd1XSiy7KKmm3H_lIUn2GFI0IB18BUQOjc3W");
webhook1.content = dcw_noone;
webhook1.username = "Report Bot";
webhook1.avatar_url = "https://cdn.discordapp.com/avatars/819617828453089351/d702a11f455054c0658b68ea383d326f?size=1024";
webhook1.embed_use = true;
webhook1.embed_title = string_hash_to_newline(obj_nm_card_expand.name);
webhook1.embed_description = string_hash_to_newline(obj_nm_card_expand._id);
webhook1.embed_color = 0xb8b5ff;
webhook1.embed_author_name = string_hash_to_newline(global.my1) + " ha reportado un nivel" ;
webhook1.embed_author_iconUrl = "";

webhook1.embed_footer_text = "Creador del nivel " + string_hash_to_newline(obj_nm_card_expand.author);
webhook1.embed_footer_iconUrl = "";
webhook1.embed_thumbnail_url = "";
webhook1.execute();
scr_toast(0, scr_language(183));
instance_destroy(obj_dcw)
exit
}