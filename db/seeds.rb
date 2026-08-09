Habit.destroy_all

today = Date.today
beginning_of_month = today.beginning_of_month
end_of_month = today.end_of_month

habits_data = [
  {
    title: "Morning Run",
    description: "Light cardio run in the park to start the day.",
    duration_in_min: 30,
    time: { hour: 7, min: 0 },
    days: [1, 3, 5, 8, 10, 12, 15, 17, 19, 22, 24, 26]
  },
  {
    title: "Read a Book",
    description: "Read at least one chapter of educational literature.",
    duration_in_min: 20,
    time: { hour: 21, min: 30 },
    days: (1..end_of_month.day).to_a
  },
  {
    title: "Meditation",
    description: "Mindfulness practice and deep breathing for stress relief.",
    duration_in_min: 10,
    time: { hour: 6, min: 45 },
    days: [2, 4, 6, 9, 11, 13, 16, 18, 20, 23, 25, 27]
  },
  {
    title: "Ruby on Rails Study",
    description: "Going through documentation and building backend features.",
    duration_in_min: 60,
    time: { hour: 17, min: 0 },
    days: [1, 2, 4, 5, 8, 9, 11, 12, 15, 16, 18, 19, 22, 23, 25, 26]
  },
  {
    title: "Gym Workout",
    description: "Full body strength training with weights.",
    duration_in_min: 75,
    time: { hour: 18, min: 0 },
    days: [2, 4, 9, 11, 16, 18, 23, 25]
  },
  {
    title: "Language Practice",
    description: "Duolingo vocabulary and listening to an English podcast.",
    duration_in_min: 15,
    time: { hour: 12, min: 30 },
    days: [3, 7, 10, 14, 17, 21, 24, 28]
  },
  {
    title: "Evening Stretch",
    description: "Full body stretching before sleep for flexibility and recovery.",
    duration_in_min: 15,
    time: { hour: 22, min: 0 },
    days: [1, 5, 8, 12, 15, 19, 22, 26]
  },
  {
    title: "Plan Next Day",
    description: "Review tasks, set priorities, and prepare calendar for tomorrow.",
    duration_in_min: 10,
    time: { hour: 20, min: 45 },
    days: (1..end_of_month.day).to_a
  }
]

habits_data.each do |data|
  data[:days].each do |day_number|
    next if day_number > end_of_month.day

    scheduled_datetime = Time.zone.local(
      today.year,
      today.month,
      day_number,
      data[:time][:hour],
      data[:time][:min]
    )

    Habit.create!(
      title: data[:title],
      description: data[:description],
      duration_in_min: data[:duration_in_min],
      scheduled_at: scheduled_datetime
    )
  end
end

puts "Successfully seeded habits for #{today.strftime('%B %Y')}!"