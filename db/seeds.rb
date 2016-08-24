User.create! name: "shipper1",
  email: "shipper1@gmail.com",
  latitude: 21.0093557,
  longitude: 105.8554427,
  phone_number: "0123456789",
  plate_number: "29X5-56789",
  status: "actived",
  role: 2,
  password: "123456"
User.create! name: "shipper2",
  email: "shipper2@gmail.com",
  latitude: 21.0072829,
  longitude: 105.8413891,
  phone_number: "0123456788",
  plate_number: "29X5-56788",
  status: "actived",
  role: 2,
  password: "123456"
User.create! name: "shipper3",
  email: "shipper3@gmail.com",
  latitude: 21.0061393,
  longitude: 105.8419748,
  phone_number: "0123456787",
  plate_number: "29X5-56787",
  status: "actived",
  role: 2,
  password: "123456"
User.create! name: "shipper4",
  email: "shipper4@gmail.com",
  latitude: 21.0144139,
  longitude: 105.8031754,
  phone_number: "0123456786",
  plate_number: "29X5-56786",
  status: "actived",
  role: 2,
  password: "123456"
User.create! name: "shipper5",
  email: "shipper5@gmail.com",
  latitude: 21.0092948,
  longitude: 105.8099247,
  phone_number: "0123456785",
  plate_number: "29X5-56785",
  status: "actived",
  role: 2,
  password: "123456"
User.create! name: "shipper6",
  email: "shipper6@gmail.com",
  latitude: 21.0066625,
  longitude: 105.8157497,
  phone_number: "0123456784",
  plate_number: "29X5-56784",
  status: "actived",
  role: 2,
  password: "123456"
User.create! name: "shipper7",
  email: "shipper7@gmail.com",
  latitude: 21.0167188,
  longitude: 105.7819804,
  phone_number: "0123456783",
  plate_number: "29X5-56783",
  status: "actived",
  role: 2,
  password: "123456"
User.create! name: "shop1",
  email: "shop1@gmail.com",
  latitude: 21.0167188,
  longitude: 105.7819804,
  phone_number: "0123456799",
  plate_number: "29X5-56799",
  status: "actived",
  role: 1,
  password: "123456"
User.create! name: "shop2",
  email: "shop2@gmail.com",
  latitude: 21.0167188,
  longitude: 105.7819804,
  phone_number: "0123456790",
  plate_number: "29X5-56788",
  status: "actived",
  role: 1,
  password: "123456"

Invoice.create! name: "invoice1",
  latitude_start: 21.0093557,
  longitude_start: 105.8554427,
  latitude_finish: 21.0066625,
  longitude_finish: 105.8157497,
  status: 1,
  user_id: 8
Invoice.create! name: "invoice2",
  latitude_start: 21.0072829,
  longitude_start: 105.8413891,
  latitude_finish: 21.0093557,
  longitude_finish: 105.8554427,
  status: 0,
  user_id: 8
Invoice.create! name: "invoice3",
  latitude_start: 21.0061393,
  longitude_start: 105.8419748,
  latitude_finish: 21.0072829,
  longitude_finish: 105.8413891,
  status: 2,
  user_id: 8
Invoice.create! name: "invoice4",
  latitude_start: 21.0144139,
  longitude_start: 105.8031754,
  latitude_finish: 21.0061393,
  longitude_finish: 105.8419748,
  status: 3,
  user_id: 8
Invoice.create! name: "invoice5",
  latitude_start: 21.0092948,
  longitude_start: 105.8099247,
  latitude_finish: 21.0144139,
  longitude_finish: 105.8031754,
  status: 4,
  user_id: 8
Invoice.create! name: "invoice6",
  latitude_start: 21.0066625,
  longitude_start: 105.8157497,
  latitude_finish: 21.0092948,
  longitude_finish: 105.8099247,
  status: 5,
  user_id: 8
Invoice.create! name: "invoice7",
  latitude_start: 21.0066625,
  longitude_start: 105.8157497,
  latitude_finish: 21.0092948,
  longitude_finish: 105.8099247,
  status: 2,
  user_id: 9
Invoice.create! name: "invoice8",
  latitude_start: 21.0066625,
  longitude_start: 105.8157497,
  latitude_finish: 21.0092948,
  longitude_finish: 105.8099247,
  status: 3,
  user_id: 9
Invoice.create! name: "invoice9",
  latitude_start: 21.0066625,
  longitude_start: 105.8157497,
  latitude_finish: 21.0092948,
  longitude_finish: 105.8099247,
  status: 1,
  user_id: 9
Invoice.create! name: "invoice10",
  latitude_start: 21.0066625,
  longitude_start: 105.8157497,
  latitude_finish: 21.0092948,
  longitude_finish: 105.8099247,
  status: 3,
  user_id: 9
UserInvoice.create! status: 0,
  user_id: 1, invoice_id: 1
UserInvoice.create! status: 1,
  user_id: 1, invoice_id: 2
UserInvoice.create! status: 1,
  user_id: 1, invoice_id: 3
UserInvoice.create! status: 0,
  user_id: 1, invoice_id: 4
UserInvoice.create! status: 1,
  user_id: 1, invoice_id: 5
UserInvoice.create! status: 2,
  user_id: 1, invoice_id: 7
UserInvoice.create! status: 3,
  user_id: 1, invoice_id: 8
UserInvoice.create! status: 1,
  user_id: 1, invoice_id: 9
UserInvoice.create! status: 3,
  user_id: 1, invoice_id: 10
UserInvoice.create! status: 0,
  user_id: 2, invoice_id: 1
UserInvoice.create! status: 1,
  user_id: 2, invoice_id: 2
UserInvoice.create! status: 1,
  user_id: 2, invoice_id: 3
UserInvoice.create! status: 0,
  user_id: 2, invoice_id: 4
UserInvoice.create! status: 1,
  user_id: 2, invoice_id: 5
UserInvoice.create! status: 2,
  user_id: 2, invoice_id: 7
UserInvoice.create! status: 3,
  user_id: 2, invoice_id: 8
UserInvoice.create! status: 1,
  user_id: 2, invoice_id: 9
UserInvoice.create! status: 3,
  user_id: 2, invoice_id: 10
