# angular.module('todoRails.controllers').controller 'todoCtrl', ($scope, $log, Restangular) ->
#   $scope.todos = Restangular.all('tasks').getList().$object
#   $log.log $scope.todos


angular.module('todoRails.controllers').controller 'todoCtrl', [
  '$scope', 'Restangular'
  ($scope, Restangular) ->
    todos = Restangular.all('tasks')

    $scope.reload = ->
      $scope.todos = todos.getList().$object

    $scope.reload()

    $scope.addTodo = ->
      todo =
        task:
          title: $scope.todoText
          completed: false
      todos.post todo
      $scope.todoText = ''
      $scope.reload()

    $scope.remaining = ->
      count = 0
      angular.forEach $scope.todos, (todo) ->
        count += if todo.completed then 0 else 1
      count
]
