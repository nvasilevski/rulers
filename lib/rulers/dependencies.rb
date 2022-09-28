class Object
  def self.const_missing(c)
    return if @calling_const_missing

    @calling_const_missing = true
    require Rulers.to_underscore(c.to_s)
    Object.const_get(c).tap do
      @calling_const_missing = false
    end
  end
end