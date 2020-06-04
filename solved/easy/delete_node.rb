# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.
def delete_node(node)
  return if node.next.nil?

  node.val = node.next.val unless node.next.nil?
  if node.next.next.nil?
    node.next = nil
  else
    delete_node(node.next)
  end
end
