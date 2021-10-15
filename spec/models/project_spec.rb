require 'rails_helper'

describe Project do 
  context 'validation' do 
    let(:project){subject}
    
    it 'title must be pressent' do
      project.valid?
      expect(
        project.errors.full_messages_for(:title)
        ).to include('Título não pode ficar em branco') 
    end

    it 'description must be pressent' do
      project.valid?
      expect(
        project.errors.full_messages_for(:description)
        ).to include('Descrição não pode ficar em branco')
    end

    it 'skills descritions must be pressent' do
      project.valid?
       expect(
       project.errors.full_messages_for(:skills_descritions)
       ).to include('Descreva suas Habilidades não pode ficar em branco')
    end

    it 'maximum value hour  must be pressent' do
      project.valid?
      expect(
      project.errors.full_messages_for(:maximum_value_hour)
      ).to include('Valor máximo (por hora de trabalho) não pode ficar em branco não pode ficar em branco')
    end

    it 'deadline  must be pressent' do
      project.valid?    
      expect(
      project.errors.full_messages_for(:deadline)
      ).to include('Data limite não pode ficar em branco')
    end

    it 'maximum value hour must be greater than or equal to 0' do
      p = Project.new({maximum_value_hour:-1}) 
      p.valid?
      expect(
      p.errors.full_messages_for(:maximum_value_hour)
      ).to include('Valor máximo (por hora de trabalho) não pode ficar em branco deve ser maior ou igual a 0')
    end

  end
end





