# frozen_string_literal: true

module Visible
  extend ActiveSupport::Concern

  included do
    VALID_STATUSES = %w[pub pri archived]

    enum status: VALID_STATUSES

    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def public_count
      pub.count
    end
  end
end
