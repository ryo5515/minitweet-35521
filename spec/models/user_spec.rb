require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録出来るとき' do
      it '全ての情報があれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context '新規登録出来ないとき' do
      it 'account_idが空では登録できない' do
        @user.account_id = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Account can't be blank")
      end
      it 'account_nameが空では登録できない' do
        @user.account_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Account name can't be blank")
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'passwordが6文字以下では登録できない' do
        @user.password = '00000'
        @user.password_confirmation = '00000'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it '重複したemailがある場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end
    end

  end
end
