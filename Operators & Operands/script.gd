extends Node2D

# دالة _ready تعمل مرة واحدة عند بدء تشغيل اللعبة
func _ready():
	print("--- بداية العمليات الحسابية ---")
	
	# ==========================================
	# 1. العمليات الحسابية الأساسية (Basic Arithmetic)
	# ==========================================
	
	var score = 0
	
	# الجمع (+)
	score = 10 + 5 
	print("النتيجة بعد الجمع: ", score) # النتيجة: 15
	
	# الطرح (-)
	var damage = 3
	score = score - damage
	print("النتيجة بعد الطرح: ", score) # النتيجة: 12
	
	# الضرب (*)
	var multiplier = 2
	score = score * multiplier
	print("النتيجة بعد الضرب: ", score) # النتيجة: 24
	
	# ==========================================
	# 2. القسمة وباقي القسمة (Division & Modulo)
	# ==========================================
	
	# القسمة الصحيحة (Integer Division)
	# ملاحظة: عند قسمة عدد صحيح على عدد صحيح، يتم إهمال الفواصل
	var apples = 10
	var people = 3
	var result_int = apples / people
	print("قسمة صحيحة (10 / 3): ", result_int) # النتيجة: 3 (وليس 3.33)
	
	# القسمة العشرية (Float Division)
	# للحصول على الفواصل، يجب أن يكون أحد الرقمين عشرياً (float)
	var result_float = float(apples) / people
	print("قسمة عشرية (10.0 / 3): ", result_float) # النتيجة: 3.3333...
	
	# باقي القسمة (%) - Modulo
	# يعطينا الرقم المتبقي بعد القسمة. مفيد لمعرفة الأعداد الزوجية والفردية
	var remainder = 10 % 3
	print("باقي قسمة 10 على 3: ", remainder) # النتيجة: 1
	
	# ==========================================
	# 3. العمليات المختصرة (Shorthand Operators)
	# ==========================================
	
	var health = 100
	
	health -= 20 # هي نفسها: health = health - 20
	print("الصحة بعد الضرر المختصر: ", health) # النتيجة: 80
	
	health += 50 # زيادة
	print("الصحة بعد العلاج: ", health) # النتيجة: 130
	
	# ==========================================
	# 4. عمليات المقارنة (Comparison Operators)
	# ==========================================
	print("\n--- بداية العمليات المنطقية ---")
	
	var player_level = 5
	var enemy_level = 10
	
	# هل هما متساويان؟ (==)
	print("هل مستوى اللاعب يساوي العدو؟ ", player_level == enemy_level) # false
	
	# هل هما غير متساويين؟ (!=)
	print("هل المستويات مختلفة؟ ", player_level != enemy_level) # true
	
	# أكبر من وأصغر من (< >)
	print("هل اللاعب أقوى من العدو؟ ", player_level > enemy_level) # false
	print("هل اللاعب أضعف من العدو؟ ", player_level < enemy_level) # true

	# ==========================================
	# 5. العمليات المنطقية المركبة (Logical Operators)
	# ==========================================
	
	var has_key = true
	var is_door_locked = true
	var is_boss_defeated = false
	
	# AND (و): يجب أن يتحقق الشرطان معاً
	# هل يستطيع اللاعب دخول الغرفة؟ (يحتاج المفتاح وأن يكون الباب مغلقاً ليفتحه)
	var can_open = has_key and is_door_locked
	print("هل يمكن فتح الباب؟ ", can_open) # true
	
	# OR (أو): يكفي تحقق شرط واحد فقط
	# هل فاز اللاعب؟ (يفوز إذا هزم الزعيم أو إذا وصل للنهاية - سنفترض وصولة للنهاية false هنا)
	var reached_end = false
	var player_won = is_boss_defeated or reached_end
	print("هل فاز اللاعب؟ ", player_won) # false (كلاهما خطأ)
	
	# NOT (ليس): تعكس القيمة (true تصبح false والعكس)
	# هل الباب مفتوح؟ (عكس حالة كونه مغلقاً)
	var is_door_open = not is_door_locked
	print("هل الباب مفتوح حالياً؟ ", is_door_open) # false
