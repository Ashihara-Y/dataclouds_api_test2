class WdiFact
  include Mongoid::Document
  field :country_code, type: String
  field :country_name, type: String
  field :series_code, type: String
  field :series_name, type: String
  field :content, type: Array

  embeds_one :wdi_country
  embeds_one :wdi_series

  index({ country_code: 1, series_code: 1 }, { unique: true, name: "c_s_code_index", background: true })

end
