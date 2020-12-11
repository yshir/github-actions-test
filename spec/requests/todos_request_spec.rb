require 'rails_helper'

RSpec.describe "Todos", type: :request do
  let!(:headers) {
    get_default_headers
  }
  let!(:todo) { create(:todo) }

  describe 'GET /todos' do
    it 'returns todos' do
      get "/todos", headers: headers
      expect(response.status).to eq 200
      result = JSON.parse(response.body)
      expect(result['todos'].size).to eq Todo.all.size
    end
  end

  describe 'GET /todos/:id' do
    it 'returns todo' do
      get "/todos/#{todo.id}", headers: headers
      expect(response.status).to eq 200
      result = JSON.parse(response.body)
      expect(result['todo']['id']).to eq todo.id
    end
  end

  describe 'POST /todos' do
    it 'creates a new todo and returns it' do
      post "/todos", params: { title: 'This is a test todo' }.to_json, headers: headers
      expect(response.status).to eq 200
      result = JSON.parse(response.body)
      expect(result['todo']['title']).to eq 'This is a test todo'
    end
  end

  describe 'PUT /todos' do
    it 'updates the todo and returns it' do
      post "/todos/#{todo.id}", params: { title: 'This task was updated' }.to_json, headers: headers
      expect(response.status).to eq 200
      result = JSON.parse(response.body)
      expect(result['todo']['title']).to eq 'This task was updated'
    end
  end
end
