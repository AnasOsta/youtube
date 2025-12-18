extends Node

func _ready():
	# --- متغيرات للتجربة ---
	var health = 45
	var max_health = 100
	var is_alive = true
	var has_magic_potion = false
	var weapon_type = "sword"
	
	print("--- 1. تجربة If, Elif, Else ---")
	
	# حالة if بسيطة
	if health == max_health:
		print("صحتك ممتلئة!")
	
	# حالة if-else
	if is_alive:
		print("اللاعب لا يزال حياً.")
	else:
		print("اللاعب خسر (Game Over).")
		
	# حالة if-elif-else (سلسلة شروط)
	if health > 75:
		print("الحالة الصحية: ممتازة")
	elif health > 50:
		print("الحالة الصحية: جيدة")
	elif health > 25:
		print("الحالة الصحية: خطرة قليلاً")
	else:
		# يتم تنفيذ هذا إذا لم يتحقق أي شرط سابق
		print("الحالة الصحية: حرجة جداً! ابحث عن طبيب.")


	print("\n--- 2. الروابط المنطقية (and, or, not) ---")
	
	# استخدام and (يجب تحقق الشرطين معاً)
	if is_alive and health < 50:
		print("تحذير: أنت حي لكنك مصاب!")

	# استخدام or (يكفي تحقق شرط واحد)
	if health < 20 or has_magic_potion:
		print("أنت في خطر، أو لديك وسيلة للنجاة.")
		
	# استخدام not (عكس الحالة)
	if not has_magic_potion:
		print("لا تملك جرعة سحرية.")


	print("\n--- 3. جملة Match (بديل Switch) ---")
	
	# Match البسيطة (مقارنة قيم)
	match weapon_type:
		"sword":
			print("أنت تحمل سيفاً. (هجوم قريب)")
		"bow":
			print("أنت تحمل قوساً. (هجوم بعيد)")
		"staff", "wand": # يمكن دمج أكثر من قيمة بفاصلة
			print("أنت تستخدم السحر.")
		_: # الشرطة السفلية تعني default (أي شيء آخر)
			print("سلاح غير معروف (素手/أعزل).")

	print("\n--- 4. جملة Match المتقدمة (مطابقة الأنماط) ---")
	
	# ميزة قوية في Godot: فحص محتويات المصفوفات
	var player_position = [10, 0] # [x, y]
	
	match player_position:
		[0, 0]:
			print("اللاعب في نقطة البداية (Origin).")
		[_, 0]: # الـ wildcard يعني: أي قيمة لـ x، بشرط y يكون 0
			print("اللاعب على الأرض (المحور السيني).")
		[0, _]:
			print("اللاعب يتسلق (المحور الصادي).")
		_:
			print("اللاعب في مكان ما في الهواء.")
			
	# فحص المتغيرات حسب النوع أو القيمة (Binding)
	var unknown_data = 15
	
	match unknown_data:
		var x when x > 10: # مطابقة مع شرط إضافي (Guard)
			print("الرقم أكبر من 10، وهو: ", x)
		var x:
			print("الرقم هو 10 أو أقل: ", x)
