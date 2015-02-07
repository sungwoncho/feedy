require "rails_helper"
require "generator_spec"
require "generators/feedy/install_generator"

describe Feedy::Generators::InstallGenerator, type: :generator do

  destination File.expand_path("../../tmp", __FILE__)
  arguments %w(--user-class=User --current-user-helper=current_user)

  before(:all) do
    prepare_destination
    copy_routes

    run_generator
  end

  after(:all) do
    uninstall_migration
  end

  it "copies migration" do
    expect(Rails.root).to have_structure {
      directory "db" do
        directory "migrate" do
          migration "create_feedy_feedbacks.feedy"
        end
      end
    }
  end

  it 'copies initializer' do
    assert_file 'config/initializers/feedy.rb'
  end

  it 'sets correct values in the initializer' do
    initializer_file = File.read("#{destination_root}/config/initializers/feedy.rb")

    expect(initializer_file).to include %q{Feedy.user_class = "User"}
    expect(initializer_file).to include %q{Feedy.current_user_helper = :current_user}
  end

  it 'mounts the engine' do
    routes_file = File.read("#{destination_root}/config/routes.rb")

    expect(routes_file).to include %q{mount Feedy::Engine, at: "/feedy"}
  end



  def copy_routes
    routes = File.expand_path("../../dummy/config/routes.rb", __FILE__)
    destination = File.join(destination_root, "config")

    FileUtils.mkdir_p(destination)
    FileUtils.cp routes, destination
  end

  def uninstall_migration
    FileUtils.rm_rf Dir["#{Rails.root}/db/migrate/*.feedy.rb"]
  end
end
