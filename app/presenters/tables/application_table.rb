class ApplicationTable
  include ActiveModel::Model

  def to_partial_path
    self.class._to_partial_path
  end

  def self._to_partial_path
    # https://github.com/rails/rails/blob/2003381bbbea8e0436d54111d67e8e118601ae80/activemodel/lib/active_model/conversion.rb#L94
    @_to_partial_path ||= begin
      collection = ActiveSupport::Inflector.tableize(card_type)
      element = ActiveSupport::Inflector.underscore(ActiveSupport::Inflector.demodulize(name))
      "#{collection}/#{element}".freeze
    end
  end

  def self.card_type
    # https://github.com/rails/rails/blob/48b37f127fb44b787ae6c0710982d7949b14454f/activesupport/lib/active_support/inflector/methods.rb#L207
    if i = name.rindex('Table')
      name[i..-1]
    else
      name
    end
  end
end
