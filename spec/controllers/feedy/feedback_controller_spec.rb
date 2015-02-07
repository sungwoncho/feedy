require 'rails_helper'

module Feedy
  RSpec.describe FeedbackController, :type => :controller do

    let!(:feedback_1) { Feedy::Feedback.create() }
    let!(:feedback_2) { Feedy::Feedback.create() }

    describe 'GET index' do

      context 'without params' do
        before(:each) do
          get :index, use_route: :feedy
        end

        it 'assigns all feedbacks to @feedbacks' do
          expect(assigns(:feedbacks)).to match_array [feedback_1, feedback_2]
        end
      end
    end

    describe 'GET show' do
      before(:each) do
        get :show, id: feedback_1, use_route: :feedy
      end

      it 'assigns the requested feedback to @feedback' do
        expect(assigns(:feedback)).to eq feedback_1
      end
    end

    describe 'POST create' do
      before(:each) do
        post :create, format: :js, feedback: attributes_for(:feedback), use_route: :feedy
      end

      it 'creates a feedback' do
        expect {
          post :create, format: :js, feedback: attributes_for(:feedback), use_route: :feedy
        }.to change(Feedy::Feedback, :count).by(1)
      end

      it 'returns 201 status' do
        expect(response.status).to eq 201
      end
    end

    describe 'DELETE destroy' do
      it 'deletes the requested feedback' do
        expect {
          delete :destroy, id: feedback_1, use_route: :feedy
        }.to change(Feedy::Feedback, :count).by(-1)
      end

      it 'returns 204 status' do
        delete :destroy, id: feedback_1, use_route: :feedy
        expect(response.status).to eq 204
      end

    end

  end
end
