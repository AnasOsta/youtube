extends Node

# متغيرات عامة لاستخدامها في الأمثلة
var player_name = "Sami"
var player_health = 100

func _ready():
	# 1. استدعاء دالة بسيطة
	say_hello()
	
	# 2. استدعاء دالة تأخذ مدخلات (Parameters)
	add_health(25)
	add_health(10) # يمكن تكرار الاستدعاء بقيم مختلفة
	
	# 3. استدعاء دالة تعيد قيمة (Return Value)
	# هنا النتيجة التي تخرج من الدالة سنخزنها في متغير
	var final_damage = calculate_damage(50, 2)
	print("الضرر النهائي المحسوب هو: ", final_damage)
	
	# 4. دالة تستخدم مصفوفة (Array) كمدخل
	var my_scores = [10, 20, 30]
	print("مجموع الدرجات: ", get_total_score(my_scores))

# =========================================================
# تعريف الدوال (Functions Definition)
# =========================================================

# أ) دالة بسيطة: لا تأخذ مدخلات ولا تعيد قيمة
# وظيفتها فقط تنفيذ كود معين عند مناداتها
func say_hello():
	print("أهلاً بك يا ", player_name, " في اللعبة!")


# ب) دالة مع مدخلات (Parameters):
# نضع أسماء للمدخلات داخل الأقواس لاستخدامها بداخل الدالة
func add_health(amount):
	player_health += amount
	print("تم إضافة صحة بمقدار: ", amount, ". الصحة الآن: ", player_health)


# ج) دالة مع إرجاع قيمة (Return):
# نستخدم كلمة 'return' لإخراج نتيجة من الدالة ليستخدمها الكود في الخارج
func calculate_damage(base_damage, multiplier):
	var total = base_damage * multiplier
	return total # هنا "ترمي" الدالة النتيجة للخارج


# د) دالة مع منطق (Logic) وتكرار (Loop):
# يمكن للدالة أن تحتوي على أي كود شرحناه سابقاً
func get_total_score(scores_list):
	var sum = 0
	for score in scores_list:
		sum += score
	return sum
