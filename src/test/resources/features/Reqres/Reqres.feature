Feature: Features to test Reqres

  @latihan
  Scenario Outline: Get list user with valid parameter page
    Given Get list user with parameter page <page>
    When Send request get list user
    Then Should return 200 OK
    And Response body page should be <page>
    And Get list user json schema validator
    Examples:
    |page|
    |2   |
#    |2   |

  @tugas
  Scenario: Get list user with valid parameter page
    Given Get list user with parameter page
    When Send request get list users
    Then Should return 200 OK


#  @tugas
#  Scenario Outline: Get list user with invalid parameter page
#    Given Get list user with parameter page "<page>"
#    When Send request get list user
#    Then Should return 404 Not found
#    Examples:
#      |page|
#      |xyz   |
#      |abc   |

#  @tugas
#  Scenario: Post create new user with valid json
#    Given Post create new user
#    When Send request post create new user
#    Then Should return 201 created
#    And Response body should contain name "Wisnu Munawar" and job "QA Engineer"
#    And Post create new user json schema validator
#
#  @latihan
#  Scenario Outline: Put update user with valid json
#    Given Put update user with id <id>
#    When Send request put update user
#    Then Should return 200 OK
#    And Response body should contain name "Wisnu Edit" and job "QA Edit"
#    And Put update user json schema validator
#    Examples:
#    |id|
#    |1 |
#    |2 |
#
#  @tugas
#  Scenario Outline: Delete user with valid id
#    Given Delete user with valid id <id>
#    When Send request delete user
#    Then Should return 204 No Content
#    Examples:
#    |id|
#    |1 |
#    |2 |