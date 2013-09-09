class BruceFactPlugin < Plugin
  # 
@@facts = [

]

  def help(plugin, topic="")
    "brucefact => supply a random Bruce Schneier fact"
  end

  def fact(m, params)
    m.reply @@facts.pick_one
  end
end

plugin = ExcusePlugin.new
plugin.map "excuse"

