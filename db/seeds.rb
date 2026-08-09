# db/seeds.rb

Habit.create!([
  {
    title: "Ranný beh",
    description: "Ľahký kardio beh v parku na čerstvom vzduchu pre nastartovanie dňa.",
    duration_in_min: 30,
    scheduled_at: DateTime.now.change(hour: 7, min: 0)
  },
  {
    title: "Čítanie knižky",
    description: "Prečítať aspoň jednu kapitolu z odbornej alebo rozvojovej literatúry.",
    duration_in_min: 20,
    scheduled_at: DateTime.now.change(hour: 21, min: 30)
  },
  {
    title: "Meditácia",
    description: "Cvičenie všímavosti (mindfulness) a hlboké dýchanie na odbúranie stresu.",
    duration_in_min: 10,
    scheduled_at: DateTime.now.change(hour: 6, min: 45)
  },
  {
    title: "Štúdium Ruby on Rails",
    description: "Prechádzanie dokumentácie, písanie kódu a práca na vlastnom backend projekte.",
    duration_in_min: 60,
    scheduled_at: DateTime.now.change(hour: 17, min: 0)
  },
  {
    title: "Silový tréning v posilňovni",
    description: "Tréning celého tela s váhami zameraný na stred tela a chrbát.",
    duration_in_min: 75,
    scheduled_at: DateTime.now.change(hour: 18, min: 0)
  },
  {
    title: "Precvičovanie cudzieho jazyka",
    description: "Slovíčka v Duolingu a počúvanie podcastu v angličtine.",
    duration_in_min: 15,
    scheduled_at: DateTime.now.change(hour: 12, min: 30)
  },
  {
    title: "Večerný stretch & mobilita",
    description: "Strečing celého tela pred spaním na zlepšenie flexibility a regeneráciu.",
    duration_in_min: 15,
    scheduled_at: DateTime.now.change(hour: 22, min: 0)
  },
  {
    title: "Plánovanie nasledujúceho dňa",
    description: "Sumpár úloh, prioritizácia a príprava kalendára na zajtra.",
    duration_in_min: 10,
    scheduled_at: DateTime.now.change(hour: 20, min: 45)
  }
])