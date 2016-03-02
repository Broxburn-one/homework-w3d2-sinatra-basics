class Wordformatter

  def initialize
  end

  def to_upcase(word)
    word.upcase
  end

  def to_camelcase(word)
    word.split.map(&:capitalize).join(' ').delete(' ')
  end
end