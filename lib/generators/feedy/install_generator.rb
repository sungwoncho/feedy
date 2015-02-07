require "rails/generators"

module Feedy
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      class_option 'user_class', type: :string
      class_option 'current_user_helper', type: :string

      attr_reader :user_class, :current_user_helper

      source_root File.expand_path("../install/templates", __FILE__)
      desc "Copies Feedy migrations and the initializer"

      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end

      def copy_migration_file
        migration_template "migration.rb", "db/migrate/create_feedbacks.rb"
      end

      def determine_user_class
        @user_class = options["user_class"].presence ||
                      ask("What is your user class called? [User]").presence ||
                      "User"
      end

      def determine_current_user_helper
        @current_user_helper = options["current_user_helper"].presence ||
                               ask("What is the current user helper in your application? [current_user]").presence ||
                               'current_user'
      end

      def copy_initializer
        template 'initializer.rb', 'config/initializers/feedy.rb'
      end

      def mount_engine
        route 'mount Feedy::Engine, at: "/feedy"'
      end
    end
  end
end
