{
  description = "A collection of templates";

  outputs = { self }: {
    templates = {
      rust = {
        path = ./rust;
        description = "Rust";
      };
    };
  };
}
