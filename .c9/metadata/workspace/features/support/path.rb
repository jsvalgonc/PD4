{"filter":false,"title":"path.rb","tooltip":"/features/support/path.rb","undoManager":{"mark":0,"position":0,"stack":[[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":0},"end":{"row":0,"column":24}},"text":"module NavigationHelpers"},{"action":"insertText","range":{"start":{"row":0,"column":24},"end":{"row":1,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":1,"column":0},"end":{"row":19,"column":0}},"lines":["  def path_to(page_name)","    case page_name"," ","    when /the home\\s?page/","      '/'","    else","      begin","        page_name =~ /the (.*) page/","        path_components = $1.split(/\\s+/)","        self.send(path_components.push('path').join('_').to_sym)","      rescue Object => e","        raise \"Can't find mapping from \\\"#{page_name}\\\" to a path.\\n\" +","          \"Now, go and add a mapping in #{__FILE__}\"","      end","    end","  end","end",""]},{"action":"insertText","range":{"start":{"row":19,"column":0},"end":{"row":19,"column":24}},"text":"World(NavigationHelpers)"}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":9,"column":41},"end":{"row":9,"column":41},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1410961165051,"hash":"f3faa1e0691bfd3a90170ad6c41e8d45a49863be"}