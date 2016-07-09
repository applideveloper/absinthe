defmodule Absinthe.Blueprint.Document.Field do

  alias Absinthe.{Blueprint, Phase, Type}

  @enforce_keys [:name]
  defstruct [
    :name,
    alias: nil,
    fields: [],
    arguments: [],
    directives: [],
    errors: [],
    source_location: nil,
    schema_type: nil,
    type_condition: nil,
  ]

  @type t :: %__MODULE__{
    name: String.t,
    fields: [t],
    arguments: [Blueprint.Input.Argument.t],
    directives: [Blueprint.Directive.t],
    errors: [Phase.Error.t],
    source_location: nil | Blueprint.Document.SourceLocation.t,
    schema_type: Type.t,
    type_condition: Blueprint.TypeReference.Name.t,
  }

end