class Sponsors
  class << self
    def all
      sponsors.values.map { |sponsor| OpenStruct.new(sponsor) }
    end

    def find(identifier)
      OpenStruct.new(sponsors.fetch(identifier))
    end

    def sponsors
      {
        jolly_good_code:
        {
          name: 'Jolly Good Code',
          desc: 'Modern craftsmen specialising in Agile practices and Ruby on Rails.',
          link: 'http://www.jollygoodcode.com/',
          class_name: 'sponsor-jolly-good-code',
        },
        discourse:
        {
          name: 'Discourse',
          desc: 'Discourse is a simple, flat forum, where replies flow down the page in a line.',
          link: 'http://www.discourse.org/',
          class_name: 'sponsor-discourse'
        },
        rubytune:
        {
          name: 'Rubytune',
          desc: 'Tune and troubleshoot rails apps.',
          link: 'https://rubytune.com/',
          class_name: 'sponsor-rubytune'
        },
        ruby_together:
        {
          name: 'Ruby Together',
          desc: 'Ruby Together is dedicated to sustaining and improving the tools
            and infrastructure of the Ruby programming language.',
          link: 'https://rubytogether.org/',
          class_name: 'sponsor-ruby-together'
        },
        bugsnag:
        {
          name: 'Bugsnag',
          desc: "Detect and diagnose crashes in your applications.
            Bugsnag's cross platform error monitoring helps you ship with confidence.",
          link: 'https://bugsnag.com/',
          class_name: 'sponsor-bugsnag'
        }
      }
    end
  end
end
