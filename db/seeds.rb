# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Questions added to table
Question.create(survey_id:3, types: 1,question_text:'1.What is your first reaction to the product?',position:1,answer_option:'Very positive\nSomewhat positive\nNeutral\nSomewhat negative\nVery negative',presence:true)
Question.create(survey_id:3, types: 1,question_text:'2. How would you rate the quality of the product?',position:2,answer_option:'Very high qualit\nHigh quality\nNeither high nor low quality\nLow quality\nVery low quality',presence:true)
Question.create(survey_id:3, types: 1 ,question_text:'3. How innovative is the product?',position:3,answer_option:'Extremely innovative\nVery innovative\nSomewhat innovative\nNot so innovative\nNot at all innovative',presence:true)
Question.create(survey_id:3, types: 2,question_text:'4. How often, if ever, do you currently use other, similar products?',position:4,answer_option:'Extremely often\nVery often\nSomewhat often\nNot so often\nNever',presence:true)
Question.create(survey_id:3, types: 1,question_text:'5.If the product were available today, how likely would you be to buy the product?',position:5,answer_option:'Extremely likely\nVery likely\nSomewhat likely\nNot so likely\nNot at all likely',presence:true)
Question.create(survey_id:3, types: 1,question_text:'6.When you think about the product, do you think of it as something you need or don’t need?',position:6,answer_option:'Definitely need\nProbably need\nNeutral\nProbably don’t need\nDefinitely don’t need',presence:true)
Question.create(survey_id:3, types: 2,question_text:'7. When you’re considering new products in this area, what are the top two things you generally consider?',position:7,answer_option:'Price\nBran\nInnovation\nQuality\nValue\nOther',presence:true)
Question.create(survey_id:3, types: 3,question_text:'8. In your own words, what are the things that you like most about this new product?',position:8,answer_option:'',presence:true)
Question.create(survey_id:3, types: 3 ,question_text:'9. In your own words, what are the things that you would most like to improve in this new product?',position:9,answer_option:'',presence:true)
