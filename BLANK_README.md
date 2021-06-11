<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
***
***
***
*** To avoid retyping too much info. Do a search and replace for the following:
*** github_username, repo_name, twitter_handle, email, project_title, project_description
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/pttljessy/dbt-shiba-ecommerce">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">shiba-ecommerce</h3>

  <p align="center">
    This is my fictional project that I created for my purpose of learning dbt (data build tool). The dataset I took is from Kaggle - the Brazilian E-Commerce Public Dataset by Olist.
    <br />
    <a href="https://github.com/pttljessy/dbt-shiba-ecommerce"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/pttljessy/dbt-shiba-ecommerce">View Demo</a>
    ·
    <a href="https://github.com/pttljessy/dbt-shiba-ecommerce/issues">Report Bug</a>
    ·
    <a href="https://github.com/pttljessy/dbt-shiba-ecommerce/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

### Built With

* [DBT](https://www.getdbt.com/)
* [BigQuery](https://cloud.google.com/bigquery)
* [Kaggle](https://www.kaggle.com/)



<!-- GETTING STARTED -->
## Getting Started

Before downloading this project for use, there are 3 prerequisites that we need to set up: Create a dataset, Install DBT, and Create a BigQuery project.
### Prerequisites
#### Create a dataset
You can create a dummy dataset on your own for the purpose of learning dbt, or you can find a public dataset. I got my dataset from Kaggle - the world's largest data science community with powerful tools and resources. The dataset I took is [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/olistbr/brazilian-ecommerce). This is real commercial data, but it has been anonymised. Hence I think it would be relevant to practice to work on such a real dataset to familiarize myself with the data complexity and volume.

All you need to do is to create a Kaggle account (free) and download the dataset.

#### Install DBT
There are 3 ways to install dbt. One of it is to install via homebrew (recommended for MacOS).

[Homebrew](https://brew.sh/)
What is Homebrew? Homebrew is an open-source software package manager that makes it easier to install software on macOS. It’s like AppStore for installation.

To install dbt, follow these 2 steps:
1. Install homebrew. Then run:

`brew update`
`brew install git`
`brew tap fishtown-analytics/dbt`

2. Test your installation with dbt --version.
Take note: The most time consuming part is brew update, and sometimes when you runbrew update it seems that it just stopped there, but it is actually running behind the scenes. So please do not cancel brew update or close your laptop; otherwise it might take longer!

#### Create a BigQuery project

[Google Cloud BigQuery](https://cloud.google.com/bigquery) is one of Google Cloud Platform (GCP) services. If you have a Gmail account, you can create a BigQuery account by signing in with your google account.

Once you signed in your BigQuery account, please follow these steps to create a BigQuery project:
1. Go to the [BigQuery Console](https://console.cloud.google.com/bigquery)
2. Create a new project
3. Head back to the the BigQuery Console, and ensure your new project is selected. 

Take note: Please take note of your project location because later on you will need to put it into your dbt `profiles.yml` config file.

For data pre-processing steps, please refer to [my github wiki docs] 

### Installation



<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to my article on [Medium](https://pttljessy.medium.com/a-beginners-guide-to-dbt-data-build-tool-part-2-setup-guide-and-tips-180b1e6eb168)_



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/pttljessy/dbt-shiba-ecommerce/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Your Name - [@pttljessy_le](https://twitter.com/pttljessy_le) - itsjessicale88@gmail.com

Project Link: [https://github.com/pttljessy/dbt-shiba-ecommerce](https://github.com/pttljessy/dbt-shiba-ecommerce)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* []()
* []()
* []()





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[linkedin-shield]: https://img.shields.io/badge/-medium-white.svg?style=for-the-badge&logo=medium&colorB=000000
[linkedin-url]: https://pttljessy.medium.com/
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/pttljessy
