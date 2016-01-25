Queue = {list = {}}


function Queue:new()
  local obj = { list = self.list }
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function Queue:add(item)
  self.list[#self.list + 1] = item
end

function Queue:remove()
  local new_list = {}
  local to_remove = self.list[1]
  for i=2, (#self.list - 1) do
    new_list[i-1] = self.list[i]
  end
  self.list = new_list
  return to_remove
end

q = Queue:new()
q:add("yup")
print(q:remove())
