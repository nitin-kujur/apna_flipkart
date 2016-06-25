# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User.create(:first_name => 'ravi', :last_name => 'B', email: 'rbaghele@gmail.com')
Category.delete_all
Product.delete_all

electronics = Category.create(
  title: 'Electronics',
  description: '',
  tag: ''
  )

mobile = Category.create(
  title: 'Mobiles',
  description: '',
  tag: '',
  category_id: electronics.id
  )

Category.create(
  title: 'Laptops',
  description: '',
  tag: '',
  category_id: electronics.id
  )

Product.create(
  pid: 1,
  pname: "Nexus 6P (Grey, 32GB)",
  description: "12.3MP primary camera with auto focus, dual flash and 8MP front facing camera
    5.7-inch (14.47 centimeters) WQHD AMOLED capacitive touchscreen with 2560 x 1440 pixels resolution and 518 ppi pixel density
    Android(TM) 6.0 Marshmallow operating system with octa­-core Qualcomm® SnapdragonTM 810 v2.1 processor, 3GB LPDDR4 RAM, 64GB internal memory and single nano SIM
    3450mAH lithium-ion battery
    1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase
    5.7-inch (14.47 centimeters) WQHD AMOLED capacitive touchscreen with 2560 x 1440 pixels resolution and 518 ppi pixel density
    Android(TM) 6.0 Marshmallow operating system with octa­-core Qualcomm SnapdragonTM 810 v2.1 processor, 3GB LPDDR4 RAM, 32GB internal memory and single nano SIM

",
  pimg_url: "http://ecx.images-amazon.com/images/I/81aFmVmUbFL._SL1500_.jpg",
  cost: "34999",
  discount: "15",
  discount_type: "percent",
  category_id: mobile.id
	)

Product.create(
  pid: 2,
  pname: "Sony Xperia X Dual (Graphite Black)",
  description: "0.6 Sec Quick Launch camera, 23MP camera with predictive hybrid autofocus, 1/2.3\" ExmorTM RS for mobile sensor, 5x clear image zoom, 24mm G Lens F2.0, low-light photography: ISO 12800 , Full HD 1080p video recording, superior auto mode, pulse LED flash; 13MP front facing for low light & wide angle selfie
    12.7 centimeters (5-inch) Full HD 1080p curved glass display, TRILUMINOS display for mobile, X-Reality for mobile; dynamic contrast enhancement capacitive touchscreen with 1080 x 1920 pixels resolution, 441 ppi pixel density and 16M color support
    Android v6.0.1 Marshmallow operating system with 1.8GHz Cortex-A72 + 1.4GHz Cortex-A53 Qualcomm Snapdragon 650 hexa core processor, Adreno 510 GPU, 3GB RAM, 64GB internal memory expandable up to 200GB and dual SIM (nano+nano) dual-standby (4G+4G)
    Upto 2 days battery life, 2620mAH lithium-ion battery
    1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase

",
  pimg_url: "http://ecx.images-amazon.com/images/I/51T0W-B-YqL._SL1128_.jpg",
  cost: "46990",
  discount: "4",
  discount_type: "percent",
  category_id: mobile.id
	)

Product.create(
  pid: 3,
  pname: "Apple iPhone 6 (Space Grey, 16GB)",
  description: "4.7-inch (diagonal) Retina HD display with 1334-by-750 resolution
    A8 chip with M8 motion coprocessor
    8-megapixel iSight camera with Focus Pixels and True Tone flash
    1080p HD video recording at 60 fps and slo-mo video recording at 240 fps
    FaceTime HD camera, Built-in rechargeable lithium-ion battery

",
  pimg_url: "http://ecx.images-amazon.com/images/I/61eihG04VZL._SL1000_.jpg",
  cost: "52000",
  discount: "27",
  discount_type: "percent",
  category_id: mobile.id
	)

Product.create(
  pid: 4,
  pname: "Moto G Plus, 4th Gen (Black, 32 GB)",
  description: "16 MP primary camera with laser focus, PDAF and Professional mode, 5 MP wide angle front camera with display flash
    Finger print reader for fast unlocking, 13.97 centimeters (5.5-inch) full HD display, 1920 x 1080 pixels resolution and 401 ppi pixel density, Corning Gorilla Glass 3
    Android v6.0.1 Marshmallow operating system with Motorola mobile computing system, including 1.5 GHz MSM8952 Qualcomm® SnapdragonTM 617 octa-core processor with 550 MHz Adreno 405 GPU, 3GB RAM, 32GB internal memory expandable up to 128GB and dual micro-SIM dual-standby (4G+3G)
    3000 mAh all day battery with TurboPower charging (6 hours of power in 15 min of charging)
    1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase

",
  pimg_url: "http://ecx.images-amazon.com/images/I/61S825%2BuyIL._SL1500_.jpg",
  cost: "14999",
  discount: "",
  discount_type: "",
  category_id: mobile.id
	)

Product.create(
  pid: 5,
  pname: "Samsung Galaxy S7 Edge SM-G935F Smart Phone 32 GB, Gold Platinum ",
  description: "2.3 GHz, 1.6 GHz Octa-Core Processor
    Super AMOLED 2560 x 1440 Pixels 5.5 Inch Screen
    32 GB Internal storage and 4 GB RAM
    12 MP Primary Camera and 5 MP Secondary Camera
    S-Voice
",
  pimg_url: "http://ecx.images-amazon.com/images/I/41KGasFkQXL.jpg",
  cost: "57999",
  discount: "10",
  discount_type: "percent",
  category_id: mobile.id
	)