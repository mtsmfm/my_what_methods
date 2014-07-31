describe MyWhatMethods do
  describe '#what?' do
    describe 'with no args' do
      subject { 'string'.what? :string }

      it { is_expected.to match_array %i(intern to_sym) }
    end

    describe 'with one arg' do
      subject { 1.what? 3, 2 }

      it { is_expected.to match_array %i(+ | ^) }
    end
  end
end
