#Enric is tightening the budget.. Auch!
To get started with this exercise just:
  - `bundle`
  - `rake db:migrate`
  - `rake db:seed`

The 2 relevant files for this exercise are:
  - `computer.rb`
  - `computer_presenter.rb`

As you may have realized already there is a lot of obnoxious method duplication in both files.
But worry not, because we rubyist know better and can use the power of meta programming, to
thin out our code.   

The project is seeded with data for computers and parts so that you can quickly verify
that your refactor has worked.

While refactoring try using the **Dynamic Methods and Dispatch** approach, as well as,
`method_missing` and try to understand the difference and trade-off of each.

Happy Coding!
