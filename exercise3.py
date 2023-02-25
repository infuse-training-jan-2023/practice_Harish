class Exercise3:
    def skip_sports(self,sportsList,skip_position):
            sportsListLength = len(sportsList)
            if(sportsListLength==0):
                return "list is empty"
            if(skip_position>=sportsListLength):
                return "skip position greater than list length or equal to list length"
            if(skip_position<=0):
                return "skip position should be greater than zero"
            final_list =[f"{idx}:{obj}" for idx,obj in enumerate(sportsList) if idx >(skip_position-1) ]
            return final_list

exercise3_obj = Exercise3() 
final_list=exercise3_obj.skip_sports(['cricket','TT','Football','Hockey'],2)
