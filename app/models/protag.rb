class Protag < ApplicationRecord
  belongs_to :task,optional: true
end
