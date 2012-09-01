require 'mechanize'
require "./lib/define/version"

module Define

  class Word_lookup
    def initialize (word)
      @word     = word
      @full_def = look_up
    end

    def definition
      @full_def
    end

    def type
      matchdata = @full_def.match /^\s+(?<word>#{@word})\s+(?<type>\w+)\s+\d:/
      type = matchdata[:type]
      case type
        when "n" then
          :noun
        when "adv" then
          :adverb
        when "adj" then
          :adjective
        when "v" then
          :verb
      end
    end

    private

    def look_up
      agent = Mechanize.new

      page            = agent.get('http://www.dict.org/bin/Dict')
      dict_form       = page.form('DICT')
      dict_form.Query = @word
      dict_form.field_with(:name => 'Database').options[3].select

      page = agent.submit(dict_form, dict_form.buttons.first)
      page.search("pre")[2].text
    end

  end
end
