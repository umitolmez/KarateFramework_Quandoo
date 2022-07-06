1. Maven - Build and Dependency Management tool
    - Karate: Testing tool to create and implement a test framework that supports Behavioral Driven Development
      with the help of Gherkin language which is easy to be understood by ordinary users, customers etc.
      Gherkin is used in Feature files. Karate uses build in methods. We do not need to extra tool such as Rest Assured Lib.
    - Junit4: Normally a unit test framework but it allows us to create various test methods and write assertions
      in our framework.
2. Plugins in pom.xml:
    - Maven Surefire: This plugin helps us to build and run our test suites/cases via Maven lifecycle. Path of report: KarateFramework_Quandoo/target/surefire-reports/karate-summary.html
    - Maven Cucumber Reporting: This plugin helps us to create fancy reports for our test suites/cases as well.
3. Runners package: We can run specific scenario/suit with tags.
4. Utilities package: Similar to Step Definitions in Cucumber, We can create custom classes.
    - RandomIDGenerator: Generates random ID between 1-12.
5. Parallel Execution: Karate runs scripts parallel as a default.
   
Filtering The Test From The Maven cmd:   
mvn verify -Dcucumber.filter.tags=@yourTagHere

Next Possible Steps For Improvements:
We can generate user IDs so that we can test E2E scenarios for each user. We may connect to DB and validate the results.
