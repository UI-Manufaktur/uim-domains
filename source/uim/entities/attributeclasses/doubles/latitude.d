module uim.entities.attributeclasses.doubles.latitude;

@safe:
import uim.entities;

// means.location.latitude
class DOOPLatitudeAttributeClass : DDoubleAttributeClass {
  mixin(AttributeClassThis!("OOPLatitudeAttributeClass"));
}
mixin(AttributeClassCalls!("OOPLatitudeAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
