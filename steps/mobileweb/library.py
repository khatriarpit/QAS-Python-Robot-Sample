class library(object):
    def __init__(self):
        self._result = '' '''  '''
            
    def debit(self,currentBalance, amount):
        updatedAmount = (int(currentBalance.split(" ")[1]) - int(amount))
        return "$ " + str(updatedAmount)

    def credit(self,currentBalance, amount):
        updatedAmount = (int(currentBalance.split(" ")[1]) + int(amount))
        return "$ " + str(updatedAmount)