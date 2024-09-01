    if (expand == 1)
    {
        s_scalex += 0.2
        s_scaley += 0.2
        if (s_scalex > 1.4)
            expand = 2
    }
    else if (expand == 2)
    {
        s_scalex -= 0.2
        s_scaley -= 0.2
        if (s_scalex < 1)
        {
            expand = 0
            s_scalex = 1
            s_scaley = 1
        }
    }
    if (expand2 == 1)
    {
        s_scalex += 0.1
        s_scaley += 0.1
        if (s_scalex > 1.1)
        {
			expand2 = 2
            s_scalex = 1.1
            s_scaley = 1.1
        }
    }
    else if (expand2 == 2)
    {
        s_scalex -= 0.1
        s_scaley -= 0.1
        if (s_scalex < 1)
        {
            expand2 = 0
            s_scalex = 1
            s_scaley = 1
        }
    }
    if (expand3 == 1)
    {
        s_scalex += 0.1
        s_scaley += 0.1
        if (s_scalex > 1){
            s_scalex = 1
            s_scaley = 1
			expand3 = 0
		}
    }
	if press = 1
		rot -= 8