require 'spec_helper'

# インストール済みチェック
%w{git redpen shellcheck md5sum nodejs npm conventional-changelog}.each do |binary|
  describe command("which #{binary}") do
    let(:disable_sudo) { true }
    its(:exit_status) { should eq 0}
  end
end

