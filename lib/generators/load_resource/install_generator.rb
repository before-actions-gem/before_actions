module LoadResource
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def generate_template
        copy_file "controller.rb", "lib/templates/rails/scaffold_controller/controller.rb"
      end
    end
  end
end