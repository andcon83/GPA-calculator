def f_gpa(f_hash)
  f_total=0
  c_total=0
  f_hash.each do |array|
    if array[0]>96.9
      f_total+=4.33*array[1]
      c_total+=array[1]
    elsif array[0]>92.9
      f_total+=4.0*array[1]
      c_total+=array[1]
    elsif array[0]>89.9
      f_total+=3.67*array[1]
      c_total+=array[1]
    elsif array[0]>86.9
      f_total+=3.33*array[1]
      c_total+=array[1]
    elsif array[0]>82.9
      f_total+=3.0*array[1]
      c_total+=array[1]
    elsif array[0]>79.9
      f_total+=2.67*array[1]
      c_total+=array[1]
    elsif array[0]>76.9
      f_total+=2.33*array[1]
      c_total+=array[1]
    elsif array[0]>72.9
      f_total+=2.0*array[1]
      c_total+=array[1]
    elsif array[0]>69.9
      f_total+=1.67*array[1]
      c_total+=array[1]
    else
      c_total+=array[1]
   end
  end
  f_total/c_total
end


def k_gpa(arr)
  f_total=0
  c_total=0
  arr.each do |array|
    if array[0]>70
      f_total+=(4-(0.1*(100-array[0])))*array[1]
      c_total+=array[1]
    else
      c_total+=array[1]
    end
  end
  f_total/c_total
end

def w_gpa(arr)
  
  f_total=0
  c_total=0
  arr.each do |array|
    if array[0]>96.9
      f_total+=4.33*array[1]+array[2]
      c_total+=array[1]
    elsif array[0]>92.9
      f_total+=4.0*array[1]+array[2]
      c_total+=array[1]
    elsif array[0]>89.9
      f_total+=3.67*array[1]+array[2]
      c_total+=array[1]
    elsif array[0]>86.9
      f_total+=3.33*array[1]+array[2]
      c_total+=array[1]
    elsif array[0]>82.9
      f_total+=3.0*array[1]+array[2]
      c_total+=array[1]
    elsif array[0]>79.9
      f_total+=2.67*array[1]+array[2]
      c_total+=array[1]
    elsif array[0]>76.9
      f_total+=2.33*array[1]+array[2]
      c_total+=array[1]
    elsif array[0]>72.9
      f_total+=2.0*array[1]+array[2]
      c_total+=array[1]
    elsif array[0]>69.9
      f_total+=1.67*array[1]+array[2]
      c_total+=array[1]
    else
      c_total+=array[1]
   end
  end
  puts f_total
  puts c_total
  f_total/c_total
end