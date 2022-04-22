module uim.entities.attributeclasses.chars.char_;

@safe:
import uim.entities;

class DOOPCharAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!"OOPCharAttributeClass");

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["character", "big"])
      .name("char")
      .registerPath("char");
  }
}
mixin(AttributeClassCalls!"OOPCharAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPCharAttributeClass);
    testAttributeClass(OOPCharAttributeClass);
  }
}