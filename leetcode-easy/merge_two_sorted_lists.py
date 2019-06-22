""" #21 Merge Two Sorted Lists

    Merge two sorted linked lists and return it as a new list. The new list
    should be made by splicing together the nodes of the first two lists.

    input:
        1->2->4, 1->3->4
    output:
        1->1->2->3->4->4

    ---
    0. result (ListNode): initialize with None

    1. loop while both next elements are None
    2. comepare them and append the smaller one, move next
    3. return result
"""

class Solution(object):
    def mergeTwoLists(self, l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """
        result = ListNode(None)
        temp = result

        while l1 != None or l2 != None:

            if l2 == None:
                temp.next = l1
                return result.next
            if l1 == None:
                temp.next = l2
                return result.next

            if l1.val >= l2.val:
                temp.next = l2
                l2 = l2.next

            else:
                temp.next = l1
                l1 = l1.next

            temp = temp.next

        return result.next
