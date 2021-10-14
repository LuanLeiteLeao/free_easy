require 'rails_helper'

describe Project do 
  context 'validation' do 
    it 'title must be pressent' do
      project = Project.new
      project.valid?

      expect(
        project.errors.full_messages_for(:title)
        ).to include('Título não pode ficar em branco')

       expect(
        project.errors.full_messages_for(:description)
        ).to include('Descrição não pode ficar em branco')

        expect(
        project.errors.full_messages_for(:skills_descritions)
        ).to include('Descreva suas Habilidades não pode ficar em branco')

        expect(
        project.errors.full_messages_for(:maximum_value_hour)
        ).to include('Valor máximo (por hora de trabalho) não pode ficar em branco não pode ficar em branco')

        expect(
        project.errors.full_messages_for(:deadline)
        ).to include('Data limite não pode ficar em branco') 
    end
  end
end