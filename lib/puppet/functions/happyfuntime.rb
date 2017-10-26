Puppet::Functions.create_function(:happyfuntime) do
  dispatch :happyfuntime do
    param 'String', :value
  end

  def happyfuntime(value)
    s = ''
    fun = _("IT'S HAPPY FUN TIME")
    s << "--*#{fun}*--\n"
    s << "#{value.to_s.reverse}\n"
    s << "--*#{fun}*--\n"
  end
end
