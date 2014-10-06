-- translation for SP Package

return {
	["sp"] = "SP",

	["#yangxiu"] = "恃才放旷",
	["yangxiu"] = "杨修",
	["illustrator:yangxiu"] = "张可",
	["jilei"] = "鸡肋",
	[":jilei"] = "每当你受到伤害后，你可以选择一种牌的类别，伤害来源不能使用、打出或弃置其该类别的手牌，直到回合结束。",
	["@jilei_basic"] = "鸡肋（基本牌）",
	["@jilei_equip"] = "鸡肋（装备牌）",
	["@jilei_trick"] = "鸡肋（锦囊牌）",
	["danlao"] = "啖酪",
	[":danlao"] = "每当至少两名角色成为锦囊牌的目标后，若你为目标角色，你可以摸一张牌，然后该锦囊牌对你无效。",
	["#Jilei"] = "由于“<font color=\"yellow\"><b>鸡肋</b></font>”效果，%from 本回合不能使用、打出或弃置 %arg",
	["#JileiClear"] = "%from 的“<font color=\"yellow\"><b>鸡肋</b></font>”效果消失",

	["#gongsunzan"] = "白马将军",
	["gongsunzan"] = "SP公孙瓒",
	["&gongsunzan"] = "公孙瓒",
	["illustrator:gongsunzan"] = "Vincent",
	["yicong"] = "义从",
	[":yicong"] = "锁定技。若你的体力值大于2，你与其他角色的距离-1；若你的体力值小于或等于2，其他角色与你的距离+1。",

	["#yuanshu"] = "仲家帝",
	["yuanshu"] = "SP袁术",
	["&yuanshu"] = "袁术",
	["illustrator:yuanshu"] = "吴昊",
	["yongsi"] = "庸肆",
	[":yongsi"] = "锁定技。摸牌阶段，你额外摸X张牌。弃牌阶段开始时，你须弃置X张牌。（X为现存势力数）",
	["weidi"] = "伪帝",
	[":weidi"] = "[NoAutoRep]<font color=#0000FF><b>锁定技。</b></font>你拥有且可以发动主公的主公技。",
	["@weidi-jijiang"] = "请发动“激将”",
	["#YongsiGood"] = "%from 的“%arg2”被触发，额外摸了 %arg 张牌",
	["#YongsiBad"] = "%from 的“%arg2”被触发，须弃置 %arg 张牌",
	["#YongsiJilei"] = "%from 的“%arg2”被触发，由于“<font color=\"yellow\"><b>鸡肋</b></font>”的效果，仅弃置了 %arg 张牌",
	["#YongsiWorst"] = "%from 的“%arg2”被触发，弃置了所有牌（共 %arg 张）",

	["#sp_guanyu"] = "汉寿亭侯",
	["sp_guanyu"] = "SP关羽",
	["&sp_guanyu"] = "关羽",
	["illustrator:sp_guanyu"] = "LiuHeng",
	["danji"] = "单骑",
	[":danji"] = "觉醒技。准备阶段开始时，若你的手牌数大于体力值，且本局游戏主公为曹操，你失去1点体力上限，然后获得“马术”。",
	["$DanjiAnimate"] = "image=image/animate/danji.png",
	["#DanjiWake"] = "%from 的手牌数 %arg 大于体力值 %arg2 ，且本局游戏主公为曹操，触发“<font color=\"yellow\"><b>单骑</b></font>”觉醒",

	["#caohong"] = "福将",
	["caohong"] = "曹洪",
	["illustrator:caohong"] = "LiuHeng",
	["yuanhu"] = "援护",
	[":yuanhu"] = "结束阶段开始时，你可以将一张装备牌置于一名角色装备区内：若此牌为武器牌，你弃置该角色距离1的一名角色区域内的一张牌；若此牌为防具牌，该角色摸一张牌；若此牌为坐骑牌，该角色回复1点体力。",
	["@yuanhu-equip"] = "你可以发动“援护”",
	["@yuanhu-discard"] = "请选择 %src 距离1的一名角色",
	["~yuanhu"] = "选择一张装备牌→选择一名角色→点击确定",

	["#guanyinping"] = "武姬",
	["guanyinping"] = "关银屏",
	["illustrator:guanyinping"] = "木美人",
	["xueji"] = "血祭",
	[":xueji"] = "阶段技。你可以弃置一张红色牌并选择你攻击范围内的至多X名角色：若如此做，你对这些角色各造成1点伤害，然后这些角色各摸一张牌。（X为你已损失的体力值）",
	["huxiao"] = "虎啸",
	[":huxiao"] = "锁定技。每当你于出牌阶段使用【杀】被【闪】抵消后，本阶段你可以额外使用一张【杀】。",
	["wuji"] = "武继",
	[":wuji"] = "觉醒技。结束阶段开始时，若你于本回合造成了至少3点伤害，你增加1点体力上限，回复1点体力，然后失去“虎啸”。",
	["$WujiAnimate"] = "image=image/animate/wuji.png",
	["#WujiWake"] = "%from 本回合已造成 %arg 点伤害，触发“%arg2”觉醒",

	["#xiahouba"] = "棘途壮志",
	["xiahouba"] = "夏侯霸",
	["illustrator:xiahouba"] = "熊猫探员",
	["baobian"] = "豹变",
	[":baobian"] = "锁定技。若你的体力值为：3或更低，你拥有“挑衅”；2或更低，你拥有“咆哮”；1或更低，你拥有“神速”。",

	["#chenlin"] = "破竹之咒",
	["chenlin"] = "陈琳",
	["illustrator:chenlin"] = "木美人",
	["bifa"] = "笔伐",
	[":bifa"] = "结束阶段开始时，你可以将一张手牌扣置于一名无“笔伐牌”的其他角色旁：若如此做，该角色的回合开始时，其观看此牌，然后选择一项：1.交给你一张与此牌类型相同的牌并获得此牌；2.将此牌置入弃牌堆，然后失去1点体力。",
	["@bifa-remove"] = "你可以发动“笔伐”",
	["~bifa"] = "选择一张手牌→选择一名其他角色→点击确定",
	["@bifa-give"] = "请交给目标角色一张类型相同的手牌",
	["songci"] = "颂词",
	[":songci"] = "出牌阶段，你可以令一名手牌数大于体力值的角色弃置两张牌，或令一名手牌数小于体力值的角色摸两张牌。对每名角色限一次。",
	["@songci"] = "颂词",
	["$BifaView"] = "%from 观看了 %arg 牌 %card",

	["#erqiao"] = "江东之花",
	["erqiao"] = "大乔＆小乔",
	["&erqiao"] = "大乔小乔",
	["illustrator:erqiao"] = "木美人",
	["xingwu"] = "星舞",
	[":xingwu"] = "弃牌阶段开始时，你可以将一张与你本回合使用的牌颜色均不同的手牌置于武将牌上：若你有至少三张“星舞牌”，你将之置入弃牌堆并选择一名男性角色，该角色受到2点伤害并弃置其装备区的所有牌。",
	["@xingwu"] = "你可以发动“星舞”将一张手牌置于武将牌上",
	["@xingwu-choose"] = "请选择一名男性角色",
	["luoyan"] = "落雁",
	[":luoyan"] = "锁定技。若你的武将牌上有“星舞牌”，你拥有“天香”和“流离”。",

	["#xiahoushi"] = "疾冲之恋",
	["xiahoushi"] = "夏侯氏",
	["illustrator:xiahoushi"] = "牧童的短笛",
	["yanyu"] = "燕语",
	[":yanyu"] = "一名角色的出牌阶段开始时，你可以弃置一张牌：若如此做，本回合的出牌阶段内限三次，一张与此牌类型相同的牌置入弃牌堆时，你可以令一名角色获得之。",
	["@yanyu-discard"] = "你可以弃置一张牌发动“燕语”",
	["@yanyu-give"] = "你可以令一名角色获得 %arg[%arg2]",
	["xiaode"] = "孝德",
	[":xiaode"] = "每当一名其他角色死亡结算后，你可以拥有该角色武将牌上的一项技能（除主公技与觉醒技），且“孝德”无效，直到你的回合结束时。每当你失去“孝德”后，你失去以此法获得的技能。",

	["#zhangbao"] = "地公将军",
	["zhangbao"] = "张宝",
	["illustrator:zhangbao"] = "大佬荣",
	["zhoufu"] = "咒缚",
	[":zhoufu"] = "阶段技。你可以将一张手牌置于一名无“咒缚牌”的其他角色旁：若如此做，该角色进行判定时，以“咒缚牌”作为判定牌。一名角色的回合结束后，若该角色有“咒缚牌”，你获得此牌。",
	["incantation"] = "咒缚",
	["yingbing"] = "影兵",
	[":yingbing"] = "每当一张“咒缚牌”成为判定牌后，你可以摸两张牌。",
	["$ZhoufuJudge"] = "%from 的判定牌为 %arg 牌 %card",

	["#caoang"] = "取义成仁",
	["caoang"] = "曹昂",
	["illustrator:caoang"] = "MSNZero",
	["kangkai"] = "慷忾",
	[":kangkai"] = "每当一名距离1以内的角色成为【杀】的目标后，你可以摸一张牌，然后正面朝上交给该角色一张牌：若此牌为装备牌，该角色可以使用之。",
	["@kangkai-give"] = "请交给 %src 一张牌",
	["kangkai_use:use"] = "你可以使用该装备牌",

	["#xingcai"] = "敬哀皇后",
	["xingcai"] = "星彩",
	["illustrator:xingcai"] = "depp",
	["shenxian"] = "甚贤",
	[":shenxian"] = "你的回合外，每当一名其他角色因弃置而失去牌后，若其中有基本牌，你可以摸一张牌。",
	["qiangwu"] = "枪舞",
	[":qiangwu"] = "阶段技。你可以进行判定：若如此做，本回合，你使用点数小于判定牌点数的【杀】无距离限制，你使用点数大于判定牌点数的【杀】无次数限制且不计入次数限制。",

	["#zumao"] = "碧血染赤帻",
	["zumao"] = "祖茂",
	["illustrator:zumao"] = "DH",
	["yinbing"] = "引兵",
	[":yinbing"] = "结束阶段开始时，你可以将至少一张非基本牌置于武将牌上。每当你受到【杀】或【决斗】的伤害后，你将一张“引兵牌”置入弃牌堆。",
	["@yinbing"] = "你可以发动“引兵”",
	["~yinbing"] = "选择至少一张非基本牌→点击确定",
	["juedi"] = "绝地",
	[":juedi"] = "准备阶段开始时，若你有“引兵牌”，你可以选择一项：1.将这些牌置入弃牌堆并摸等量的牌；2.令一名体力值不大于你的其他角色回复1点体力并获得这些牌。",
	["@juedi"] = "你可以选择一名体力值不大于你的其他角色，否则你将“引兵牌”置入弃牌堆并摸等量的牌",

	["#zhugedan"] = "薤露蒿里",
	["zhugedan"] = "诸葛诞",
	["illustrator:zhugedan"] = "雪君S",
	["gongao"] = "功獒",
	[":gongao"] = "锁定技。每当一名其他角色死亡时，你增加1点体力上限，回复1点体力。",
	["juyi"] = "举义",
	[":juyi"] = "觉醒技。准备阶段开始时，若你已受伤且体力上限大于角色数，你将手牌补至体力上限，然后获得“崩坏”和“威重”（锁定技。每当你的体力上限改变后，你摸一张牌）。",
	["weizhong"] = "威重",
	[":weizhong"] = "锁定技。每当你的体力上限改变后，你摸一张牌。",
	["$JuyiAnimate"] = "image=image/animate/juyi.png",
	["#JuyiWake"] = "%from 的体力上限(%arg)大于角色数(%arg2)，触发“<font color=\"yellow\"><b>举义</b></font>”觉醒",

	["#sunluyu"] = "舍身饲虎",
	["sunluyu"] = "孙鲁育",
	["illustrator:sunluyu"] = "depp",
	["meibu"] = "魅步",
	[":meibu"] = "一名其他角色的出牌阶段开始时，若你不在其攻击范围内，你可以令该角色的锦囊牌均视为【杀】,直到回合结束：若如此做，本回合你在其攻击范围内。",
	["mumu"] = "穆穆",
	[":mumu"] = "结束阶段开始时，若你未于本回合出牌阶段内造成伤害，你可以选择一项：弃置一名角色装备区的武器牌，然后摸一张牌；或将一名其他角色装备区的防具牌移动至你的装备区（替换原装备）。",
	["@mumu-weapon"] = "你可以弃置一名角色装备区的武器牌",
	["@mumu-armor"] = "你可以将一名其他角色装备区的防具牌移动至你的装备区",

	["#maliang"] = "白眉智士",
	["maliang"] = "马良",
	["illustrator:maliang"] = "LiuHeng",
	["xiemu"] = "协穆",
	[":xiemu"] = "阶段技。你可以弃置一张【杀】并选择一个势力：若如此做，直到你的回合开始时，每当你成为该势力的角色的黑色牌的目标后，你摸两张牌。",
	["naman"] = "纳蛮",
	[":naman"] = "每当其他角色打出的【杀】因打出而置入弃牌堆时，你可以获得之。",

	["#chengyu"] = "泰山捧日",
	["chengyu"] = "程昱",
	["illustrator:chengyu"] = "GH",
	["shefu"] = "设伏",
	[":shefu"] = "结束阶段开始时，你可以将一张手牌扣置于武将牌旁，称为“伏兵”，并为该牌记录一种基本牌或锦囊牌的牌名（与其他“伏兵”均不相同）。你的回合外，每当一名角色使用基本牌或锦囊牌时，若此牌的牌名与一张“伏兵”的记录相同，你可以将此“伏兵”置入弃牌堆：若如此做，此牌无效。",
	["ambush"] = "伏兵",
	["@shefu-prompt"] = "你可以发动“设伏”",
	["~shefu"] = "在对话框中选择牌名→选择一张手牌→点击确定",
	["shefu_cancel:data"] = "你可以发动“设伏”令【%arg】无效<br/> <b>注</b>: 若你无对应牌名的“伏兵”则没有任何效果",
	["benyu"] = "贲育",
	[":benyu"] = "每当你受到有来源的伤害后，若伤害来源存活，若你的手牌数：小于X，你可以将手牌补至X（至多为5）张；大于X，你可以弃置至少X+1张手牌，然后对伤害来源造成1点伤害。（X为伤害来源的手牌数）",
	["@benyu-discard"] = "你可以发动“贲育”弃置至少 %arg 张手牌对 %dest 造成1点伤害",
	["~benyu"] = "选择足量的手牌→点击确定",
	["$ShefuRecord"] = "%from 为 %card 记录牌名【%arg】",
	["#ShefuEffect"] = "%from 发动了“%arg2”，%to 使用的【%arg】无效",
	
	["#huangjinleishi"] = "雷祭之姝",
	["huangjinleishi"] = "黄巾雷使",
	["illustrator:huangjinleishi"] = "depp",
	["fulu"] = "符箓",
	[":fulu"] = "你可以将一张普通【杀】当雷【杀】使用。",
	["zhuji"] = "助祭",
	[":zhuji"] = "每当一名角色造成雷电伤害时，你可以令其进行判定：若结果为黑色，此伤害+1；红色，其获得判定牌。",
	["#ZhujiBuff"] = "%from 的“<font color=\"yellow\"><b>助祭</b></font>”效果被触发，伤害从 %arg 点增加至 %arg2 点",

	
	["OL"] = "OL专属",

	["#zhugeke"] = "兴家赤族",
	["zhugeke"] = "诸葛恪",
	["illustrator:zhugeke"] = "LiuHeng",
	["aocai"] = "傲才",
	[":aocai"] = "你的回合外，每当你需要使用或打出一张基本牌时，你可以观看牌堆顶的两张牌，然后使用或打出其中一张该类别的基本牌。",
	["duwu"] = "黩武",
	[":duwu"] = "出牌阶段，你可以弃置任意数量的牌并选择攻击范围内的一名体力值等于该数量的角色：若如此做，你对该角色造成1点伤害。若此伤害令该角色进入濒死状态，濒死结算后你失去1点体力，且本阶段“黩武”无效。",
	["#AocaiUse"] = "%from 发动 %arg 使用/打出了牌堆顶的第 %arg2 张牌",

	["#lingcao"] = "侠义先锋", -- unofficial
	["lingcao"] = "凌操",
	["illustrator:lingcao"] = "樱花闪乱", -- unofficial, origin: 凌统 (一将成名2011参赛稿)
	["dujin"] = "独进",
	[":dujin"] = "摸牌阶段，你可以额外摸X+1张牌。（X为你装备区的牌数的一半，向下取整）",

	["#sunru"] = "温善贤惠", -- unofficial
	["sunru"] = "孙茹",
	["illustrator:sunru"] = "Yi章", -- unofficial, origin: 步练师 (一将成名2012参赛稿)
	["qingyi"] = "轻逸",
	[":qingyi"] = "你可以跳过判定阶段和摸牌阶段：若如此做，视为你使用一张无距离限制的【杀】。",
	["@qingyi-slash"] = "你可以跳过判定阶段和摸牌阶段发动“轻逸”",
	["~qingyi"] = "选择【杀】的目标角色→点击确定",
	["shixin"] = "释衅",
	[":shixin"] = "锁定技。每当你受到火焰伤害时，防止此伤害。",
	["#ShixinProtect"] = "%from 的“<font color=\"yellow\"><b>释衅</b></font>”被触发，防止了 %arg 点伤害[%arg2]",

	["ol_masu"] = "OL马谡",
	["&ol_masu"] = "马谡",
	["illustrator:ol_masu"] = "张帅",
	["sanyao"] = "散谣",
	[":sanyao"] = "阶段技。你可以弃置一张牌并选择一名体力值为场上最多（或之一）的角色：若如此做，该角色受到1点伤害。",
	["zhiman"] = "制蛮",
	[":zhiman"] = "每当你对一名角色造成伤害时，你可以防止此伤害，然后获得其装备区或判定区的一张牌。",

	["sp_ganfuren"] = "甘夫人",
	
	-- HuLao Pass
	["Hulaopass"] = "虎牢关模式",
	["HulaoPass"] = "虎牢关",

	["#shenlvbu1"] = "最强神话",
	["shenlvbu1"] = "吕布-虎牢关",
	["&shenlvbu1"] = "最强神话",
	["illustrator:shenlvbu1"] = "LiuHeng",
	["#shenlvbu2"] = "暴怒的战神",
	["shenlvbu2"] = "吕布-虎牢关",
	["&shenlvbu2"] = "暴怒战神",
	["illustrator:shenlvbu2"] = "LiuHeng",
	["xiuluo"] = "修罗",
	[":xiuluo"] = "准备阶段开始时，你可以弃置一张与判定区内延时锦囊牌花色相同的手牌：若如此做，你弃置该延时锦囊牌。",
	["@xiuluo"] = "请弃置一张与判定区某一张牌花色相同的手牌",
	["shenwei"] = "神威",
	[":shenwei"] = "锁定技。摸牌阶段，你额外摸两张牌。你的手牌上限+2。",
	["shenji"] = "神戟",
	[":shenji"] = "锁定技。若你的装备区没有武器牌，你使用【杀】可以额外选择至多两名目标。",

	["#HulaoTransfigure"] = "%arg 变身为 %arg2, 第二阶段开始！",
	["#Reforming"] = "%from 进入重整状态",
	["#ReformingRecover"] = "%from 在重整状态中回复了 %arg 点体力",
	["#ReformingDraw"] = "%from 在重整状态中摸了 %arg 张牌",
	["#ReformingRevive"] = "%from 从重整状态中复活！",
	["draw_1v3"] = "重整摸牌",
	["weapon_recast"] = "武器重铸",
	["Hulaopass:recover"] = "回复1点体力",
	["Hulaopass:draw"] = "摸一张牌",
	["$StageChange"] = "image=image/animate/StageChange.png",

	["sp_cards"] = "SP卡牌包",
	["sp_moonspear"] = "银月枪",
	[":sp_moonspear"] = "装备牌·武器<br /><b>攻击范围</b>：３<br /><b>武器技能</b>：你的回合外，每当你使用或打出一张黑色牌时，你可以令你攻击范围内的一名角色打出一张【闪】，否则该角色受到1点伤害。",
	["@sp_moonspear"] = "请选择攻击范围内的一名角色令其打出一张【闪】",
	["@moon-spear-jink"] = "【银月枪】效果被触发，请打出一张【闪】",
}