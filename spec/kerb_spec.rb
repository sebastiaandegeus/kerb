require 'spec_helper'

describe Kerb do
  it 'renders a single line template' do
    erb = 'my <%= @foo %> <%= @bar %>'
    vars = {
      foo: 'lovely',
      bar: 'garden'
    }

    result = Kerb.render(erb, vars)

    expect(result).to eq('my lovely garden')
  end

  it 'renders multiple lines template' do
    erb = "my <%= @foo %> <%= @bar %>\n is <%= @baz %>"
    vars = {
      foo: 'lovely',
      bar: 'garden',
      baz: 'beatiful'
    }

    result = Kerb.render(erb, vars)

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

    result = Kerb.render(erb, vars)

    expect(result).to eq(output)
  end

  it 'renders to a file', fakefs: true do
    erb = 'my <%= @foo %> <%= @bar %>'
    vars = {
      foo: 'lovely',
      bar: 'garden'
    }

    Kerb.render_to_file(erb, vars, 'file')

    expect(File.read('file')).to eq('my lovely garden')
  end

  it 'has a version number' do
    expect(Kerb::VERSION).not_to be nil
  end
end
