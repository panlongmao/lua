

Q:	替换一个精灵图片\
A:
	local firstCard = CCSPrite:create("./1.png")
	firstCard:setDisplayFrame(CCSpriteFrame:create(‘image_lose.png',CCRect(0,0,170,122)))
	-- CCRect(x,y,width,height) width与height为image_lose.png的长跟宽

Q:	action用法
A:	
	代码样例：
		var biggerEase = cc.scaleBy(0.7,1.2,1.2).easing(cc.easeSineInOut()
		--[[ 
			
		呈正弦变化
		(1)CCEaseSineIn       ： 它的速度由慢至快，
		2)CCEaseSineOut     ： 速度是越来越慢，
		3)CCEaseSineInOut ： 速度看起来就是由慢至快，再由快至慢的。


		呈指数级变化

		4)CCEaseExponentialIn       ： 速度由慢至快，
		5)CCEaseExponentialOut     ： 速度是越来越慢，
		6)CCEaseExponentialInOut ： 速度看起来就是由慢至快，再由快至慢的。


		你可以设置运动的速率，甚至是在运动的过程中改变速率，
		具体用法详见其它博文，这里制作简介
		7)CCEaseIn
		8)CCEaseOut
		9)CCEaseInOut



		下面几个可做action特效用

		给目标动作赋予回力
		10)CCEaseBackIn          :  以目标动作起点位置作为回力点
		11)CCEaseBackOut        :  以目标动作终点位置作为回力点 
		12)CCEaseBackInOut    :  且以目标动作起点和终点位置作为回力点


		给目标动作赋予反弹力

		(想象一下将静止在地面上的篮球拍打起来的过程 cceasebouncein)
		13)CCEaseBounceIn       : 按照CCEaseBounceOut的定义镜像而来的
		14)CCEaseBounceOut     : 以目标动作结束位子开始反弹
		15)CCEaseBounceInOut : 以目标动作起始与结束位子开始反弹



		给目标动作赋予弹性
		16)CCEaseElasticIn       :   以目标动作起点位子赋予弹性
		17)CCEaseElasticOut     :   以目标动作终点位子赋予弹性
		18)CCEaseElasticInOut :   以目标动作起点和终点位子赋予弹性
		--]]

Q: lua中rawset和rawge
A:
	调用rawset(t, k, v)函数，它可以不涉及任何元方法而直接设置table t中与key k相关联的value v。
	使用rawget函数，调用rawget(tb, i)就是对table tb进行了一次“原始的（raw）”访问，也就是一次不考虑元表的简单访问；
	
Q:	lua怎么使用plist文件以及删除
A:	
	创建：
		local cache = CCSpriteFrameCache:sharedSpriteFrameCache()
		cache:addSpriteFramesWithFile(gameResPath..'card/cards.plist', gameResPath..'card/cards.png')
	使用：
		self.spriteCard = CCSprite:createWithSpriteFrameName(self.spriteFileName)
	删除：
		local cache = CCSpriteFrameCache:sharedSpriteFrameCache()
		cache:removeSpriteFramesFromFile(ROOT_RES..'hall/share/anim_ld.plist')
	
Q:	按钮点击除了图片的原有变化其他效果消失
A:	
	setZoomOnTouchDown(false)
	
Q:	打印所有缓存中的内容
A:	
	CCTextureCache:sharedTextureCache():dumpCachedTextureInfo()
	--@mao 增加大厅的plist文件
	local cache = CCSpriteFrameCache:sharedSpriteFrameCache()
	cache:addSpriteFramesWithFile(ROOT_RES..'hall/hall.plist', ROOT_RES..'hall/hall.png')
	
Q:	button与sprite创建时有什么区别，纹理方面
A:	
	
Q:	CCSizeMake与CCSize的区别
A:
	没有任何区别，就是名字不一样
	
Q:	纹理缓存清除
A:	
	function releaseCaches()
		CCAnimationCache:purgeSharedAnimationCache()
		CCSpriteFrameCache:sharedSpriteFrameCache():removeUnusedSpriteFrames()
		CCTextureCache:sharedTextureCache():removeUnusedTextures()
	end	

Q:	fps数值含义
A:
	开启fps:	// turn on display FPS
				pDirector->setDisplayStats(true);
		含义：
				1、最上面一行是指的当前场景的渲染批次。（简单理解为需要渲染多少个贴图出来）
				2、中间一行是渲染每一帧需要的时间。
				3、最下行就是大家熟悉的FPS。
Q:	setDirty含义
A:
	设置精灵是否需要更新
	
Q:	渲染批次优化 CCSpriteBatchNode(为一个node)
A:
	1、CCSpriteBatchNode：create("xxc.png") xxc.png 需是一张大图
	2、CCSpriteBatchNode加进来的子节点不能有其他的父节点
	
	CCSpriteFrameCache:sharedSpriteFrameCache():addSpriteFramesWithFile("res/hall.plist")  --读取png相对应的plist文件
	local batchNode = CCSpriteBatchNode:create("res/hall.png")
	pScene:addChild(batchNode)
	CCSprite:createWithSpriteFrameName
	
Q:	tinyImages使用
A:
	python3 tinyImages.py  -i 输入路径 -a APIKey [-o 输出路径] [-r(直接替换原文件)]
	例子：python3 tinyImages.py -i /Users/S/Desktop/Assets.xcassets -a h5W8hrkfmPrS2l08Qb6TNBDLvfwlhjQ1 -o /Users/S/Desktop/newImages
Q:	lua 退出游戏
A:
	 cc.Director:getInstance():endToLua()
	
Q:	CCLabelBMFont使用
A:	
	self.lunshu = CCLabelBMFont:create("第1轮1局",gameResPath..'font/baccaratlunci.fnt')
	local basicNoteText = CCLabelBMFont:create("0",gameResPath..'font/turnNum.fnt')
	basicNoteText:setPosition(165,46)
	basicNoteText:setTag(tag_basic_note)
	
	
	self.selfwire = CCLabelBMFont:create(tostring(str1), lht_gameResPath..'UI/usernum.fnt')
    self.selfwire:setPosition(480,33)
    self.selfwire:setAnchorPoint(ccp(0.5,0.5))
    self:addChild(self.selfwire)
	
	
Q:	数字滚动效果实现
A:	
	local meScoreWord = (self.parentScene.m_iMeNowScore > 0 ) and (gameResPath..'234.fnt') or (gameResPath..'123.fnt')
	local lblMeScore = CCLabelBMFont:create(curSign[2]..tostring(self.parentScene.m_iNtNowScore), meScoreWord)
	lblMeScore:setPosition(310 + 50, 25)
	lblMeScore:setAnchorPoint(ccp(1,0.5))
	self.lblMeBg:addChild(lblMeScore)
	
	lblMeScore:runAction(CCRepeatForever:create(CCSequence:createWithTwoActions(CCDelayTime:create(0.05), CCCallFunc:create(
    function()
        curMeScore = curMeScore + math.floor(math.abs(self.parentScene.m_iMeNowScore/20))
        if curMeScore >= math.abs(self.parentScene.m_iMeNowScore) then
            curMeScore = math.abs(self.parentScene.m_iMeNowScore)
            lblMeScore:stopAllActions()
        end
        lblMeScore:setString(curSign[2]..tostring(curMeScore))
    end))))
	
Q:	实现continue 的效果
A:
	function  testContinue()
		for i = 1, 100 do
			while true do
				if i % 2 == 0 then break end
		  -- 这里有一大堆代码
		  -- 注意，2个break不能忘记
				--
				--
				print("i:", i)
				break
			end
		end
	end
	testContinue()
	
Q:	实现转圈圈进度条顺时针显示效果
A:	
	local winSize = cc.Director:getInstance():getWinSize() 
	local sprite = cc.Sprite:create("1.png") -- 创建图片精灵
	local progress = cc.progressTimer:create(sprite)
	progress:setPosition(cc.p(winSize.width/2, winSize.height/2))
	progress:setType(kCCProgressTimerTypeRadial) --设置显示的类型，这个位逆时针显示（在cocos2.x 中只有两种显示方式）
	progress:setScaleX(-1) -- 这里就是将逆时针显示转换成顺时针显示
	self:addChild(progress)
	local action = cc.ProgressFromTo:create(2,100,0) -- 3个数字分别是时间、最初显示的比例、最后显示比例
	progress:runAction(cc.RepeatForever:create(action)) -- 重复显示，这里当然转换正数字时间控制
Q:	1秒从0.5倍到1倍
A:	
	self.m_lblTime:setScale(0.5)
	self.m_lblTime:runAction(cc,ScaleTo:create(0.5,1,1)) 3个参数分别表示时间，x放大，y放大
	
	
	chipSmall.plist
	resultcarbg.png
	self.sprLight
	
	carLight2
	
	self.m_lstNoteBtn[btnIndex]:changeBackSprite(gameResPath..'chip/chip'..(btnIndex-1)..".png")
	local spawAct = CCSpawn:createWithTwoActions(CCScaleTo:create(0.5, 0.5,0.5), CCScaleTo:create(0.5,1,1))
	
Q:	cocos2d 3.10 窗口大小
A:	
	SimulatorWin.cpp的run函数里面修改
	 // create opengl view
    Size frameSize = _project.getFrameSize();
	frameSize = Size(1334, 750);
	
Q:	cocos 设置搜索路径
A:		
	cc.FileUtils:getInstance():addSearchPath("res/")
Q:	lua string.sub 使用
A:	
	string.sub(s,i,j) --函数截取字符串s的从第i个字符到第j个字符之间的串
	
Q:	触摸事件
A:
	self:registerScriptTouchHandler(handler(self,self.onTouch), false, 0, true)
	function CThirteenSetSegmentLayer:onTouch(event, touchLocationX, touchLocationY)
		if event == "began" then
			self:touchBegan(touchLocationX, touchLocationY)
		elseif event == "ended" then
			self:touchEnd(touchLocationX, touchLocationY)
		elseif "moved" == event then
			self:touchMove(touchLocationX, touchLocationY)
		end  
		return true
	end
	
Q:	setSpriteFrame
A:

Q:	gitlab centos 6 按照官网装好不能访问
A:	
	sudo gitlab-ctl reconfigure     -- 要配置下
	
Q:	lua 中string库的使用
A:	
	string.match(str, pattern, init)    作用：匹配表达式           str字符串  pattern 匹配的表达式  init 匹配的起始位置   	
	
	string.byte(str, i, j)				作用：将字母转换成字符串   str字符串  i开始的位置  j末尾位置   
	
	string.char(a, b, c, d)				作用：将数字转换成字母    abcd 表示多个数字，准换成ascaii 表中对应的字母
	
	string.upper(argument)				作用：字符串转换成大写
	
	string.lower(argument)				作用：字符串转换成小写
	
	string.gsub(mainStr, findStr, replaceStr, num)    mainStr 字符串 findStr 需要替换的字符  replaceStr 替换的字符  num(替换的次数，可以忽略)
	
	string.find (str, substr, num)   str字符串  substr  str中查找的字符  num 索引 （感觉没什么用）
	
	string.reverse(str)    作用：反转字符串
	
	string.format(.....)   返回一个类似printf的格式化字符串     
	
	
Q: cocos 3.x 动画显示
A:
//以下是加载相关的代码：
None *rootNode = CSLoader::createNode("MainScene.csb");//传入Studio2.x的资源路径
this->addChild(rootNode);//假设this是即将显示的scene
//加载动画：
ActionTimeline *action = CSLoader::createTimeline("MainScene.csb");
rootNode->runAction(action);//注!!!：同一个文件创建的节点只能使用同一个文件创建的动画。
//播放动画：
action->gotoFrameAndPlay(0,60,true);//从第0帧到60帧循环播放。还有其他重载函数，具体看源码.
//帧事件监听
action->setFrameEventCallFunc(CC_CALLBACK_1(myScene::onFrameEvent, this));


Q: display.newSprite("#icon.png")
A:
	加上# 表示从缓存帧中读取  

Q: git reflog 时光穿梭机  （git 上有6次提交，然后不小心回退到了第一次，然后再次提交了修改7，怎么使得代码7次修改都合并）
A:
	git reflog    --会列出你做过的所有提交  可以得到对应的hash值
	git reset --hard     第6次的hash值     -- 这里就回滚到了第6次提交的代码了
	git cherry-pick 第7次提交的hash值      -- 这里就把第7次提交的东西和进来了，这里会有冲突，解决下就好
	
Q: table.remove(table[,pos])
A:	
	删除在pos位置上的元素，后面的元素会向前一栋，然后删除的index会向前移动，导致删除后的数据不是你想要的。当不填入pos时，删除table末尾的数据

 	 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
