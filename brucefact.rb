class BruceFactPlugin < Plugin
  # 
@@facts = [
"Fact1",
"Fact2"
]

  def help(plugin, topic="")
    "brucefact => supply a random Bruce Schneier fact"
  end

  def brucefact(m, params)
  m.reply @@facts.pick_one
  end
end

plugin = BruceFactPlugin.new
plugin.map "brucefact"

