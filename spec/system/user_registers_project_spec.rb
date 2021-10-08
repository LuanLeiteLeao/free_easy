require 'rails_helper'
require "time"

# TODO: Trocar depois User pos outro nome
describe 'User Register Project' do
  it 'Successfuly' do
    #Arrange

    # Act    
    visit  new_project_path     
    fill_in 'Título', with:'Preciso hackear o facebook de uma pessoa'
    fill_in 'Descrição', with:'Perdi minha senha do facebook e preciso recuperar minha conta' 
    fill_in 'Descreva as Habilidades Esperadas', with:'Alguém que entende de computadores certamente saberá hackear, de preferência fazendo um curso na área de TI'
    fill_in 'valor máximo (por hora de trabalho)', with:'100.00'
    fill_in 'Data limite', with:'28/10/2021'
    select 'Face to face', from: 'Demand'
    select 'Remote', from: 'Demand'
    click_on 'Enviar'
    # Assert
    expect(Project.count).to equal(1)

  end

  it 'and must fill all fields' do
    #Act
    visit  new_project_path
    click_on 'Enviar'  

     #Assert
     expect(page).to have_content('não pode ficar em branco', count: 6)
     expect(Project.count).to eq(0)

  end
end
