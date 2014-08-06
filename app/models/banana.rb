class Banana < ActiveRecord::Base
  def cut
    "cut cut!"
  end

  def slice
    p "slice#{params}"
  end

end
