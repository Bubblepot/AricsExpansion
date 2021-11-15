extends Node

###---Added by Expansion---### Multiple Changes: Job, Farm, Breeding
var dict = {
	farmcapacity = {
		name = "Capacity", 
		code = 'farmcapacity',
		description = "Adds new stables to the farm, increasing number of residents that can be assigned at a time.", 
		levels = 30,
		cost = 500,
		pointscost = 3,
		valuename = "Allowed livestock: ",
		valuenumber = ['2','5','8','12','15','18','21','24','27','30','35','40','45','50','55','60','65','70','75','80','85','90','95','100','150','200','250','300','350','400','500'],
	},
	farmhatchery = {
		name = "Hatchery", 
		code = 'farmhatchery',
		description = "[color=red]Currently Unused[/color]\nProvides the farm with new equipment, allowing the use of slaves and snails for egg laying.", 
		description2 = "[color=red]Currently Unused[/color]\nThe farm will gain Pumps with suction cups attached to hoses. Livestock will be pumped daily by the suction cups for milk, cum, or squirt.",
		description3 = "[color=red]Currently Unused[/color]\nProvides the farm with Essence Extraction equipment. This will allow the Pumps to pump raw cum or squirt into the livestock to drain back essence based on their race. Can be deadly for unenergetic slaves.", 
		levels = 3,
		pointscost = 15,
		cost = [1000,2500,5000],
	},
	farmtreatment = {
		name = "Improved Treatment", 
		code = 'farmtreatment',
		description = "[color=red]Currently Unused[/color]\nEquips the farm with Milking Racks that the Farm Manager can use to restrain Cattle if asked and upgrades the stalls, making milking gentler on your cattle. Exchanges buckets and hands for basic pump technology that will [color=green]guarantee 25% efficiency[/color].", 
		description2 = "[color=red]Currently Unused[/color]\nEquips the farm with new Milking Pumps. These provide enough suction on the cattle's nipples to [color=green]guarantee 50% efficiency[/color].",
		description3 = "[color=red]Currently Unused[/color]\nEquips the farm with the modern standard in cattle milking technology. These provide steady suction on the cattle's nipples to [color=green]guarantee 75% efficiency[/color] as well as store the milk directly into barrels.",
		description4 = "[color=red]Currently Unused[/color]\nEquips the farm with the newest, most modern technology. These pumps latch onto the cattle and can only be removed by a key the farm manager holds, [color=green]guaranteeing 100% efficiency[/color].",
		description5 = "[color=red]Currently Unused[/color]\nEquips the farm with fucking machines. The farm manager will slide these into the livestock's asses, mouths, and pussies to increase their sex drives and obediance.",
		levels = 5,
		pointscost = 20,
		cost = [2500,5000,7500,10000,15000],
	},
	farmmana = {
		name = "Mana Squeezers", 
		code = 'farmmana',
		description = "Equips the farm with special equipment which seeps magic particles from the air, providing a small chance to generate some mana from every slave located there.", 
		levels = 1,
		pointscost = 25,
		cost = 3000,
	},
	foodcapacity = {
		name = "Food Storage Capacity",
		code = 'foodcapacity',
		description = "Adds aditional space to the food storage area allowing you to store more food.", 
		levels = 5,
		cost = [250,500,1000,1500,2500],
		pointscost = 5,
		valuename = "Maximum food: ",
		valuenumber = ['500', '750', '1000', '1500', '2000', '3000'],
	},
	foodpreservation = {
		name = "Food Storage Preservation",
		code = 'foodpreservation',
		description = "Equips your food storage area with a cooling system which helps prevent food spoilage when storage is nearly full.", 
		levels = 1,
		pointscost = 15,
		cost = 1500,
	},

	jailcapacity = {
		name = "Capacity",
		code = 'jailcapacity',
		description = "Adds additional cells to your jail, increasing the maximum number of prisoners it can hold at a time.", 
		levels = 8,
		cost = 200,
		pointscost = 3,
		valuename = "Jail Cells: ",
	},
	jailtreatment = {
		name = "Better Furnishing",
		code = 'jailtreatment',
		description = "Equips your jail with better furnishings and health care, preventing prisoners from accumulating stress.", 
		levels = 1,
		pointscost = 15,
		cost = 750,
	},
	jailincenses = {
		name = "Soothing Incences",
		code = 'jailincenses',
		description = "Equips your jail with burners for a special incense which helps which helps keep prisoners calm.", 
		levels = 1,
		pointscost = 20,
		cost = 1500,
	},

	mansioncommunal = {
		name = "Communal Room Beds",
		code = 'mansioncommunal',
		description = "Adds new beds to communal room, providing space for additional residents to sleep. ", 
		levels = 20,
		cost = 100,
		pointscost = 1,
		valuename = "Total beds: ",
	},
	mansionpersonal = {
		name = "New Personal Room",
		code = 'mansionpersonal',
		description = "Set up one of the free rooms for living. Personal rooms provide sense of [color=yellow]Luxury[/color] to their hosts. ", 
		levels = 10,
		cost = 300,
		pointscost = 3,
		valuename = "Total rooms: ",
	},
	mansionbed = {
		name = "Master's Bed Enlargement",
		code = 'mansionbed',
		description = "Enlarges your bed allowing you to host more people with you at night.. Sleeping in your room provides a sense of [color=yellow]Luxury[/color] to your partners.", 
		levels = 3,
		cost = 300,
		pointscost = 3,
		valuename = "Allowed partners: ",
	},
	mansionluxury = {
		name = "Mansion Furnishment",
		code = 'mansionluxury',
		description = "Decorates the mansion with better furniture and additional pieces of art. This provides a boost to the [color=yellow]Luxury[/color] provided to servants sleeping in personal rooms and your bed.", 
		levels = 2,
		pointscost = 15,
		cost = [1000,2000],
	},
	mansionalchemy = {
		name = "Alchemy Room",
		code = 'mansionalchemy',
		description = "Equips a spare room with alchemical tools and paraphernalia allowing you to brew basic potions.", 
		description2 = "Upgrades your Alchemy Room with additional equipment enabling you to brew a larger variety of potions.",
		levels = 2,
		pointscost = 5,
		cost = [500,1000],
	},
	mansionlibrary = {
		name = "Library",
		code = 'mansionlibrary',
		description = "Purchases new books and furniture for your library providing access to new books, articles and information as well as improving residents’ studies.", 
		levels = 3,
		pointscost = 3,
		cost = [500,1000,1500],
	},
	mansionlab = {
		name = "Laboratory",
		code = 'mansionlab',
		description = "Equips a spare room within the mansion with advanced devices and tools allowing you to conduct experiments and operations on both yourself and your slaves.", 
		description2 = "Upgrades your laboratory with the latest equipment and tools, unlocking new operations.", 
		levels = 2,
		pointscost = 10,
		cost = [1000,3000],
	},
	mansionkennels = {
		name = "Kennels",
		code = 'mansionkennels',
		description = "Builds a kennel on the mansion’s grounds providing space to keep hounds. Having hounds on the property reduces the chances of slaves escaping during the night, and for those so inclined unlocks the beastality action. ", 
		levels = 1,
		pointscost = 15,
		cost = 1500,
	},
	mansionnursery = {
		name = "Nursery Room",
		code = 'mansionnursery',
		description = "Upgrades and equips a room within the mansion to provide care for newborn babies and young children for a limited period.", 
		levels = 1,
		pointscost = 10,
		cost = 1000,
	},
	mansionparlor = {
		name = "Beauty Parlor",
		code = 'mansionparlor',
		description = "Upgrades and equips a room within the mansion allowing to alter servants via [color=aqua]Piercing[/color] and [color=aqua]Tattoo[/color] (Tattoos can empower your slaves).", 
		levels = 1,
		pointscost = 10,
		cost = 1000,
	},
	dimensionalcrystal = {
		name = "Dimensional Crystal",
		code = 'dimensionalcrystal',
		description = "The Mansion is infused with latent Dimensional Energy. The [color=aqua]speed of pregnancies[/color] in the mansion can be altered to give birth at an alarming rate.",
		description2 = "The Dimensional Energy is harnessed and focused on the child when first brought to it, possibly allowing it's max stats to grow based on its parents.\n[color=aqua]It also reveals the secrets about every pregnancy it can sense.[/color]",
		description3 = "The Dimensional Crystal has been modified to show you the truth of any woman's body it touches. Pregnancies can't be kept secret from you any longer.",
		description4 = "Does the Dimensional Crystal hold the secret of immortality? It seems to be able to prevent the deaths of anyone inside of the Mansion...but at what cost?",
		levels = 4,
		pointscost = 20,
		cost = [2500,5000,7500,10000],
	},
	vatspace = {
		name = "Clear Space on the Farm",
		code = 'vatspace',
		description = "Clear out a section of your farm to install a total of [color=aqua]1 Vat[/color].", 
		description2 = "Clear out a section of your farm to install a total of [color=aqua]2 Vats[/color].", 
		description3 = "Clear out a section of your farm to install a total of [color=aqua]3 Vats[/color].", 
		description4 = "Clear out a section of your farm to install a total of [color=aqua]4 Vats[/color].", 
		levels = 4,
		pointscost = 10,
		cost = [0,2500,5000,7500],
	},
	vatmilk = {
		name = "Milk Vats",
		code = 'vatmilk',
		description = "Install a [color=aqua]Milk Vat[/color] that can store and preserve [color=aqua]100 units of milk[/color].", 
		description2 = "Upgrade your [color=aqua]Milk Vat[/color] to one that can store and preserve [color=aqua]250 units of milk[/color].", 
		description3 = "Upgrade your [color=aqua]Milk Vat[/color] to one that can store and preserve [color=aqua]500 units of milk[/color].", 
		levels = 3,
		pointscost = 1,
		cost = [0,2500,5000],
	},
	vatsemen = {
		name = "Semen Vats",
		code = 'vatsemen',
		description = "Install a [color=aqua]Semen Vat[/color] that can store and preserve [color=aqua]100 units of semen[/color].", 
		description2 = "Upgrade your [color=aqua]Semen Vat[/color] to one that can store and preserve [color=aqua]250 units of semen[/color].", 
		description3 = "Upgrade your [color=aqua]Semen Vat[/color] to one that can store and preserve [color=aqua]500 units of semen[/color].", 
		levels = 3,
		pointscost = 1,
		cost = [0,2500,5000],
	},
	vatlube = {
		name = "Lube Vats",
		code = 'vatlube',
		description = "Install a [color=aqua]Lube Vat[/color] that can store and preserve [color=aqua]100 units of lube[/color].", 
		description2 = "Upgrade your [color=aqua]Lube Vat[/color] to one that can store and preserve [color=aqua]250 units of lube[/color].", 
		description3 = "Upgrade your [color=aqua]Lube Vat[/color] to one that can store and preserve [color=aqua]500 units of lube[/color].", 
		levels = 3,
		pointscost = 2,
		cost = [0,2500,5000],
	},
	vatpiss = {
		name = "Piss Vats",
		code = 'vatpiss',
		description = "Install a [color=aqua]Piss Vat[/color] that can store and preserve [color=aqua]100 units of piss[/color].", 
		description2 = "Upgrade your [color=aqua]Piss Vat[/color] to one that can store and preserve [color=aqua]250 units of piss[/color].", 
		description3 = "Upgrade your [color=aqua]Piss Vat[/color] to one that can store and preserve [color=aqua]500 units of piss[/color].", 
		levels = 3,
		pointscost = 10,
		cost = [0,2500,5000],
	},
	bottler = {
		name = "Bottler",
		code = 'bottler',
		description = "Install a very low grade [color=aqua]Bottling Machine[/color] that aids in bottling liquids to refine or sell.", 
		description2 = "Upgrade your [color=aqua]Bottling Machine[/color] to a low grade machine to make the process easier.",
		description3 = "Upgrade your [color=aqua]Bottling Machine[/color] to a mid-grade machine that drastically aids in the energy it takes to bottle liquids.", 
		description4 = "Upgrade your [color=aqua]Bottling Machine[/color] to a high-grade machine that drastically aids in the energy it takes to bottle liquids.", 
		description5 = "Upgrade your [color=aqua]Bottling Machine[/color] to the best machine available, potentially even removing any energy cost for bottling liquids.", 
		levels = 5,
		pointscost = 10,
		cost = [2000,4000,6000,8000,10000],
	},
	traininggrounds = {
		name = "Training Grounds",
		code = 'traininggrounds',
		description = "Clear out a section of the mansion grounds specifically for the use of combat training. These grounds will permit a dedicated trainer to impart to other slaves of lower levels their knowledge of combat, granting the trainees XP and possible Learning Points. [color=green]Unlocks Trainer and Trainee Jobs - Training XP becomes Level Difference / Chance to gain Learning Points becomes (Trainer Wit & Confidence/2) + (Trainee Wit & Courage/2). Max LP per day is 5.[/color] ", 
		description2 = "Purchase a crate of quality training weapons to enhance the amount of experience granted by the [color=aqua]Trainer[/color]. They will be able to pass on more combat experience and have a greater chance at learning points.\n[color=aqua]Training XP becomes Level Difference * 2 / Chance to gain Learning Points becomes 10 + (Trainer Wit & Confidence/2) + (Trainee Wit & Courage/2). Max LP per day is 10.[/color] ",
		description3 = "Purchase an arrangement of training dummys and targets to allow your [color=aqua]Trainees[/color] to practice the methods they are taught.\n[color=aqua]Training XP becomes Level Difference * 3 / Chance to gain Learning Points becomes 10 + (Trainer Wit & Confidence/2) + (Trainee Wit & Courage/2). Max LP per day is 15.[/color] ",
		description4 = "Purchase a shipment of combat manuals to allow the [color=aqua]Trainer[/color] to more effectively teach the [color=aqua]Trainees[/color].\n[color=aqua]Training XP becomes Level Difference * 4 / Chance to gain Learning Points becomes 20 + (Trainer Wit & Confidence/2) + (Trainee Wit & Courage/2). Max LP per day is 20.[/color] ",
		levels = 4,
		pointscost = 10,
		cost = [5000,10000,15000,20000],
	},
}

###---End Expansion---###