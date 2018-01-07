defmodule Chapter2.Maps.Person do
  defstruct(
    name: "",
    age: 0,
    city: "",
    occupation: "",
    sport: "",
    food: "",
    place: "",
    created: DateTime.utc_now(),
    updated: DateTime.utc_now()
  )
end
