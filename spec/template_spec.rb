require 'spec_helper'

describe Kerb::Template do
  it 'renders a single line template' do
    erb = 'my <%= @foo %> <%= @bar %>'
    vars = {
      foo: 'lovely',
      bar: 'garden'
    }

    template = Kerb::Template.new(erb, vars)
    result = template.render

    expect(result).to eq('my lovely garden')
  end

  it 'renders multiple lines template' do
    erb = "my <%= @foo %> <%= @bar %>\n is <%= @baz %>"
    vars = {
      foo: 'lovely',
      bar: 'garden',
      baz: 'beatiful'
    }

    template = Kerb::Template.new(erb, vars)
    result = template.render

    expect(result).to eq("my lovely garden\n is beatiful")
  end

  it 'renders from a template file' do
    erb = Helper.data('multiline.erb')
    output = Helper.data('multiline')

    vars = {
      foo: 'lovely',
      bar: 'garden',
      baz: 'beatiful'
    }

    template = Kerb::Template.new(erb, vars)
    result = template.render

    expect(result).to eq(output)
  end

  it 'renders to a file', fakefs: true do
    erb = 'my <%= @foo %> <%= @bar %>'
    vars = {
      foo: 'lovely',
      bar: 'garden'
    }

    template = Kerb::Template.new(erb, vars)
    template.render_to_file('garden')

    expect(File.read('garden')).to eq('my lovely garden')
  end
end
