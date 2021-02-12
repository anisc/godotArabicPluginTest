extends Node2D


func _ready():
	#change language here en=english / ar =arabic
	TranslationServer.set_locale("ar")
	$ALabel2.arabic_input = TranslationServer.translate("greetings")
	
	pass



func _on_ChangeLanguageBtn_pressed():
	if TranslationServer.get_locale() == "en":
		TranslationServer.set_locale("ar")
		$ALabel2.arabic_input = TranslationServer.translate("greetings")
	else:
		TranslationServer.set_locale("en")
		$ALabel2.arabic_input = TranslationServer.translate("greetings")
	pass # Replace with function body.
