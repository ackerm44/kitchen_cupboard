To-Do:
-  Nested resource   *Come back to this*
  -- pantry/1/item/3
-  Fix nested new item form, strong params

ADD ITEM TO PANTRY FORM
-  User can add items to their pantry and put them in a category (nested form)
-  Custom writer for the nested form/category
-  Validations
-  Form error display


-  Reports - something like inventory less than or equal to 1
-  OAuth


-  DRY, minimal logic in controllers
-  30 minute coding session
-  Narrow down routes

ROUTES
User: new, create, edit, update, show, destroy
Pantry:
Item: new, create, edit, update, destroy
Category: index (with items), show (with items), new, create, update  (no edit view - edited at item level)
