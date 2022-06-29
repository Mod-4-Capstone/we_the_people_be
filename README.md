# README

<div id="top"></div>

# We The People

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#built-with">Built With</a></li>
    <li>
      <a href="#api-info">API Info</a>
      <ul>
        <li><a href="#consumed-endpoints">Consumed Endpoints</a></li>
        <li><a href="#exposed-endpoints">Exposed Endpoints</a></li>
      </ul>
    </li>
    <li><a href="Contributors">Contributors</a></li>
  </ol>
</details>

## About The Project

- In a country that is so divided politically, we attempted to build a platform that would allow people to become more informed about the representatives where they live. Our project strives to push people away from showing up to a voting booth and voting "Red" or "Blue" just because the person running is identified with a certain party. We instead chose to show people who they best align with based on the issues that are important to them.
- Our App takes in client information via a "quiz" and then runs that through our program comparing the information from the API we used to give the user comparable data with the representatives in their area and state. 
- This project mimics a service-oriented architecture where the back-end is responsible for consuming external API's and making the information available by request to users through our front-end. 
- Check out the Front-End repository [We The People FE Repo](https://github.com/Mod-4-Capstone/we-the-people-fe)
- [The Hosted Final Project can be found here](https://wethepeople.surge.sh/)
- The project requirements can be found at the [Turing Project Page](https://mod4.turing.edu/projects/capstone/)
<p align="right">(<a href="#top">back to top</a>)</p>


## Built With:

- Framework: Ruby on Rails (5.2.6)
- Ruby (2.7.4)
- Database: PostgreSQL (14)
- Additional Gems
    - `figaro`
    - `faraday`
    - `jsonapi-serializer`
    - `rack-cors`
    - `sorbet`
    - `sorbet-runtime`
    - `pry`
    - `rspec-rails`
    - `simplecov`
    - `vcr`
    - `webmock`
    - `sorbet`
    - `rspec-rails`
    - `shoulda-matchers`


- Ancilliary tech used:
  - `GitHub Actions` for automated unit/integration testing and deployment to Heroku (CI/CD)
  - `Sorbet` for strict type checking
  - `Postman` for API documentation and internal use with the Front End
  - `RSpec` for model, facade, service, unit, and integration tests
  - `PostgreSQL` for database and querying user comparison to special intrest group's ratings and compatibility with representatives. 
<p align="right">(<a href="#top">back to top</a>)</p>

## API Info:
  ### Consumed Endpoints:
  - [Vote Smart API](https://votesmart.org/share/api#.YqZkMy-B0eY)
    - [Return candidates in a state and zipcode](http://api.votesmart.org/docs/Candidates.html)
    - [Return Special Interest Group Ratings for a given candidate](http://api.votesmart.org/docs/Rating.html)
    - [Return biographical/electoral information for a given candidate](http://api.votesmart.org/docs/CandidateBio.html)
    - [Return social information (twitter/facebook/website) information for a given candidate](http://api.votesmart.org/docs/Address.html)
  ### Exposed Endpoints:
  - [Please see example requests and responses for our two exposed endpoints via Postman. Special Interest Group links are also available here](https://documenter.getpostman.com/view/20039434/Uz5NjtNb). 
  <p align="right">(<a href="#top">back to top</a>)</p>

## How "Compatibility" Works
Our algorithm works by calculating how much a user's score and politician score deviates from one another on a per-issue basis. 

**Disclaimer: It is near impossible to write an unbiased poll question. We recognize this and caution our users to take the results with a grain of salt.**

The front end uses a Likert scale (Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree) to collect a user's preference on broad issues that each correspond to a Special Interest Group's position. 

For instance, the answer solicited by "Abortion should be legalized at the federal level" is compared to how a legislator is rated by Planned Parenthood. The user's input is translated from a Likert scale to 
a number (0, 25, 50, 75, 100). In turn, absolute difference between a candidates rating and a user's preference is computed by issue. 

The full list of these questions and what special interest groups they correspond to are as follows: 

|Question|Special Interest Group|
|---|---|
|Abortion should be legalized at the federal level|[Planned Parenthood](https://www.plannedparenthood.org)|
|Public schools should be better funded|[National Education Association](https://americansforprosperity.org)|
|There should be less restrictions on the process of purchasing a gun|[National Rifle Association](https://home.nra.org)|
|The U.S. government should increase environmental regulations in order to mitigate climate change|[National Parks Conservation](https://www.npca.org)|
|The U.S. government should not raise the federal minimum wage|[Americans for Prosperity](https://americansforprosperity.org)|
|The U.S. government should build a wall along the southern border| [Numbers USA](https://www.numbersusa.com)|
|Transgender athletes should be able to compete on teams that correspond to their gender identity|[ACLU](https://www.aclu.org)|
|The police should not be defunded|[National Association of Police](https://www.napo.org)| Right | 
|Marijuana should be federally legalized|[National Organization for the Reform of Marijuana Laws](https://norml.org)|
|Candidates for office should have a limit on the amount of money they can spend campaigning|[End Citizens United](https://endcitizensunited.org)|

*Note: There was an intention to choose Special Interest Groups that have different leanings to make the quiz less biased. While the questions do not directly correspond with what a special interest group looks for in a candidate, the rating should at least capture a part of the desired heuristic*

As an example, say that VoteSmart returns that a politician is rated 70% by planned_parenthood and a user enters that they "agree" with the statement "Abortion should be legalized at the federal level." Agree corresponds with a score of 75. Thus the user varies from the legislator by 5 points on this issue. 

This would be repeated for all Special Interest Groups *where the candidate has a rating since some of the newer representatives have not been rated yet*. This edge case was addressed and will not throw off the overall compatibility metric. The net difference of opinion is computed on the legislator level, and depending on the endpoint, the user's overall compatibility with a zipcode or state is returned as well.  


To see the full response to the front end, see the postman examples <a href="#exposed-endpoints"> above </a>. 
## Contributors

- [Blake Dempsey](https://github.com/bdempsey864)<br>
- [Conor Barthel](https://github.com/conorbarthel)<br>
- [Michael Brandt](https://github.com/mbrandt00)<br>
<p align="right">(<a href="#top">back to top</a>)</p>
