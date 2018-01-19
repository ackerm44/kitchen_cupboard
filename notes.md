To-Do:
-  Nested resource   *Come back to this*
  -- pantry/1/item/3
- Consider removing size from item form.
- Consider moving the new field to a nested form on the category show page AND on the items index page

ADD ITEM TO PANTRY FORM
-  User can add items to their pantry and put them in a category (nested form)
  --  Fix nested new item form, strong params

VIEWS
- A Page to show all items per category, add button to add item to shopping list, sort by lowest inventory, then by alphabetical.  Allow user to update inventory count from this page with number drop downs
- A Page to show all categories and number of items in category
- A shopping list page that lists all items and the current inventory count

SHOPPING LIST
- Add shopping list model that links to a user and items so that a user can add items their pantry list to their shopping list



-  Reports - something like inventory less than or equal to 1
-  OAuth


-  DRY, minimal logic in controllers
-  Narrow down routes

ROUTES
User: new, create, edit, update, show, destroy
Pantry:
Item: new, create, edit, update, destroy
Category: index (with items), show (with items), new, create, update  (no edit view - edited at item level)
