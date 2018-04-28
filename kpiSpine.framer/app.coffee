# ----------- METADATA ----------- #
Framer.info =
	title: "Intellistream KPI Spine Widget"
	author: "Ed Monterrubio"
	date: "05/26/2017"
	description: "GE Intellistream Dynamic KPI Spine Widget"

# ----------- PX-SPINNER ----------- #
spinnerLoad = ->
	spinner = new Layer
		backgroundColor: null
	spinner.html = '<px-spinner id="canvas" size="100"></px-spinner>'
	canvasElement = spinner.querySelector("#canvas")
	spinner.x = 450
	spinner.y = 130
	
spinnerLoad()
	
bd = new Layer
	width: 980, height: 255, x: 50, y: 50
	backgroundColor: "#59717F"
	opacity: 0
	
# # COUNTER
# options =
# 	useEasing : true, 
# 	useGrouping : true, 
# 	separator : ',', 
# 	decimal : '.', 
# 	prefix : '', 
# 	suffix : ''
# demo = new Layer
# 	color: "black"
# demo.html = '<div id="canvas"></div>'
# canvasElement = demo.querySelector("#canvas")
# 
# number = new CountUp("canvas", 0, 1000, 0, 2.5, options)
# number.start()
#### VALUES
apmTitle = ["Process Area Summary","Sensor Summary","Plant Summary","Network Summary","Ambient Conditions","Availability", "Wobbe Index"]

apmUnit = ["c","degreeF","K","N","cup","tsp","tbsp","oz","pt","qt","gal","I","m3","ml","ft oz","fl dr","bl","bbl","cm3","in3","ft3","fl oz","qt dry","pt dry","atm","torr","psi","at","mmHg","bar","kPa","pa","A","Î¼A","kA","MA","mmH2OD","ton/day","kSm3/D","Amps","mBarG","MPaD","uBarD","in","PaA","PaD","PaG","KGF/CM2-G","KGF/CM2-D","mmHgG","MJ/kg","g/s","acfm","BarD","kSm3/h","Sft^3/h","E&sup3;M&sup3;/D","ft^3/h","ftlb/lb","Hp","in/s","kPaD","inH2OD","inH20G","kcal/Nm3","Kcal/smc","kftlb/lb","kg/h","Kg/min","Kj/g","Kj/h","kJ/kWh","kJ/MSm3","kJ/Nm3","km3/D","KNM3/H","acf/h","kPaA","kPaG","kW","cpsiD","lb/s","m","m3/s","kHp","mBarA","mBarD","psiD","micron","mil", "mil pp","min","MJ/h","MJ/s","mm","psiA","lb/h","MMscfd","MSm3/h","Ncm3/s","Nm3/h","pph","pps","MPaG","s","Sm3/h","ton/h","V","MW"]

apmValue1 = Utils.randomChoice([1000..10000000])
apmValue2 = Utils.randomChoice([1000..10000000])
apmValue3 = Utils.randomChoice([1000..10000000])
apmValue4 = Utils.randomChoice([1000..10000000])
apmValue5 = Utils.randomChoice([1000..10000000])
apmValue6 = Utils.randomChoice([1000..10000000])
apmValue7 = Utils.randomChoice([1000..10000000])
apmValue8 = Utils.randomChoice([1000..10000000])
apmValue9 = Utils.randomChoice([1000..10000000])

apmUnit1 = Utils.randomChoice(apmUnit[0..apmUnit.length])
apmUnit2 = Utils.randomChoice(apmUnit[0..apmUnit.length])
apmUnit3 = Utils.randomChoice(apmUnit[0..apmUnit.length])
apmUnit4 = Utils.randomChoice(apmUnit[0..apmUnit.length])
apmUnit5 = Utils.randomChoice(apmUnit[0..apmUnit.length])
apmUnit6 = Utils.randomChoice(apmUnit[0..apmUnit.length])
apmUnit7 = Utils.randomChoice(apmUnit[0..apmUnit.length])
apmUnit8 = Utils.randomChoice(apmUnit[0..apmUnit.length])
apmUnit9 = Utils.randomChoice(apmUnit[0..apmUnit.length])

apmTitle1 = Utils.randomChoice(apmTitle[0..apmTitle.length])
apmTitle2 = Utils.randomChoice(apmTitle[0..apmTitle.length])
apmTitle3 = Utils.randomChoice(apmTitle[0..apmTitle.length])
apmTitle4 = Utils.randomChoice(apmTitle[0..apmTitle.length])
apmTitle5 = Utils.randomChoice(apmTitle[0..apmTitle.length])
apmTitle6 = Utils.randomChoice(apmTitle[0..apmTitle.length])
apmTitle7 = Utils.randomChoice(apmTitle[0..apmTitle.length])
apmTitle8 = Utils.randomChoice(apmTitle[0..apmTitle.length])
apmTitle9 = Utils.randomChoice(apmTitle[0..apmTitle.length])
# THOUSANDS VS MILLIONS LOGiC
options1 =
	useEasing : true, useGrouping : true, separator : '', decimal : '.', prefix : '', suffix : ''
options2 =
	useEasing : true, useGrouping : true, separator : '', decimal : '.', prefix : '', suffix : ''
options3 =
	useEasing : true, useGrouping : true, separator : '', decimal : '.', prefix : '', suffix : ''
options4 =
	useEasing : true, useGrouping : true, separator : '', decimal : '.', prefix : '', suffix : ''
options5 =
	useEasing : true, useGrouping : true, separator : '', decimal : '.', prefix : '', suffix : ''
options6 =
	useEasing : true, useGrouping : true, separator : '', decimal : '.', prefix : '', suffix : ''
options7 =
	useEasing : true, useGrouping : true, separator : '', decimal : '.', prefix : '', suffix : ''
options8 =
	useEasing : true, useGrouping : true, separator : '', decimal : '.', prefix : '', suffix : ''
options9 =
	useEasing : true, useGrouping : true, separator : '', decimal : '.', prefix : '', suffix : ''
	
apmValue1Len = apmValue1.toString().length
apmValue2Len = apmValue2.toString().length
apmValue3Len = apmValue3.toString().length
apmValue4Len = apmValue4.toString().length
apmValue5Len = apmValue5.toString().length
apmValue6Len = apmValue6.toString().length
apmValue7Len = apmValue7.toString().length
apmValue8Len = apmValue8.toString().length
apmValue9Len = apmValue9.toString().length

apmUnit1Len = apmUnit1.toString().length
apmUnit2Len = apmUnit2.toString().length
apmUnit3Len = apmUnit3.toString().length

##### CARD 1 #####
if apmValue1Len >= 4 && apmValue1Len <= 6
	options1.suffix = 'k'
	value1Num = new CountUp("value1", 0, apmValue1 / 10000, 2, 0.5, options1)
# 	value1.html = (apmValue1/1000).toFixed(2) + "k"
# 	print apmValue2 + " is in the thousands"
else if apmValue1Len >= 7
	options1.suffix = 'm'
	value1Num = new CountUp("value1", 0, apmValue1 / 100000, 2, 0.5, options1)
# 	value1.html = (apmValue1/1000).toFixed(2) + "m"
# 	print apmValue2 + " is in the millions"

##### CARD 2 #####
if apmValue2Len >= 4 && apmValue2Len <= 6
	options2.suffix = 'k'
	value2Num = new CountUp("value2", 0, apmValue2 / 10000, 2, 0.5, options2)
# 	value2.text = (apmValue2/1000).toFixed(2) + "k"
# 	print apmValue2 + " is in the thousands"
else if apmValue2Len >= 7
	options2.suffix = 'm'
	value2Num = new CountUp("value2", 0, apmValue2 / 100000, 2, 0.5, options2)
# 	value2.text = (apmValue2/1000).toFixed(2) + "m"
# 	print apmValue2 + " is in the millions"

##### CARD 3 #####
if apmValue3Len >= 4 && apmValue3Len <= 6
	options3.suffix = 'k'
	value3Num = new CountUp("value3", 0, apmValue3 / 10000, 2, 0.5, options3)
# 	value3.text = (apmValue3/1000).toFixed(2) + "k"
# 	print apmValue3 + " is in the thousands"
else if apmValue3Len >= 7
	options3.suffix = 'm'
	value3Num = new CountUp("value3", 0, apmValue3 / 100000, 2, 0.5, options3)
# 	value3.text = (apmValue3/1000).toFixed(2) + "m"
# 	print apmValue3 + " is in the millions"

##### CARD 4 #####
if apmValue4Len >= 4 && apmValue4Len <= 6
	options4.suffix = 'k'
	value4Num = new CountUp("value4", 0, apmValue4 / 10000, 2, 0.5, options4)
# 	value4.text = (apmValue4/1000).toFixed(2) + "k"
# 	print apmValue4 + " is in the thousands"
else if apmValue4Len >= 7
	options4.suffix = 'm'
	value4Num = new CountUp("value4", 0, apmValue4 / 100000, 2, 0.5, options4)
# 	value4.text = (apmValue4/1000).toFixed(2) + "m"
# 	print apmValue4 + " is in the millions"

##### CARD 5 #####
if apmValue5Len >= 4 && apmValue5Len <= 6
	options5.suffix = 'k'
	value5Num = new CountUp("value5", 0, apmValue5 / 10000, 2, 0.5, options5)
# 	value5.text = (apmValue5/1000).toFixed(2) + "k"
# 	print apmValue5 + " is in the thousands"
else if apmValue5Len >= 7
	options5.suffix = 'm'
	value5Num = new CountUp("value5", 0, apmValue5 / 100000, 2, 0.5, options5)
# 	value5.text = (apmValue5/1000).toFixed(2) + "m"
# 	print apmValue5 + " is in the millions"

##### CARD 6 #####
if apmValue6Len >= 4 && apmValue6Len <= 6
	options6.suffix = 'k'
	value6Num = new CountUp("value6", 0, apmValue6 / 10000, 2, 0.5, options6)
# 	value6.text = (apmValue6/1000).toFixed(2) + "k"
# 	print apmValue6 + " is in the thousands"
else if apmValue6Len >= 7
	options6.suffix = 'm'
	value6Num = new CountUp("value6", 0, apmValue6 / 100000, 2, 0.5, options6)
# 	value6.text = (apmValue6/1000).toFixed(2) + "m"
# 	print apmValue6 + " is in the millions"

##### CARD 7 #####
if apmValue7Len >= 4 && apmValue7Len <= 6
	options7.suffix = 'k'
	value7Num = new CountUp("value7", 0, apmValue7 / 10000, 2, 0.5, options7)
# 	value7.text = (apmValue7/1000).toFixed(2) + "k"
# 	print apmValue7 + " is in the thousands"
else if apmValue7Len >= 7
	options7.suffix = 'm'
	value7Num = new CountUp("value7", 0, apmValue7 / 100000, 2, 0.5, options7)
# 	value7.text = (apmValue7/1000).toFixed(2) + "m"
# 	print apmValue7 + " is in the millions"

##### CARD 8 #####
if apmValue8Len >= 4 && apmValue8Len <= 6
	options8.suffix = 'k'
	value8Num = new CountUp("value8", 0, apmValue8 / 10000, 2, 0.5, options8)
# 	value8.text = (apmValue8/1000).toFixed(2) + "k"
# 	print apmValue8 + " is in the thousands"
else if apmValue8Len >= 7
	options8.suffix = 'm'
	value8Num = new CountUp("value8", 0, apmValue8 / 100000, 2, 0.5, options8)
# 	value8.text = (apmValue8/1000).toFixed(2) + "m"
# 	print apmValue8 + " is in the millions"

##### CARD 9 #####
if apmValue9Len >= 4 && apmValue9Len <= 6
	options9.suffix = 'k'
	value9Num = new CountUp("value9", 0, apmValue9 / 10000, 2, 0.5, options9)
# 	value9.text = (apmValue9/1000).toFixed(2) + "k"
# 	print apmValue9 + " is in the thousands"
else if apmValue9Len >= 7
	options9.suffix = 'm'
	value9Num = new CountUp("value9", 0, apmValue9 / 100000, 2, 0.5, options9)
# 	value9.text = (apmValue9/1000).toFixed(2) + "m"
# 	print apmValue9 + " is in the millions"
#### CARDS
cards = ->
	card1 = new Layer
		width: 326, height: 148
		backgroundColor: "#425866"
		clip: true
		parent: bd
	
	title1 = new TextLayer
		width: 300, height: 21, x: 10, y: 10
		color: "white"
		fontSize: 15
		fontFamily: "GE Inspira Sans"
		lineHeight: 1.2
		text: apmTitle1.toUpperCase()
	# 	backgroundColor: "green"
		parent: card1
		clip: true
		
	value1 = new Layer
		width: 300, height: 70, x: 10, y: title1.height + 12
		backgroundColor: null
		parent: card1
		clip: true
	value1.html = '<div id="value1" style="font-size:75px; font-family:GE Inspira Sans; line-height:0.9"></div>'
	canvasElement = value1.querySelector("#value1")
	# value1Num = new CountUp("value1", 0, apmValue1 / 1000, 2, 0.5, options1)
	value1Num.start()
		
	unit1 = new TextLayer
		width: 300, height: 40
		x: 10, y: title1.height + value1.height + 10
		color: "#ccc"
		fontSize: 37
		fontFamily: "GE Inspira Sans"
		lineHeight: 0.9
		text: apmUnit1
	# 	backgroundColor: "red"
		parent: card1
		clip: true
		
	#######
	
	card2 = new Layer
		width: 326, height: 148, x: 327
		backgroundColor: "#425866"
		clip: true
		parent: bd
		
	title2 = new TextLayer
		width: 300, height: 21, x: 10, y: 10
		color: "white"
		fontSize: 15
		fontFamily: "GE Inspira Sans"
		lineHeight: 1.2
		text: apmTitle2.toUpperCase()
	# 	backgroundColor: "green"
		parent: card2
		clip: true
		
	value2 = new Layer
		width: 300, height: 70, x: 10, y: title2.height + 12
		backgroundColor: null
		parent: card2
		clip: true
	value2.html = '<div id="value2" style="font-size:75px; font-family:GE Inspira Sans; line-height:0.9"></div>'
	canvasElement = value2.querySelector("#value2")
	# value2Num = new CountUp("value2", 0, apmValue2 / 10000, 2, 0.5, options2)
	value2Num.start()
		
	unit2 = new TextLayer
		width: 300, height: 40
		x: 10, y: title1.height + value1.height + 10
		color: "#ccc"
		fontSize: 37
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmUnit2
# 		backgroundColor: "red"
		parent: card2
		clip: true
		
	######
	
	card3 = new Layer
		width: 326, height: 148, x: 654
		backgroundColor: "#425866"
		clip: true
		parent: bd
		
	title3 = new TextLayer
		width: 300, height: 21, x: 10, y: 10
		color: "white"
		fontSize: 15
		fontFamily: "GE Inspira Sans"
		lineHeight: 1.2
		text: apmTitle3.toUpperCase()
	# 	backgroundColor: "green"
		parent: card3
		clip: true
		
	value3 = new Layer
		width: 300, height: 70, x: 10, y: title3.height + 12
		backgroundColor: null
		parent: card3
		clip: true
	value3.html = '<div id="value3" style="font-size:75px; font-family:GE Inspira Sans; line-height:0.9"></div>'
	canvasElement = value3.querySelector("#value3")
	# value3Num = new CountUp("value3", 0, apmValue3 / 1000, 2, 0.5, options3)
	value3Num.start()
		
	unit3 = new TextLayer
		width: 300, height: 40
		x: 10, y: title1.height + value1.height + 10
		color: "#ccc"
		fontSize: 37
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmUnit3
	# 	backgroundColor: "red"
		parent: card3
		clip: true
		
	######
	
	card4 = new Layer
		width: 162, height: 106, y: card1.height + 1
		backgroundColor: "#425866"
		clip: true
		parent: bd
		
	title4 = new TextLayer
		width: 142, height: 20, x: 10, y: 10
		color: "white"
		fontSize: 15
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmTitle4.toUpperCase()
	# 	backgroundColor: "green"
		parent: card4
		clip: true
		
	value4 = new TextLayer
		width: 142, height: 44, x: 10, y: title4.height + 12
		color: "white"
		backgroundColor: null
		parent: card4
		clip: true
	# 	backgroundColor: "blue"
	value4.html = '<div id="value4" style="font-size:44px; font-family:GE Inspira Sans; line-height:0.9"></div>'
	canvasElement = value4.querySelector("#value4")
	# value4Num = new CountUp("value4", 0, apmValue4 / 1000, 2, 0.5, options4)
	value4Num.start()
		
	unit4 = new TextLayer
		width: 142, height: 22
		x: 10, y: title4.height + value4.height + 10
		color: "#ccc"
		fontSize: 22
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmUnit4
	# 	backgroundColor: "red"
		parent: card4
		clip: true
		
	######
	
	card5 = new Layer
		width: 163, height: 106, x: 163, y: card1.height + 1
		backgroundColor: "#425866"
		clip: true
		parent: bd
		
	title5 = new TextLayer
		width: 142, height: 20, x: 10, y: 10
		color: "white"
		fontSize: 16
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmTitle5.toUpperCase()
	# 	backgroundColor: "green"
		parent: card5
		clip: true
		
	value5 = new TextLayer
		width: 142, height: 44, x: 10, y: title5.height + 12
		color: "white"
		parent: card5
		clip: true
	# 	backgroundColor: "blue"
	value5.html = '<div id="value5" style="font-size:44px; font-family:GE Inspira Sans; line-height:0.9"></div>'
	canvasElement = value5.querySelector("#value5")
	# value5Num = new CountUp("value5", 0, apmValue5 / 1000, 2, 0.5, options5)
	value5Num.start()
		
	unit5 = new TextLayer
		width: 142, height: 22
		x: 10, y: title5.height + value5.height + 10
		color: "#ccc"
		fontSize: 22
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmUnit5
	# 	backgroundColor: "red"
		parent: card5
		clip: true
		
	######
	
	card6 = new Layer
		width: 162, height: 106, x: 327, y: card2.height + 1
		backgroundColor: "#425866"
		clip: true
		parent: bd
		
	title6 = new TextLayer
		width: 142, height: 20, x: 10, y: 10
		color: "white"
		fontSize: 16
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmTitle6.toUpperCase()
	# 	backgroundColor: "green"
		parent: card6
		clip: true
		
	value6 = new TextLayer
		width: 142, height: 44, x: 10, y: title6.height + 12
		color: "white"
		parent: card6
		clip: true
	# 	backgroundColor: "blue"
	value6.html = '<div id="value6" style="font-size:44px; font-family:GE Inspira Sans; line-height:0.9"></div>'
	canvasElement = value6.querySelector("#value6")
	# value6Num = new CountUp("value6", 0, apmValue6 / 1000, 2, 0.5, options6)
	value6Num.start()
		
	unit6 = new TextLayer
		width: 142, height: 22
		x: 10, y: title6.height + value6.height + 10
		color: "#ccc"
		fontSize: 22
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmUnit6
	# 	backgroundColor: "red"
		parent: card6
		clip: true
		
	######
	
	card7 = new Layer
		width: 163, height: 106, x: 490, y: card2.height + 1
		backgroundColor: "#425866"
		clip: true
		parent: bd
		
	title7 = new TextLayer
		width: 142, height: 20, x: 10, y: 10
		color: "white"
		fontSize: 16
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmTitle7.toUpperCase()
	# 	backgroundColor: "green"
		parent: card7
		clip: true
		
	value7 = new TextLayer
		width: 142, height: 44, x: 10, y: title7.height + 12
		color: "white"
		parent: card7
		clip: true
	# 	backgroundColor: "blue"
	value7.html = '<div id="value7" style="font-size:44px; font-family:GE Inspira Sans; line-height:0.9"></div>'
	canvasElement = value7.querySelector("#value7")
	# value7Num = new CountUp("value7", 0, apmValue7 / 1000, 2, 0.5, options7)
	value7Num.start()
		
	unit7 = new TextLayer
		width: 142, height: 22
		x: 10, y: title7.height + value7.height + 10
		color: "#ccc"
		fontSize: 22
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmUnit7
	# 	backgroundColor: "red"
		parent: card7
		clip: true
		
	######
	
	card8 = new Layer
		width: 162, height: 106, x: 654, y: card3.height + 1
		backgroundColor: "#425866"
		clip: true
		parent: bd
		
	title8 = new TextLayer
		width: 142, height: 20, x: 10, y: 10
		color: "white"
		fontSize: 16
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmTitle8.toUpperCase()
	# 	backgroundColor: "green"
		parent: card8
		clip: true
		
	value8 = new TextLayer
		width: 142, height: 44, x: 10, y: title8.height + 12
		color: "white"
		parent: card8
		clip: true
	# 	backgroundColor: "blue"
	value8.html = '<div id="value8" style="font-size:44px; font-family:GE Inspira Sans; line-height:0.9"></div>'
	canvasElement = value8.querySelector("#value8")
	# value8Num = new CountUp("value8", 0, apmValue8 / 1000, 2, 0.5, options8)
	value8Num.start()
		
	unit8 = new TextLayer
		width: 142, height: 22
		x: 10, y: title8.height + value8.height + 10
		color: "#ccc"
		fontSize: 22
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmUnit8
	# 	backgroundColor: "red"
		parent: card8
		clip: true
		
	######
	
	card9 = new Layer
		width: 163, height: 106, x: 817, y: card3.height + 1
		backgroundColor: "#425866"
		clip: true
		parent: bd
		
	title9 = new TextLayer
		width: 142, height: 20, x: 10, y: 10
		color: "white"
		fontSize: 16
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmTitle9.toUpperCase()
	# 	backgroundColor: "green"
		parent: card9
		clip: true
		
	value9 = new TextLayer
		width: 142, height: 44, x: 10, y: title9.height + 12
		color: "white"
		parent: card9
		clip: true
	# 	backgroundColor: "blue"
	value9.html = '<div id="value9" style="font-size:44px; font-family:GE Inspira Sans; line-height:0.9"></div>'
	canvasElement = value9.querySelector("#value9")
	# value9Num = new CountUp("value9", 0, apmValue9 / 1000, 2, 0.5, options9)
	value9Num.start()
		
	unit9 = new TextLayer
		width: 142, height: 22
		x: 10, y: title9.height + value9.height + 10
		color: "#ccc"
		fontSize: 22
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: apmUnit9
	# 	backgroundColor: "red"
		parent: card9
		clip: true
		
#### TRUNCATION
		strLength = 14
		if apmTitle4.length >= strLength
		# 	print "apm Title #4 is " + apmTitle4.length + " characters"
			title4.text = apmTitle4.substring(0, 13).toUpperCase() + "..."
			
		if apmTitle5.length >= strLength
		# 	print "apm Title #5 is " + apmTitle5.length + " characters"
			title5.text = apmTitle5.substring(0, 13).toUpperCase() + "..."
			
		if apmTitle6.length >= strLength
		# 	print "apm Title #6 is " + apmTitle6.length + " characters"
			title6.text = apmTitle6.substring(0, 13).toUpperCase() + "..."
			
		if apmTitle7.length >= strLength
		# 	print "apm Title #7 is " + apmTitle7.length + " characters"
			title7.text = apmTitle7.substring(0, 13).toUpperCase() + "..."
			
		if apmTitle8.length >= strLength
		# 	print "apm Title #8 is " + apmTitle8.length + " characters"
			title8.text = apmTitle8.substring(0, 13).toUpperCase() + "..."
			
		if apmTitle9.length >= strLength
		# 	print "apm Title #9 is " + apmTitle9.length + " characters"
			title9.text = apmTitle9.substring(0, 13).toUpperCase() + "..."
#### WEATHER WIDGET
weather = ->
	locationArr = ["Huntsville,	Alabama", "Montgomery, Alabama", "Birmingham, Alabama", "Mobile, Alabama", "Juneau, Alaska", "Wrangell, Alaska", "Anchorage, Alaska", "Phoenix, Arizona", "Tucson, Arizona", "Scottsdale, Arizona", "Mesa, Arizona", "Little Rock, Arkansas", "Jonesboro, Arkansas", "Los Angeles, California", "San Diego, California", "San Jose, California", "Sacramento, California", "San Francisco, California", "Palm Springs, California", "Colorado Springs, Colorado", "Denver, Colorado", "Tampa, Florida", "Orlando, Florida", "Columbus, Georgia", "Atlanta, Georgia", "Savannah, Georgia", "Boise, Idaho", "Chicago, Illinois", "Indianapolis, Indiana", "Des Moines, Iowa", "Kansas City, Kansas", "Lexington, Kentucky", "New Orleans, Louisiana", "Baton Rouge, Louisiana", "Baltimore, Maryland", "Detroit, Michigan", "Jackson, Mississippi", "Kansas City, Missouri", "	Springfield, Missouri", "Omaha, Nebraska", "Las Vegas, Nevada", "Reno, Nevada", "Albuquerque, New Mexico", "New York City, New York", "Charlotte, North Carolina", "Raleigh, North Carolina", "Greensboro, North Carolina", "Columbus, Ohio", "Cleveland, Ohio", "Oklahoma, City Oklahoma", "Tulsa, Oklahoma", "Portland, Oregon", "Philadelphia, Pennsylvania", "Charleston, South Carolina", "Nashville, Tennessee", "Memphis, Tennessee", "Houston, Texas", "San Antonio, Texas", "Dallas, Texas", "Austin, Texas", "Arlington, Texas", "Salt Lake City, Utah", "Seattle, Washington", "Madison, Wisconsin"]
	
	warmArr = ["Sunny", "Cloudy", "Partly Cloudy", "Mostly Cloudy", "Chance of Rain", "Light Rain", "Windy", "Fog", "Thunderstorms"]
	
	coldArr = ["Snow", "Hail", "Sleet"]
	
	tempArr = []
	
	positiveTemp = Utils.randomChoice([0..100])
	negativeTemp = Utils.randomChoice([0..-16])
	randomTemp = Utils.randomChoice([positiveTemp..negativeTemp])
	
	if randomTemp >= 1
		warmPhrase = Utils.randomChoice(warmArr)
		tempArr.push(warmPhrase)
	else if randomTemp <= 1
		coldPhrase = Utils.randomChoice(coldArr)
		tempArr.push(coldPhrase)
	
	# print locationArr.length
	# print phraseArr.length
	
	weatherWidget = new Layer
		width: 326, height: 148
		backgroundColor: "#425866"
		clip: true
		parent: bd
		
	location = new TextLayer
		width: 310, height: 25, x: 20, y: 10
		color: "white"
		fontSize: 15
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: Utils.randomChoice(locationArr).toUpperCase()
		parent: weatherWidget
	# 	backgroundColor: "blue"
		clip: true
	# print location.text
		
	temperature = new TextLayer
		width: 200, height: 65, x: 20, y: location.height + 10
		color: "white"
	# 	fontSize: 75
	# 	fontFamily: "GE Inspira Sans"
	# 	lineHeight: .8
	# 	text: randomTemp + "˚" + "F"
		html: '<div id="lg" style="font-size:75px; font-family:GE Inspira Sans;  line-height:.8; position:relative;">' + randomTemp + '<span id="sm" style="font-size:50px; position:absolute; top:5px;">˚</span> F</div>'
		parent: weatherWidget
	# 	backgroundColor: "green"
		clip: true
	# print temperature.text
		
	weatherPhrase = new TextLayer
		width: 300, height: 40, x: 20
		y: location.height + temperature.height + 10
		color: "#B0B0BB"
		fontSize: 37
		fontFamily: "GE Inspira Sans"
		lineHeight: 1
		text: tempArr
		parent: weatherWidget
# 		backgroundColor: "red"
		clip: true
	# print weatherPhrase.text
	
	############# SUNNY ##############
	
	weather_sun_orange = new Layer
		width: 42, height: 43
		x: weatherWidget.width/1.25, y: weatherWidget.height/2
		image: "images/weather-sun-orange.svg"
		parent: weatherWidget
		opacity: 0
		
	sunnyAnimation = new Animation weather_sun_orange,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/2.9
	
	sunnyAnimate = ->	
		sunnyAnimation.start()
	
	############# CLOUDY #############
	
	weather_cloud_blue = new Layer
		width: 54, height: 33
		x: weatherWidget.width/1.35, y: weatherWidget.height/2
		image: "images/weather-cloud-blue.svg"
		parent: weatherWidget
		opacity: 0
		
	cloudyAnimation = new Animation weather_cloud_blue,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/2.8
	
	cloudyAnimate = ->	
		cloudyAnimation.start()
	
	######### PARTLY CLOUDY ##########
	
	weather_partialSun = new Layer
		width: 47, height: 41
		x: weatherWidget.width/1.25, y: weatherWidget.height/2.5
		image: "images/weather-partialSun.svg"
		parent: weatherWidget
		opacity: 0
	
	weather_cloud_white_sm = new Layer
		width: 34, height: 21
		x: weatherWidget.width/1.3, y: weatherWidget.height/3.1
		image: "images/weather-cloud-white-sm.svg"
		parent: weatherWidget
		opacity: 0
		
	pcTopAnimation = new Animation weather_partialSun,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/3.5
			
	pcBottomAnimation = new Animation weather_cloud_white_sm,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/2.1
	
	partlyCloudyAnimate = ->	
		pcTopAnimation.start()
		pcBottomAnimation.start()
	
	########## MOSTLY CLOUDY #########
	
	weather_partialSun_color_sm = new Layer
		width: 35, height: 31
		x: weatherWidget.width/1.23, y: weatherWidget.height/3
		image: "images/weather-partialSun-color-sm.svg"
		parent: weatherWidget
		opacity: 0
		
	weather_cloud_white = new Layer
		width: 54, height: 33
		x: weatherWidget.width/1.35, y: weatherWidget.height/3
		image: "images/weather-cloud-white.svg"
		parent: weatherWidget
		opacity: 0
		
	mcTopAnimation = new Animation weather_partialSun_color_sm,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/4
			
	mcBottomAnimation = new Animation weather_cloud_white,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/2.5
	
	mostlyCloudyAnimate = ->	
		mcTopAnimation.start()
		mcBottomAnimation.start()
	
	############## RAIN ##############
	
	weather_partialCloud = new Layer
		width: 55, height: 34
		x: weatherWidget.width/1.35, y: weatherWidget.height/2
		image: "images/weather-partialCloud.svg"
		parent: weatherWidget
		opacity: 0
		
	weather_rain_blue = new Layer
		width: 25, height: 25
		x: weatherWidget.width/1.27, y: weatherWidget.height/2.5
		image: "images/weather-rain-blue.svg"
		parent: weatherWidget
		opacity: 0
	
	rainTopAnimation = new Animation weather_partialCloud,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/3
		
	rainBottomAnimation = new Animation weather_rain_blue,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/2
	
	rainAnimate = ->	
		rainTopAnimation.start()
		rainBottomAnimation.start()
	
	############## LIGHT RAIN ##############
	
	weather_partialCloud = new Layer
		width: 55, height: 34
		x: weatherWidget.width/1.35, y: weatherWidget.height/2
		image: "images/weather-partialCloud.svg"
		parent: weatherWidget
		opacity: 0
		
	weather_lightRain_blue = new Layer
		width: 18, height: 22
		x: weatherWidget.width/1.26, y: weatherWidget.height/2.5
		image: "images/weather-lightRain-blue.svg"
		parent: weatherWidget
		opacity: 0
	
	lrTopAnimation = new Animation weather_partialCloud,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/3
		
	lrBottomAnimation = new Animation weather_lightRain_blue,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/2
	
	lightRainAnimate = ->	
		lrTopAnimation.start()
		lrBottomAnimation.start()
	
	############## WINDY ##############
	
	weather_windTop = new Layer
		width: 43, height: 12
		x: weatherWidget.width/1.43, y: weatherWidget.height/2.5
		image: "images/weather-windTop.svg"
		parent: weatherWidget
		opacity: 0
		
	weather_windMiddle = new Layer
		width: 57, height: 12
		x: weatherWidget.width/1.45, y: weatherWidget.height/2.2
		image: "images/weather-windMiddle.svg"
		parent: weatherWidget
		opacity: 0
		
	weather_windBottom = new Layer
		width: 44, height: 12
		image: "images/weather-windBottom.svg"
		x: weatherWidget.width/1.41, y: weatherWidget.height/1.8
		parent: weatherWidget
		opacity: 0
	
	windTopAnimation = new Animation weather_windTop,
		opacity: 1
		time: 0.5
		x: weatherWidget.width/1.33
		
	windMiddleAnimation = new Animation weather_windMiddle,
		opacity: 1
		time: 0.5
		x: weatherWidget.width/1.35
		
	windBottomAnimation = new Animation weather_windBottom,
		opacity: 1
		time: 0.5
		x: weatherWidget.width/1.31
	
	windyAnimate = ->
		windTopAnimation.start()
		Utils.delay .2, ->
			windMiddleAnimation.start()
		Utils.delay .3, ->
			windBottomAnimation.start()
	
	############## FOG ##############
		
	weather_fogCloud = new Layer
		width: 53, height: 34
		x: weatherWidget.width/1.35, y: weatherWidget.height/2
		image: "images/weather-fogCloud.svg"
		parent: weatherWidget
		opacity: 0
		
	weather_fog_blue = new Layer
		width: 51, height: 17
		x: weatherWidget.width/1.26, y: weatherWidget.height/2
		image: "images/weather-fog-blue.svg"
		parent: weatherWidget
		opacity: 0
	
	fogTopAnimation = new Animation weather_fogCloud,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/3
		
	fogBottomAnimation = new Animation weather_fog_blue,
		opacity: 1
		time: 0.5
		x: weatherWidget.width/1.4
	
	foggyAnimate = ->	
		fogTopAnimation.start()
		fogBottomAnimation.start()
	
	############## SNOW ##############
	
	weather_partialCloud = new Layer
		width: 55, height: 34
		x: weatherWidget.width/1.35, y: weatherWidget.height/2
		image: "images/weather-partialCloud.svg"
		parent: weatherWidget
		opacity: 0
		
	weather_snow_blue = new Layer
		width: 22, height: 18
		image: "images/weather-snow-blue.svg"
		x: weatherWidget.width/1.26, y: weatherWidget.height/2.5
		parent: weatherWidget
		opacity: 0
	
	snowTopAnimation = new Animation weather_partialCloud,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/3
		
	snowBottomAnimation = new Animation weather_snow_blue,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/2
	
	snowAnimate = ->	
		snowTopAnimation.start()
		snowBottomAnimation.start()
	
	############## HAIL ##############
	
	weather_partialCloud = new Layer
		width: 55, height: 34
		x: weatherWidget.width/1.35, y: weatherWidget.height/2
		image: "images/weather-partialCloud.svg"
		parent: weatherWidget
		opacity: 0
		
	weather_hail_blue = new Layer
		width: 19, height: 23
		image: "images/weather-hail-blue.svg"
		x: weatherWidget.width/1.25, y: weatherWidget.height/2.5
		parent: weatherWidget
		opacity: 0
	
	hailTopAnimation = new Animation weather_partialCloud,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/3
		
	hailBottomAnimation = new Animation weather_hail_blue,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/2
	
	hailAnimate = ->	
		hailTopAnimation.start()
		hailBottomAnimation.start()
	
	############## SLEET ##############
	
	weather_partialCloud = new Layer
		width: 55, height: 34
		x: weatherWidget.width/1.35, y: weatherWidget.height/2
		image: "images/weather-partialCloud.svg"
		parent: weatherWidget
		opacity: 0
	
	weather_sleet_blue = new Layer
		width: 26, height: 25
		image: "images/weather-sleet-blue.svg"
		x: weatherWidget.width/1.27, y: weatherWidget.height/2.5
		parent: weatherWidget
		opacity: 0
	
	sleetTopAnimation = new Animation weather_partialCloud,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/3
		
	sleetBottomAnimation = new Animation weather_sleet_blue,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/2
	
	sleetAnimate = ->	
		sleetTopAnimation.start()
		sleetBottomAnimation.start()
	
	############## THUNDERSTORMS ##############
	
	weather_partialCloud = new Layer
		width: 55, height: 34
		x: weatherWidget.width/1.35, y: weatherWidget.height/2
		image: "images/weather-partialCloud.svg"
		parent: weatherWidget
		opacity: 0
		
	weather_thunderRain_color = new Layer
		width: 17, height: 24
		image: "images/weather-thunderRain-color.svg"
		x: weatherWidget.width/1.275, y: weatherWidget.height/2.5
		parent: weatherWidget
		opacity: 0
		
	weather_thunderstorm_color = new Layer
		width: 9, height: 26
		x: weatherWidget.width/1.195, y: weatherWidget.height/2.5
		image: "images/weather-thunderstorm-color.svg"
		parent: weatherWidget
		opacity: 0
	
	thunderTopAnimation = new Animation weather_partialCloud,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/3
		
	thunderRainAnimation = new Animation weather_thunderRain_color,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/2
		
	thunderBoltAnimation = new Animation weather_thunderstorm_color,
		opacity: 1
		time: 0.5
		y: weatherWidget.height/2
	
	thunderstormAnimate = ->	
		thunderTopAnimation.start()
		thunderRainAnimation.start()
		Utils.delay 0.2, ->
			thunderBoltAnimation.start()
	
	if warmPhrase == "Sunny" or coldPhrase == "Sunny"
		sunnyAnimate()
	else if warmPhrase == "Cloudy" or coldPhrase == "Cloudy"
		cloudyAnimate()
	else if warmPhrase == "Partly Cloudy" or coldPhrase == "Partly Cloudy"
		partlyCloudyAnimate()
	else if warmPhrase == "Mostly Cloudy" or coldPhrase == "Mostly Cloudy"
		mostlyCloudyAnimate()
	else if warmPhrase == "Chance of Rain" or coldPhrase == "Chance of Rain"
		rainAnimate()
	else if warmPhrase == "Light Rain" or coldPhrase == "Light Rain"
		lightRainAnimate()
	else if warmPhrase == "Windy" or coldPhrase == "Windy"
		windyAnimate()
	else if warmPhrase == "Fog" or coldPhrase == "Fog"
		foggyAnimate()
	else if warmPhrase == "Snow" or coldPhrase == "Snow"
		snowAnimate()
	else if warmPhrase == "Hail" or coldPhrase == "Hail"
		hailAnimate()
	else if warmPhrase == "Sleet" or coldPhrase == "Sleet"
		sleetAnimate()
	else if warmPhrase == "Thunderstorms" or coldPhrase == "Thunderstorms"
		thunderstormAnimate()

Utils.delay .5, ->
	spinnerLoad.visible = false
	bd.animate
		opacity: 1
		time: 0.3
	cards()
	weather()

#### RELOAD BTN
button = new Layer
	width: 120, height: 35, x: 50, y: 320
	borderRadius: 4
	backgroundColor: "#43AAF8"
	html: "RELOAD"
button.style = fontFamily: "GE Inspira Sans", fontSize: "20px", textAlign: "center", paddingTop: "5.5px"

button.onMouseOver ->
	this.backgroundColor = "#2A87CD"
	
button.onMouseOut ->
	this.backgroundColor = "#43AAF8"
	
button.on Events.Click, ->
	window.location.reload(true)
	spinnerLoad()
