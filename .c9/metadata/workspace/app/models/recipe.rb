{"filter":false,"title":"recipe.rb","tooltip":"/app/models/recipe.rb","undoManager":{"stack":[[{"start":{"row":2,"column":55},"end":{"row":2,"column":102},"action":"remove","lines":[":reject_if => lambda { |a| a[:content].blank? }"],"id":6},{"start":{"row":2,"column":55},"end":{"row":2,"column":81},"action":"insert","lines":[", :dependent => :destroy  "]}],[{"start":{"row":2,"column":55},"end":{"row":2,"column":56},"action":"remove","lines":[","],"id":7}],[{"start":{"row":2,"column":55},"end":{"row":2,"column":56},"action":"remove","lines":[" "],"id":8}],[{"start":{"row":2,"column":54},"end":{"row":2,"column":55},"action":"remove","lines":[" "],"id":9}],[{"start":{"row":2,"column":52},"end":{"row":2,"column":53},"action":"remove","lines":[" "],"id":10}],[{"start":{"row":2,"column":52},"end":{"row":2,"column":77},"action":"remove","lines":[",:dependent => :destroy  "],"id":11}],[{"start":{"row":1,"column":31},"end":{"row":1,"column":56},"action":"insert","lines":[",:dependent => :destroy  "],"id":12}],[{"start":{"row":2,"column":52},"end":{"row":2,"column":76},"action":"insert","lines":[", :allow_destroy => true"],"id":13}],[{"start":{"row":2,"column":54},"end":{"row":2,"column":101},"action":"insert","lines":[":reject_if => lambda { |a| a[:content].blank? }"],"id":14}],[{"start":{"row":2,"column":101},"end":{"row":2,"column":102},"action":"insert","lines":[","],"id":15}],[{"start":{"row":2,"column":102},"end":{"row":2,"column":103},"action":"insert","lines":[" "],"id":16}],[{"start":{"row":3,"column":0},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":17}],[{"start":{"row":3,"column":0},"end":{"row":4,"column":0},"action":"insert","lines":["   accepts_nested_attributes_for :recipe_ingredients, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true",""],"id":18}],[{"start":{"row":3,"column":125},"end":{"row":4,"column":0},"action":"remove","lines":["",""],"id":19}],[{"start":{"row":2,"column":3},"end":{"row":2,"column":4},"action":"insert","lines":["#"],"id":20}],[{"start":{"row":3,"column":53},"end":{"row":3,"column":101},"action":"remove","lines":[" :reject_if => lambda { |a| a[:content].blank? }"],"id":21}],[{"start":{"row":3,"column":53},"end":{"row":3,"column":54},"action":"remove","lines":[","],"id":22}]],"mark":16,"position":16},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":53},"end":{"row":4,"column":53},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1432552297000,"hash":"3d89259e3a5d5cc2b9db04ebd12722dea552874e"}