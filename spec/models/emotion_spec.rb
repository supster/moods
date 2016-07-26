require 'rails_helper'

describe Emotion do
	it { respond_to(:description) }
	it { respond_to(:emotion_type_id) }
end