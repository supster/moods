require 'rails_helper'

describe Mood do
	it { respond_to(:cause) }
	it { respond_to(:cessation) }
end