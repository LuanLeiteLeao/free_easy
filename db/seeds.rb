# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create({
    title:'ERP para áre de aviação missionária',
    description:'Asas de Socorro é uma organização cristã missionária. Entidade sem fins lucrativos- de caráter beneficente, filantrópico, cultural, educativo, religioso, de assistência social e de direitos humanos.Asas de Socorro fornece apoio logístico para programas assistências desenvolvidos em áreas remotas, e ainda desenvolve programas culturais, educacionais e de saúde- especialmente nas regiões mais carentes de transporte e comunicação da Amazônia.\
    precisamos de um sistema que contemple todas as nossas necessidades em um só sistema, que seja voltado para a nossas regras de negócio que aviação e ações missionárias',
    skills_descritions:'Pyton, React JS, React Native, AWS, Docker',
    maximum_Value_hour:'100.0',
    demand: 0,
    deadline: Time.parse('Oct 20 2021')

})  
