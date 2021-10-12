require 'rails_helper'

describe 'Professional visit home page' do
  it 'and view projects' do
    #arrange
    Project.create!({
        title:'ERP Para Escola',
        description:'precisamos de um sistema que contemple todas as nossas necessidades em um só sistema',
        skills_descritions:'Pyton, React JS, React Native, AWS, Docker',
        maximum_Value_hour:'100.0',
        demand: :face_to_face,
        deadline: Time.parse('Oct 20 2021')
    
    })

    #act
    visit root_path

    #asserts
    expect(page).to have_content('ERP Para Escola')
    expect(page).to have_content('precisamos de um sistema que contemple todas as nossas necessidades em um só sistema')
    expect(page).to have_content('Pyton, React JS, React Native, AWS, Docker')
    expect(page).to have_content('R$ 100,00/Hrs')
    expect(page).to have_content('face_to_face')

  end
end