# ShipHawk

[![Ebert](https://ebertapp.io/github/joaomdmoura/shiphawk-elixir.svg)](https://ebertapp.io/github/joaomdmoura/shiphawk-elixir)
[![Build Status](https://travis-ci.org/joaomdmoura/shiphawk-elixir.svg?branch=master)](https://travis-ci.org/joaomdmoura/shiphawk-elixir)
[![Coverage Status](https://coveralls.io/repos/github/joaomdmoura/shiphawk-elixir/badge.svg?branch=master)](https://coveralls.io/github/joaomdmoura/shiphawk-elixir?branch=master)

This is an abstraction of Shiphawk API to Elixir applications.
It comes with a nice and clean DSL that easily enable projects
to integrate with ShipHawk.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `shiphawk` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:shiphawk, "~> 0.1.0"}
  ]
end
```

Make sure you also add the necessary configuration:

```
config :shiphawk, api_key: "your_api_key"
```

## Supported Endpoints

These are the supported API groups currenlty supported:

- [Rates](#rates)

## Rates

### Getting Rates
  `Shiphawk.Rates.get/3` is used to get shipping rates

#### Parameters
  - `items`: List of Maps, items that are being shipped ([Accepted parameters](https://docs.shiphawk.com/reference#rate-item-object)).
  - `from`: Map with the address where it's being shipped from ([Accepted parameters](https://docs.shiphawk.com/reference#addresses)).
  - `to`: Map with the address where it's being shipped to ([Accepted parameters](https://docs.shiphawk.com/reference#addresses)).

#### Example
```elixir
items = [%{
  package_type: "box",
  item_type: "handling_unit",
  handling_unit_type: "pallet", # Must be "pallet", "carton", "box", "crate", or "bag"
  length: "10",
  width: "10",
  height: "11",
  weight: "10",
  value: 100.00
}]

from = %{ "zip" => "93101"}
to = %{ "zip" => "60060"}

Shiphawk.Rates.get(items, from, to)

# {
#   :ok,
#   %{"rates" => [...]}
#  }
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/shiphawk](https://hexdocs.pm/shiphawk).

