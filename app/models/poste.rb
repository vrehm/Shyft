class Poste < ActiveRecord::Base
  has_many :shifts, dependent: :destroy
  has_many :abilities, dependent: :destroy
  has_many :organisation_postes, dependent: :destroy
  has_many :shop_postes, dependent: :destroy

  # TBC WITH SAMY:
  # SHIFTS SHOULD NOT HAVE USERS AND POSTES, BUT RATHER ABILITIES WHO ALREADY JOIN AN USER TO A POSTE.
  # THIS WAY THE SHIFT IS DESTROYED WHEN THE ABILITY IS DESTROYED
  # WHICH IS USER SPECIFIC, AND NOT WHEN THE POSTE IS DESTROYED, WHICH IS COMMON TO ALL SHOPS.
end
