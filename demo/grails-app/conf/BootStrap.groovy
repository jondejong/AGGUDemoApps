import demo.Person

class BootStrap {

    def init = { servletContext ->

        new Person(firstName: "Jon", lastName: "DeJong", age: "34").save(failOnError: true)
        new Person(firstName: "Lori", lastName: "Anderson", age: "29").save(failOnError: true)

    }
    def destroy = {
    }
}
