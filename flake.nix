{
  description = "A collection of templates";

  outputs = { self }: {
    templates = {
      rust = {
        path = ./rust;
        description = "Rust";
        welcomeText = ''
          # A simple Rust/Cargo Template
          Provides access to rust and cargo. Obviously.
        '';
      };
      default = {
        path = ./default;
        description = "Default";
        welcomeText = ''
          # A empty, default template
          ...to modify to your hearts content
        '';
      };
    };
  };
}
