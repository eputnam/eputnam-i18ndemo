Puppet::Functions.create_function(:happyfuntime) do
  dispatch :happyfuntime do
    param 'String', :value
  end

  def happyfuntime(value)
    s = ''
    s << '--*IT\'S HAPPY FUN TIME*--'
    s << value.to_s.reverse
    s << '--*********************--'
  end
end
