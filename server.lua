addEvent("giris:yap", true)
addEventHandler("giris:yap", root, function(kullanici, sifre)
    local hesap = getAccount(kullanici, sifre)
        if hesap ~= false then
           logIn(source, hesap, sifre)
           outputChatBox("[CREW]:#ffffff Başarıyla #ffa300" + hesap + "#ffffff isimli hesaba giriş yaptınız.", source, 25, 0, 255, true)
        else 
            outputChatBox("[CREW]:#ffffff Kullanıcı adı veya şifreniz yanlış!", source, 25, 0, 255, true)
    end
end)

addEvent("kayit:ol", true)
addEventHandler("kayit:ol", root, function(kullanici, sifre)
    local hesap = addAccount(hesap, kullanici, sifre)
    if hesap then
        outputChatBox("[CREW]:#ffffff Bu hesap zaten kayıtlı.", source, 25, 0, 255, true)
    else 
        outputChatBox("[CREW]:#ffffff Başarıyla kayıt oldunuz.", source, 25, 0, 255, true)
    end
end)