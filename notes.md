To-Do:
-  Nested resource   *Come back to this*
  -- pantry/1/item/3


ADD ITEM TO PANTRY FORM
-  User can add items to their pantry and put them in a category (nested form)
  --  Fix nested new item form, strong params
-  Custom writer for the nested form/category
  -- Fix custom writer
-  Form error display


-  Reports - something like inventory less than or equal to 1
-  OAuth


-  DRY, minimal logic in controllers
-  Narrow down routes

ROUTES
User: new, create, edit, update, show, destroy
Pantry:
Item: new, create, edit, update, destroy
Category: index (with items), show (with items), new, create, update  (no edit view - edited at item level)
