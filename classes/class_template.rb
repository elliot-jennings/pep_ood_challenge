class ClassTemplate

  def initialize(message)
    @message = message
  end

  attr_reader :message
  private :message

  # main instance method
  def call
    my_class_helper_methods
  end

  private

  def my_class_helper_methods
    puts message
  end
end
