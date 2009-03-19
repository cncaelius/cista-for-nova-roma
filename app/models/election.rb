class Election < ActiveRecord::Base
	has_one	:ballot
end
