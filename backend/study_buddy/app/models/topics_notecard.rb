class TopicsNotecard < ApplicationRecord
  belongs_to :topic
  belongs_to :notecard 
end
