# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


my_orchestra = Orchestra.create(name: "Cabrera's Philharmonic")
chicago = Orchestra.create(name: "Chicago Symphony Orchestra")
not_great = Orchestra.create(name: "Not-So-Great Orchestra")

my_orchestra.instruments.build(
    name: "Trumpet",
    family: "Brass",
    quantity: 4
)

my_orchestra.instruments.build(
    name: "Cello",
    family: "String",
    quantity: 6
)

my_orchestra.instruments.build(
    name: "Viola",
    family: "String",
    quantity: 10
)

my_orchestra.instruments.build(
    name: "Clarinet",
    family: "Woodwind",
    quantity: 2
)

my_orchestra.instruments.build(
    name: "Timpani",
    family: "Percussion",
    quantity: 2
)

chicago.instruments.build(
    name: "Tuba",
    family: "Brass",
    quantity: 1
)

chicago.instruments.build(
    name: "Violin",
    family: "String",
    quantity: 15
)

chicago.instruments.build(
    name: "Flute",
    family: "Woodwind",
    quantity: 3
)

chicago.instruments.build(
    name: "Oboe",
    family: "Woodwind",
    quantity: 4
)

chicago.instruments.build(
    name: "Timpani",
    family: "Percussion",
    quantity: 2
)

not_great.instruments.build(
    name: "Trombone",
    family: "Brass",
    quantity: 1
)

not_great.instruments.build(
    name: "Double Bass",
    family: "String",
    quantity: 1
)

not_great.instruments.build(
    name: "Piccolo",
    family: "Woodwind",
    quantity: 1
)

not_great.instruments.build(
    name: "Bassoon",
    family: "Woodwind",
    quantity: 1
)

not_great.instruments.build(
    name: "Cymbals",
    family: "Percussion",
    quantity: 1
)

my_orchestra.save
chicago.save
not_great.save