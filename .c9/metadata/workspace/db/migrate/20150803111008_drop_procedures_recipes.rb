{"filter":false,"title":"20150803111008_drop_procedures_recipes.rb","tooltip":"/db/migrate/20150803111008_drop_procedures_recipes.rb","undoManager":{"mark":1,"position":1,"stack":[[{"start":{"row":1,"column":0},"end":{"row":2,"column":5},"action":"remove","lines":["  def change","  end"],"id":2},{"start":{"row":1,"column":0},"end":{"row":7,"column":5},"action":"insert","lines":["  def up","    drop_table :products","  end","","  def down","    raise ActiveRecord::IrreversibleMigration","  end"]}],[{"start":{"row":2,"column":16},"end":{"row":2,"column":24},"action":"remove","lines":["products"],"id":3},{"start":{"row":2,"column":16},"end":{"row":2,"column":34},"action":"insert","lines":["procedures_recipes"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":0},"end":{"row":4,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1438600279519,"hash":"bf7f9dde6dcb4c9e1b76ff4be1ba383fd7960a1c"}