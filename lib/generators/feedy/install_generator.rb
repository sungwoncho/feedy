require "rails/generators"

module Feedy
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path("../install/templates", __FILE__)
      desc "Copies Feedy migrations"

      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end

      def copy_migration_file
        migration_template "migration.rb", "db/migrate/create_feedbacks.rb"
      end

    end
  end
end
