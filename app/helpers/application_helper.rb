module ApplicationHelper
	 def render_answer_form_helper(question, form, index)
     	partial = question.types.to_s.downcase
     	render partial: "answer/#{partial}", locals: { f: form, answer: question , index: index }
   	end

   	def checkbox_checked?(answer, option)
      answers_delimiter = '0'
      answers = answer.answer_option.to_s.split(answers_delimiter)
      answers.include?(option)
    end
end
