# frozen_string_literal: true

class ModalComponent < ApplicationComponent
  def template
    h1 { "Modal" }
    plain "plain text"
    p { "Find me in app/views/components/modal_component.rb" }
  end
end
