module uim.domains.values.string_;

@safe:
import uim.domains;

class DStringValue : DValue {
  mixin(ValueThis!("StringValue"));  
  
  override void initialize() {
    super.initialize;

    this
      .isString(true);
  }

  mixin(OProperty!("size_t", "maxLength"));

  protected string _value;
  @property string value(){
    if (maxLength > 0 && _value.length > maxLength) {
      return _value[0..maxLength]; }
    else {
      return _value;
    }
  }
  // Set with string value
  O value(this O)(string newValue) {
    set(newValue);
    return cast(O)this;
  }
  version(test_uim_entities) {
    unittest {    
      assert(StringValue.value("test").value == "test");
      assert(StringValue.value("test").value("test2").value == "test2");
  }}

  // Set with Json value
  O value(this O)(Json newValue) {
    set(newValue);
    return cast(O)this;
  }

  // Hooks for setting 
  override protected void set(string newValue) {
    if (newValue is null) { 
      this.isNull(isNullable ? true : false); }
    else {
      this.isNull(false);
    }
    _value = newValue;
  } 

  override protected void set(Json newValue) {
    if (newValue == Json(null)) { 
      _value = null; 
      this.isNull(isNullable ? true : false); }
    else {
      _value = newValue.get!string;
      this.isNull(false);
    }
  }

  O value(this O)(DStringValue newValue) {
    if (newValue) {
      this
        .isNullable(newValue.isNullable)
        .isNull(newValue.isNull)
        .value(newValue.value);
    }
    return cast(O)this;
  }
  version(test_uim_entities) {
    unittest {    
      assert(StringValue("test").value == "test");

      assert(StringValue.value("test") == "test");
      assert(StringValue.value("test") < "xxxx");
      assert(StringValue.value("test") <= "xxxx");
      assert(StringValue.value("test") <= "test");
      assert(StringValue.value("test") > "aaaa");
      assert(StringValue.value("test") >= "aaaa");
      assert(StringValue.value("test") >= "test");    
  }}

  string opCall() { return _value; } 
  O opCall(this O)(string newValue) { 
    _value = newValue;
    return cast(O)this; }
  O opCall(this O)(Json newValue) { 
    if (newValue.type = Json.Type.string) _value = newValue.get!string;
    return cast(O)this; }
  O opCall(this O)(DStringValue newValue) {
    this.value(newValue);
    return cast(O)this; }

  version(test_uim_entities) {
    unittest { 
      auto a = StringValue("avalue");
      auto b = StringValue("bvalue");
      assert(a(b) == "bvalue");
  }}

  bool opEquals(string otherValue) {
    return (_value == otherValue);
  }

  int opCmp(string otherValue) {
    if (_value < otherValue) return -1;
    if (_value == otherValue) return 0;
    return 1;
  }

  version(test_uim_entities) {
    unittest {    
      assert(StringValue("test") == "test");
      assert(StringValue("test") < "xxxx");
      assert(StringValue("test") <= "xxxx");
      assert(StringValue("test") <= "test");
      assert(StringValue("test") > "aaaa");
      assert(StringValue("test") >= "aaaa");
      assert(StringValue("test") >= "test");

      assert(StringValue()("test") == "test");
      assert(StringValue()("test") < "xxxx");
      assert(StringValue()("test") <= "xxxx");
      assert(StringValue()("test") <= "test");
      assert(StringValue()("test") > "aaaa");
      assert(StringValue()("test") >= "aaaa");
      assert(StringValue()("test") >= "test");    
  }}

  override Json toJson() { 
    if (isNull) return Json(null); 
    return Json(_value); }
  
  override string toString() { 
    if (isNull) return null; 
    return _value; }

  override void fromString(string newValue) { 
    this.value(newValue);
  }  
}
mixin(ValueCalls!("StringValue"));  

version(test_uim_entities) {
  unittest {    
    assert(StringValue("test").value == "test");
    assert(StringValue("test2").value != "test");

    assert(StringValue(Json("test")).value == "test");
    assert(StringValue(Json("test2")).value != "test");

    assert(StringValue.value("test").value == "test");
    assert(StringValue.value("test2").value != "test");

    assert(StringValue.value(Json("test")).value == "test");
    assert(StringValue.value(Json("test2")).value != "test");

    assert(StringValue("test").toString == "test");
    assert(StringValue("test2").toString != "test");

    assert(StringValue(Json("test")).toString == "test");
    assert(StringValue(Json("test2")).toString != "test");

    assert(StringValue.value("test").toString == "test");
    assert(StringValue.value("test2").toString != "test");

    assert(StringValue.value(Json("test")).toString == "test");
    assert(StringValue.value(Json("test2")).toString != "test");

    assert(StringValue("test").toJson == Json("test"));
    assert(StringValue("test2").toJson != Json("test"));

    assert(StringValue(Json("test")).toJson == Json("test"));
    assert(StringValue(Json("test2")).toJson != Json("test"));

    assert(StringValue.value("test").toJson == Json("test"));
    assert(StringValue.value("test2").toJson != Json("test"));

    assert(StringValue.value(Json("test")).toJson == Json("test"));
    assert(StringValue.value(Json("test2")).toJson != Json("test"));
}} 