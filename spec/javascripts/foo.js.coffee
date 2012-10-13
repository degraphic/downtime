#=require application

describe "String", ->
  it "it defaults to an empty string", ->
    v = new String()
    expect(v.length).toEqual(0)
