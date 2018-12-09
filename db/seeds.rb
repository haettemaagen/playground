Listing.destroy_all
Account.destroy_all

Account.create(name: "Miso Film")
Account.create(name: "Snowman Productions")
Account.create(name: "Nordisk Film")
Account.create(name: "Zentropa")
Account.create(name: "Nimbus")

Listing.create(price_per_day: rand(500..10_000), title: "Sony Cam", category: "Cameras", brand: "Sony", account: Account.all.sample)
Listing.create(price_per_day: rand(500..10_000), title: "Panasonic Cam", category: "Cameras", brand: "Panasonic", account: Account.all.sample)
Listing.create(price_per_day: rand(500..10_000), title: "RED Cam", category: "Cameras", brand: "RED", account: Account.all.sample)
Listing.create(price_per_day: rand(500..10_000), title: "Canon Cam", category: "Cameras", brand: "Canon", account: Account.all.sample)
Listing.create(price_per_day: rand(500..10_000), title: "Lumix Cam", category: "Cameras", brand: "Lumix", account: Account.all.sample)
Listing.create(price_per_day: rand(500..10_000), title: "Black Magic Cam", category: "Cameras", brand: "Black Magic", account: Account.all.sample)
Listing.create(price_per_day: rand(500..10_000), title: "Black Magic Lens", category: "Lenses", brand: "Black Magic", account: Account.all.sample)
Listing.create(price_per_day: rand(500..10_000), title: "Sony Lens", category: "Lenses", brand: "Sony", account: Account.all.sample)
Listing.create(price_per_day: rand(500..10_000), title: "Canon Lens", category: "Lenses", brand: "Canon", account: Account.all.sample)
Listing.create(price_per_day: rand(500..10_000), title: "Zeiss Lens", category: "Lenses", brand: "Zeiss", account: Account.all.sample)
Listing.create(price_per_day: rand(500..10_000), title: "RED Lens", category: "Lenses", brand: "RED", account: Account.all.sample)

