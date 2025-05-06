class Session < ApplicationRecord
  TERRAIN_OPTIONS = [
    "Terrain 1",
    "Terrain 2",
    "Terrain 3",
  ]
  enum :terrain, TERRAIN_OPTIONS.each_with_index.to_h
end
