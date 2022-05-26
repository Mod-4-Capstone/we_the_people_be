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
        <li><a href="#consumed">Consumed</a></li>
      </ul>
    </li>
    <li><a href="Contributors">Contributors</a></li>
  </ol>
</details>

## About The Project

- In an country that is so divided politically, we attemped to build a platform that would allow people to become more informed about the representatives where they live. Our project strives to push people away from showing up to a voting booth and voting "Red" or "Blue" just because the person running is identified with a certain party. We instead chose to show people who they best align with based on the issues that are important to them.
- Our App takes in client information via a "quiz" and then runs that through our program comparing the information from the API we used to give the user comparible data with the representatives in their area and state. 
- This project mimics a service-oriented architecture where the back-end is responsible for consuming external API's and making the information avaiable by request to users through our front-end. 
- Check out the Front-End at the [We The People FE Repo](https://github.com/Mod-4-Capstone/we-the-people-fe)
- Both repositories are accessible through Heroku: 
  - [Heroku Link - We The People BE](https://we-the-people-be.herokuapp.com/)
  - [Heroku Link - We The People FE]()
- [Turing Project Page](https://mod4.turing.edu/projects/capstone/)
<p align="right">(<a href="#top">back to top</a>)</p>


## Built With:

- Framework: Ruby on Rails
  - Versions
    - Ruby: 2.7.4
    - Rails: 5.2.6
- Database: PostgreSQL
- Gems:
- ```gem 'bootsnap', '>= 1.1.0', require: false
      gem 'figaro'
      gem 'faraday'
      gem 'jsonapi-serializer'
      gem 'rack-cors'
      gem 'sorbet'
      gem 'sorbet-runtime'
      gem 'pry'
      gem 'rspec-rails'
      gem 'simplecov'
      gem 'vcr'
      gem 'webmock'```      
  - Other tech used: 
  - GitHub Actions
  - Sorbet
  - Postman
  - RSpec 
<p align="right">(<a href="#top">back to top</a>)</p>

## API Info:

  ### Consumed:
  - Vote Smart
    - Used to retrieve all the information about the representatives used in this project.
    - Endpoints Used:
      - /zipcode_with_quiz
      Sends representative's quiz results, user's quiz results and comparison for each of the representatives for a given zipcode. 
      - /state_with_quiz
      Sends representative's quiz results, user's quiz results and comparison for each of the representatives for a given state. 
<p align="right">(<a href="#top">back to top</a>)</p>

## Contributors

- [Blake Dempsey](https://github.com/bdempsey864)<br>
- [Conor Barthel](https://github.com/conorbarthel)<br>
- [Michael Brandt](https://github.com/mbrandt00)<br>
<p align="right">(<a href="#top">back to top</a>)</p>
