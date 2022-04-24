module uim.entities.attributeclasses.strings.string_;

@safe:
import uim.entities;

class DOOPStringAttributeClass : DOOPCharAttributeClass {
  mixin(AttributeClassThis!"OOPStringAttributeClass");

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["array"])
      .name("string")
      .registerPath("string");
  }
  override DValue value() {
    return StringValue(this); }
}
mixin(AttributeClassCalls!"OOPStringAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPStringAttributeClass);
    testAttributeClass(OOPStringAttributeClass);
  }
}