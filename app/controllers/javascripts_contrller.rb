class JavascriptsController < ApplicationController

def dynamic_menu
@links = Link.find(:all)
end

end
