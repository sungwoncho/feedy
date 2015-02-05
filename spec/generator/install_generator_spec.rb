require "rails_helper"
require "generator_spec"
require "generators/feedy/install_generator"

describe Feedy::Generators::InstallGenerator, type: :generator do

  destination File.expand_path("../../tmp", __FILE__)

  before(:all) do
    prepare_destination
    run_generator
  end

  it "creates migration" do
    expect(destination_root).to have_structure {
      directory "db" do
        directory "migrate" do
          migration "create_feedbacks"
        end
      end
    }
  end
end
