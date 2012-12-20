describe "foo", ->
  it "shouldn't bar", ->
    expect("foo").toEqual("bar")

  it "should bar", ->
    expect("bar").toEqual("bar")
