x = Random.rand(0..10)
y = Random.rand(0..10)

print "#{x} + #{y} = "
answer = gets.to_i

start = Time.now

turns = 0
right = 0
wrong = 0

while turn < 10
	turns += 1
	if answer ===  (x + y)
		print "Right!"
		right += 1
	else
		print "Wrong! Try again"
		wrong += 1
	end
end

duration = Time.now - start

score = right / (right + wrong) * 100 
puts "Right answers: #{right}; Wrong answers: #{wrong}; Score: #{score}%"
puts "Total time: #{duration} seconds"


