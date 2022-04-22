module uim.entities.attributeclasses.decimals.decimal;

@safe:
import uim.entities;

class DOOPDecimalAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("OOPDecimalAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["numeric.shaped"])
      .name("decimal")
      .registerPath("decimal");
  }
}
mixin(AttributeClassCalls!"OOPDecimalAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPDecimalAttributeClass);
    testAttributeClass(OOPDecimalAttributeClass);
  }
}