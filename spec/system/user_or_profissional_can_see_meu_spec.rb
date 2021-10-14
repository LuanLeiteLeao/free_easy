require 'rails_helper'

describe 'user_or_profissional_can_see_meu_spec' do 
  it 'User see menu' do 
  	# act
  	visit root_path

  	# asserts


  	expect(page).to have_content('FreeEasy')
  	expect(page).to have_content('Home')
  	expect(page).to have_content('Cadastrar')
  	expect(page).to have_content('Buscar')
  	expect(page).to have_content('Propostas')

  end	
end
