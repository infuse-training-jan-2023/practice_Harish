from item_repository import ItemRepository
import csv
class ItemActions:
        def __init__(self) -> None:
            self.item_repo = ItemRepository()

        def get_all_items(self):
            try:
                items = self.item_repo.get_all_items()
                res = []
                for item in items:
                    res.append({
                    'id': item[0],
                    'item': item[1],
                    'status': item[2],
                    'reminder': item[3],
                    })
                return res
            except Exception as e:
                print(e)
            return {}
        def add_item(self, item, reminder):
            try:
                item = self.item_repo.add_item(item, reminder)
                return item
            except Exception as e:
                print(e)
            return {}
        
        def delete_item(self,id):
            try:
                delete_item = self.item_repo.delete_item(id)
                return delete_item
            except Exception as e:
                print(e)
            return {}
        def get_item(self,id):
            try:
                getItem = self.item_repo.get_item(id)
                res = []
                for item in getItem:
                    res.append({
                    'id': item[0],
                    'item': item[1],
                    'status': item[2],
                    'reminder': item[3],
                    })
                return res
            except Exception as e:
                print(e)
                return {}
        def update_item(self,id,update_item):
            try:
                update = self.item_repo.update_item(id,update_item)
                return update_item
            except Exception as e:
                print(e)
            return {}
        
        def add_user(self, username,email,phone):
            try:
                user = self.item_repo.add_user(username,email,phone)
                return user
            except Exception as e:
                print(e)
            return {}
        
        def save_data(self):
            try:
                rows=self.item_repo.save_userdata()
                with open("items.csv", "w", newline='') as csv_file:
                    csv_writer = csv.writer(csv_file)
                    csv_writer.writerow([i[0] for i in cursor.description])
                for row in rows:
                    csv_writer.writerow(row)
            except Exception as e:
                return