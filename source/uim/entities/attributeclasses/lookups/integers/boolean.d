module uim.entities.attributeclasses.lookups.integers.boolean;

@safe:
import uim.entities;

class DIntegerBooleanAttributeClass : DLookupAttributeClass {
  mixin(AttributeClassThis!("IntegerBooleanAttributeClass"));

  mixin(OProperty!("bool[int]", "lookups"));  
  O addLookup(this O)(int key, string value) {
    _lookups[key] = value;
    return cast(O)this;
  }

  override void initialize() {
    super.initialize;
    // means.measurement.lookup

    this
      .name("lookup")
      .dataFormats(["lookup", "integer", "string"])
      .registerPath("lookup");
  }

  bool hasLookupKey(int key) {
    return (key in _lookups ? true : false); 
  }
  bool hasLookupValue(bool lookupValue) {
    foreach(k, v; _lookups) { if (v == lookupValue) return true; }
    return false; 
  }  

  override DValue createValue() {
    return IntegerBooleanValue(this).isNullable(isNullable); }  
}
mixin(AttributeClassCalls!("IntegerBooleanAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}