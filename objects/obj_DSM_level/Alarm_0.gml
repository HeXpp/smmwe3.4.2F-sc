if press = 1{
if archivo != ""
	url = http_get(archivo)
else
	alarm[0] = 1
}