require 'rails_helper'
require "time"

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
    select 'face_to_face', from: 'Demand'
    select 'remote', from: 'Demand'
    click_on 'Enviar'
    # Assert
    expect(Project.all.count).to equal(1)

  end
end












# project = Project.create({
#     title:'ERP para áre de aviação missionária',
#     description:'Asas de Socorro é uma organização cristã missionária. Entidade sem fins lucrativos- de caráter beneficente, filantrópico, cultural, educativo, religioso, de assistência social e de direitos humanos.Asas de Socorro fornece apoio logístico para programas assistências desenvolvidos em áreas remotas, e ainda desenvolve programas culturais, educacionais e de saúde- especialmente nas regiões mais carentes de transporte e comunicação da Amazônia.\
#     precisamos de um sistema que contemple todas as nossas necessidades em um só sistema, que seja voltado para a nossas regras de negócio que aviação e ações missionárias',
#     skills_descritions:'Pyton, React JS, React Native, AWS, Docker',
#     maximum_Value_hour:'100.0',
#     demand: 0,
#     deadline: Time.parse('Oct 20 2021')

# })  