class Message < ActiveRecord::Base
    
    # 名前は必須入力かつ20文字以内
    validates :name , length: {  maximum: 20 } , presence: true
    
    # 年齢は必須入力かつ1文字以上3文字以内かつ整数のみ
    validates :age , length: {minimum: 1 , maximum: 3 } , numericality: {only_integer: true, greater_than_or_equal_to: 0} , presence: true
    
    # 内容は必須入力かつ1文字以上30文字以下
    validates :body , length: {minimum: 1 , maximum: 30 } , presence: true
    
end
