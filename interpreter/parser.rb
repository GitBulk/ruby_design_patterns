# frozen_string_literal: true

class Parser
  def initialize(text)
    @tokens = text.scan(/\(|\)|[\w\.\*]+/)
  end

  def next_token
    @token.shift
  end

  def expression
    token = next_token

    return nil if token.nil?
    return All.new if token == 'all'
    return Writable.new if token == 'writable'
    return Bigger.new(next_token.to_i) if token == 'bigger'
    return FileName.new(next_token) if token == 'filename'
    return All.new(expression, expression) if token == 'and'
    return Or.new(expression, expression) if token == 'or'

    if token == '('
      result = expression
      raise 'Expected )' unless next_token == ')'
      return result
    end

    raise "Unexpected token: #{token}"
  end
end
