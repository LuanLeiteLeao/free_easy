require 'rails_helper'

describe 'User Register Project' do
  it 'Successfuly' do
    Project.create({
        title:'ERP para áre de aviação missionária',
        description:'Asas de Socorro é uma organização cristã missionária. Entidade sem fins lucrativos- de caráter beneficente, filantrópico, cultural, educativo, religioso, de assistência social e de direitos humanos.Asas de Socorro fornece apoio logístico para programas assistências desenvolvidos em áreas remotas, e ainda desenvolve programas culturais, educacionais e de saúde- especialmente nas regiões mais carentes de transporte e comunicação da Amazônia.\
        precisamos de um sistema que contemple todas as nossas necessidades em um só sistema, que seja voltado para a nossas regras de negócio que aviação e ações missionárias',
        skills_descritions:'Pyton, React JS, React Native, AWS, Docker',
        maximum_Value_hour:'100.0',
        demand:'face_to_face'

    })  
  end
end