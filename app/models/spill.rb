class Spill
  include Mongoid::Document

  def to_document 
    {
      :id => self._id,
      :facility_name => self['Facility Name'],
      :chemical => self['Chemical'],
      :zip => self['ZIP'],
      :city => self['City'],
      :state => self['ST']
    }
  end

end
