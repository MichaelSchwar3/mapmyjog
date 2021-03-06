# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Run.destroy_all
Friend.destroy_all
Workout.destroy_all
Comment.destroy_all

users = User.create([
  {email: "Demo@gmail.com", fname: "Demo", lname: "User", password: "Testing123"},
  {email: "Matt@gmail.com", fname: "Matt", lname: "Gershen", password: "Testing123"},
  {email: "Raf@gmail.com", fname: "Raf", lname: "Garcia", password: "Testing123"},
  {email: "Michelle@gmail.com", fname: "Michelle", lname: "Panzironi", password: "Testing123"},
  {email: "Andre@gmail.com", fname: "Andre", lname: "Chow", password: "Testing123"},
  {email: "Demo1@gmail.com", fname: "Demo1", lname: "User", password: "Testing123"},
  {email: "Demo2@gmail.com", fname: "Demo2", lname: "User", password: "Testing123"},
  {email: "Demo3@gmail.com", fname: "Demo3", lname: "User", password: "Testing123"},
  {email: "Demo3@gmail.com", fname: "Demo3", lname: "User", password: "Testing123"},
  {email: "Jean@gmail.com", fname: "Jean", lname: "Ha", password: "Testing123"},
  ])

runs = Run.create([
  {name: "NYC-Midtown", run_map: "ysvwFtsqbMBUfAVhDj@uRpm@_AzC_@nAQd@wBtGcC_BsBsAWQ{AeAiG}D_G{DnSoo@??t@cCFQzBzAmFtPmFxPqFtP{B{A{FuDpFwPbDgKd@sAtEaOfAgDlD_L", location: "New York", distance: 2.915, runner_id: User.first.id},
  {name: "NYC-UWS", run_map: "_|{wFjtobM\\TnGaS}DkC{M{ImJkGqDaCuA{@gCcByG~S??eErM}B{A}B}AyFqD{FyD}B}AzCoJ??tAiEzBzA|FtDeMr`@??Y~@|BzAxFvDbGxDjB}FNLpBbBhBzA^TrE~C", location: "New York", distance: 2.644, runner_id: User.first.id},
  {name: "NYC-LES", run_map: "knpwFt{qbMJi@oDyA@Uf@cCp@cDrB_KrAsGp@gDnFxBp@mDMAaCaA??}Aq@|C_OhKhE`HvCm@zC??s@jDCLPLbAb@d@PpGnCLFNs@BQVLDJFl@RxF{@e@", location: "New York", distance: 1.408, runner_id: User.first.id},
  ])


friends = Friend.create([
  {friender_id: User.second.id, friendee_id: User.first.id, accepted: false},
  {friender_id: User.third.id, friendee_id: User.first.id, accepted: false},
  {friender_id: User.fourth.id, friendee_id: User.first.id, accepted: false},
  {friender_id: User.fifth.id, friendee_id: User.first.id, accepted: false},
  {friender_id: User.last.id, friendee_id: User.first.id, accepted: false},
  {friender_id: User.second.id, friendee_id: User.third.id, accepted: false},
  {friender_id: User.fourth.id, friendee_id: User.third.id, accepted: false},
  {friender_id: User.fifth.id, friendee_id: User.third.id, accepted: false},
  {friender_id: User.last.id, friendee_id: User.third.id, accepted: false},
  ])

workouts = Workout.create([
    {name: "First Jog", description: "Amazing!", user_id: User.first.id, run_id: Run.first.id, distance: Run.first.distance, duration: 3623},
    {name: "Slow Jog", description: "A little slow", user_id: User.first.id, run_id: Run.second.id, distance: Run.second.distance, duration: 1423},
    {name: "Tough Jog", description: "Tough run", user_id: User.first.id, run_id: Run.third.id, distance: Run.third.distance, duration: 2432},
  ])

comments = Comment.create([
    {body: "Way to go!", run_id: Workout.first.id, author_id: User.second.id},
    {body: "Way to go again!", run_id: Workout.first.id, author_id: User.third.id},
    {body: "WHOA!", run_id: Workout.first.id, author_id: User.first.id},
    {body: "Congrats!", run_id: Workout.second.id, author_id: User.first.id},
    {body: "NICE!", run_id: Workout.second.id, author_id: User.first.id},
    {body: "Kudos!", run_id: Workout.third.id, author_id: User.first.id},
  ])
