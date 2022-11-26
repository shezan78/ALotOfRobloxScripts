local A_1 = "donate to the tree foundation 🎄"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
while true do
wait(5.0)
Event:FireServer(A_1, A_2)
end