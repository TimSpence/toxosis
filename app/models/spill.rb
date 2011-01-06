class Spill
  include Mongoid::Document

  def to_document 
    {
      :text =>  self['Facility Name'] + " " + self['Chemical'] + " " + self['ZIP'] + " " + self['City'] + " " + self['ST']
      :id => self._id,
      :facility_name => self['Facility Name'],
      :chemical => self['Chemical'],
      :zip => self['ZIP'],
      :city => self['City'],
      :state => self['ST']
    }
  end

end
