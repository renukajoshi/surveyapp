# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Questions added to table
 Question.create(survey_id:1, types: 'radio_button',question_text:'1.What is your first reaction to the product?',position:1,answer_option:'Very positive\nSomewhat positive\nNeutral\nSomewhat negative\nVery negative',presence:true) 
 Question.create(survey_id:1, types: 'radio_button',question_text:'2.How would you rate the quality of the product?',position:2,answer_option:'Very high qualit\nHigh quality\nNeither high nor low quality\nLow quality\nVery low quality',presence:true)
 Question.create(survey_id:1, types: 'radio_button' ,question_text:'3. How innovative is the product?',position:3,answer_option:'Extremely innovative\nVery innovative\nSomewhat innovative\nNot so innovative\nNot at all innovative',presence:true)
 Question.create(survey_id:1, types: 'checkbox',question_text:'4. How often, if ever, do you currently use other, similar products?',position:4,answer_option:'Extremely often\nVery often\nSomewhat often\nNot so often\nNever',presence:true)
 Question.create(survey_id:1, types: 'radio_button',question_text:'5.If the product were available today, how likely would you be to buy the product?',position:5,answer_option:'Extremely likely\nVery likely\nSomewhat likely\nNot so likely\nNot at all likely',presence:true)
 Question.create(survey_id:1, types: 'radio_button',question_text:'6.When you think about the product, do you think of it as something you need or don’t need?',position:6,answer_option:'Definitely need\nProbably need\nNeutral\nProbably don’t need\nDefinitely don’t need',presence:true)
 Question.create(survey_id:1, types: 'checkbox',question_text:'7. When you’re considering new products in this area, what are the top two things you generally consider?',position:7,answer_option:'Price\nBran\nInnovation\nQuality\nValue\nOther',presence:true)
 Question.create(survey_id:1, types: 'text_area',question_text:'8. In your own words, what are the things that you like most about this new product?',position:8,answer_option:'',presence:true)
 Question.create(survey_id:1, types: 'text_area',question_text:'9. In your own words, what are the things that you would most like to improve in this new product?',position:9,answer_option:'',presence:true)


 # Question.create(survey_id:2,question_text: 'Please select your gender group ?' , types: 'radio_button' , position:1,answer_option: 'Female \n Male')
 # Question.create(survey_id:2,question_text: 'Please select your marital status' , types: 'radio_button' ,position:2,answer_option: 'Single \n Married ')
 # Question.create(survey_id:2,question_text: 'Please select an age group:' , types: 'radio_button' ,position:3,answer_option: '12-18 \n 19-30 \n 31-40 \n 40-49 \n 50-64 \n 65+ ')
 # Question.create(survey_id:2,question_text: 'What type of phone would you like to have ?' , types: 'radio_button' ,answer_option: 'Flip Phone \n Slide Phone \n Tough Phone \n Luxury Fashion Phone \n Smart Phone ')
 # Question.create(survey_id:2,question_text: 'How important is the design or style (Look and Feel) of a mobile phone to you as opposed to functionality ?' , types: 'radio_button' ,answer_option: 'Not Important \n Fairly Important \n Very important \n Extremely important ')
 # Question.create(survey_id:2,question_text: 'What size of the handset would you prefer ?' , types: 'textfield' ,answer_option: '')
 # Question.create(survey_id:2,question_text: 'What size would you prefer your screen to be ? ' , types: 'textfield' ,answer_option: '')
 # Question.create(survey_id:2,question_text: 'How much are you willing to spend on a mobile phone?' , types: 'textfield' ,answer_option: '')
 # Question.create(survey_id:2,question_text: 'How many working mobile or cell phones do you currently have?' , types: 'textfield' ,answer_option: '')
 # Question.create(survey_id:2,question_text: 'In a typical weekday, about how much time, in total, do you spend using your mobile or cell phone?' , types: 'textfield' ,answer_option: '')
 # Question.create(survey_id:2,question_text: 'Which of the following activities do you do on your mobile or cell phone? (Check all that apply)' , types: 'checkbox' ,answer_option: 'Take photos \n Play videos (other than video games) \n Send or receive photos \n Send or receive texts \n Play music \n Purchase products or services \n General internet use (other than using social networking websites) \n Send or receive emails \n Record videos \n Play podcasts \n Send or receive videos \n Send or receive instant messages \n Make or receive phone calls \n Play games \n Use social networking websites ')
 # Question.create(survey_id:2,question_text: 'Please list 3 media names that you use regularly(whether from TV, magazines, newspapers or websites, such as, TV: Pearl channel, Magazine: Businessweek)' , types: 'text_area' ,answer_option: '')
 # Question.create(survey_id:2,question_text: 'In a typical weekday, which of the following activities do you do on your mobile or cell phone most often?' , types: 'textfield' ,answer_option: 'Take photos \n Play videos (other than video games) \n Send or receive photos \n Send or receive texts \n Play music \n Purchase products or services \n General internet use (other than using social networking websites) \n Send or receive emails \n Record videos \n Play podcasts \n Send or receive videos \n Send or receive instant messages \n Make or receive phone calls \n Play games \n Use social networking websites ')
