#The Firehose Project - Algorithm Problem: Linked List 2

#A LinkedList is a node that has a specific value attached to it (which is sometimes called a payload),
#and a link to another node (or nil if there is no next item).

#Use Mutation Method

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list, previous=nil)     # list 12 -> 99 -> 37 -> nil
  # store current_head value
  current_head = list.next_node
  # change the current nodes next link to previous node (initially nil)
  list.next_node = previous
  # if the current_head does not equal nil, utilize recursive reverse_list
  if current_head
    # set the current node to be the next node until the node value is nil
    reverse_list(current_head, list)
  else
    # return reversed list
    list
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
print_reverse = reverse_list(node3)
print_values(print_reverse)



