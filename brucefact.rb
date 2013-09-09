class ExcusePlugin < Plugin
  # excuses courtesy of http://www.cs.wisc.edu/~ballard/bofh/
@@excuses = [

]

  def help(plugin, topic="")
    "excuse => supply a random excuse"
  end

  def excuse(m, params)
    m.reply @@excuses.pick_one
  end
end

plugin = ExcusePlugin.new
plugin.map "excuse"

