class Spy < ApplicationRecord
  after_create_commit { broadcast_append_to('spies', target: 'spies', partial: 'spies/spy_frame', locals: { agent: self }) }
end
