def dictionary
  sub_hash = {
    'hello' =>'hi',
    'to' => '2',
    'two' =>'2',
    'too'=>'2',
    'for' =>'4',
    'four' =>'4',
    'be' =>'b',
    'you' =>'u',
    'at'=>'@',
    'and' =>'&'
  }
  
end
def word_substituter(string)
    tweet = string.split
    i = 0
    while i < tweet.length
      if dictionary.has_key?(tweet[i].downcase)
        tweet[i] = dictionary[tweet[i].downcase]
      end
      i += 1
    end
 tweet.join(" ")
  end

def bulk_tweet_shortener(array)
  array.each do |x|
    puts word_substituter(x)
  end
end
  
