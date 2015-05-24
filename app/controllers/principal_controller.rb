class PrincipalController < ApplicationController
	skip_before_filter :autorizar

end
