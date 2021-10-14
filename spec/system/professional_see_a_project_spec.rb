require 'rails_helper'

describe 'professional see a project spec' do
  it 'Couldnt find Project with id' do
    visit 'projects/9090'
  end
  it 'can see project' do
    #arrange
    project = Project.create!({
        title:'ERP Para Escola',
        description:'precisamos de um sistema que contemple todas as nossas necessidades em um só sistema',
        skills_descritions:'Pyton, React JS, React Native, AWS, Docker',
        maximum_value_hour:'100.0',
        demand: :face_to_face,
        deadline: Time.parse('Oct 20 2021')
    
    })
    # act
    visit root_path
    click_on('Veja mais')
    
    #asserts
    expect(page).to have_content('ERP Para Escola')
    expect(page).to have_content('precisamos de um sistema que contemple todas as nossas necessidades em um só sistema')
    expect(page).to have_content('Pyton, React JS, React Native, AWS, Docker')
    expect(page).to have_content('R$ 100,00/Hrs')
    expect(page).to have_content('face_to_face')
  end
end
# erro
# sucesso 