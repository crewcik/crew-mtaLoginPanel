
GUIEditor = {
    button = {},
    window = {},
    edit = {}
}
        GUIEditor.window[1] = guiCreateWindow(430, 259, 563, 243, "Crew login panel", false)
        guiWindowSetSizable(GUIEditor.window[1], false)

        GUIEditor.edit[1] = guiCreateEdit(34, 50, 169, 48, "", false, GUIEditor.window[1])
        GUIEditor.edit[2] = guiCreateEdit(35, 116, 168, 55, "", false, GUIEditor.window[1])
        GUIEditor.button[1] = guiCreateButton(244, 94, 116, 47, "Giriş Yap", false, GUIEditor.window[1])
        guiSetProperty(GUIEditor.button[1], "NormalTextColour", "FFE82A2A")
        GUIEditor.button[2] = guiCreateButton(364, 94, 107, 47, "Kayıt ol", false, GUIEditor.window[1])
        guiSetProperty(GUIEditor.button[2], "NormalTextColour", "FF16FB31")    

        guiSetText(GUIEditor.edit[1], "Kullanıcı Adınız")
        guiSetText(GUIEditor.edit[2], "Şifreniz")

        addEventHandler("onClientGUIClick", root, function()
        if  source == GUIEditor.edit[1] then
        guiSetText(GUIEditor.edit[1], "")
        elseif source == GUIEditor.edit[2] then 
            guiSetText(GUIEditor.edit[2], "")
        end
end)

        addEventHandler("onClientGUIClick", root, function()
        
            if source == GUIEditor.button[1] then 
                local kullanici = guiGetText(GUIEditor.edit[1])
                local sifre = guiGetText(GUIEditor.edit[2])
                triggerServerEvent("giris:yap", localPlayer, kullanici, sifre)
            elseif source == GUIEditor.button[2] then 
                local kullanici = guiGetText(GUIEditor.edit[1])
                local sifre = guiGetText(GUIEditor.edit[2])
                triggerServerEvent("kayit:ol", localPlayer, kullanici, sifre)
        end
end)