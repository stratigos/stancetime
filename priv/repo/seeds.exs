# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Stancetime.Repo.insert!(%Stancetime.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Code.require_file("stance_seed.ex", Path.expand("seed_data", __DIR__))

alias Stancetime.SeedData.StanceSeed

IO.puts "*** Seeding Database ***"

StanceSeed.insert_required_stances()

IO.puts "*** Database Seed Complete ***"
