import demo.Person

class BootStrap {

    def init = { servletContext ->

        new Person(firstName: "Jon", lastName: "DeJong", age: "34").save(failOnError: true)
        new Person(firstName: "Jon", lastName: "Anderson", age: "42").save(failOnError: true)
        new Person(firstName: "Lori", lastName: "Anderson", age: "29").save(failOnError: true)
        new Person(firstName: "James", lastName: "Jackson", age: "31").save(failOnError: true)
        new Person(firstName: "Jimmy", lastName: "Eatworld", age: "22").save(failOnError: true)

    }
    def destroy = {
    }
}
