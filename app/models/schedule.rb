# -*- coding: utf-8 -*-
class Schedule < FileBaseModel

  def self.filename
    'schedule_2012.yml'
  end

  def self.anog
    self.new organization:"ANOG (AKITA Network Operators' Group)", organization_tmplate:'anog'
  end

  def self.fandroid_akita
    self.new organization:"FEJ秋田", organization_tmplate:'fandroid_akita'
  end

  attr_accessor :start, :end, :title, :kind, :abstract_template, :abstract, :organization_tmplate, :organization

  def has_link?
    self.abstract || self.abstract_template
  end

  alias :id :start

end
