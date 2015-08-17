# angular.module('todoRails.controllers').controller 'todoCtrl', ($scope, $log, Restangular) ->
#   $scope.todos = Restangular.all('tasks').getList().$object
#   $log.log $scope.todos


angular.module('todoRails.controllers').controller 'todoCtrl', [
  '$scope', 'Restangular', '$mdDialog',
  ($scope, Restangular, $mdDialog) ->
    todos = Restangular.all('tasks')

    $scope.saveTodo = (todo) ->
      todo.save()

    $scope.deleteItem = (todo, ev) ->
      confirm = $mdDialog.confirm()
      .parent(angular.element(document.body))
      .title('Вы действительно хотите удалить запись?')
      .ariaLabel('Вы действительно хотите удалить запись')
      .ok('Да')
      .cancel('Отмена')
      .targetEvent(ev)

      $mdDialog.show(confirm).then ->
        todo.archieved = true
        todo.save()
        $scope.reload()

    $scope.reload = ->
      $scope.todos = todos.getList().$object

    $scope.reload()

    $scope.addTodo = ->
      todo =
        title: $scope.todoText
        completed: false
      todos.post todo
      $scope.todoText = ''
      $scope.reload()

    $scope.remaining = ->
      count = 0
      angular.forEach $scope.todos, (todo) ->
        count += if todo.completed || todo.archieved then 0 else 1
      count
    $scope.count = ->
      count = 0
      angular.forEach $scope.todos, (todo) ->
        count += if todo.archieved then 0 else 1
      count
]
