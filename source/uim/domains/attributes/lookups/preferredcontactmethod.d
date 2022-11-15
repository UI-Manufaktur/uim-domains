module uim.domains.attributes.lookups.preferredcontactmethod;

@safe:
import uim.domains;

class DPreferredContactMethodAttribute : DAttribute {
  mixin(AttributeThis!("PreferredContactMethodAttribute"));

  override void initialize() {
    super.initialize;
    // means.measurement.preferredcontactmethod

    this
      .name("preferredcontactmethod")
      .dataFormats(["preferredcontactmethod"])
      .registerPath("preferredcontactmethod");
  }

/*   override DValue createValue() {
    return PreferredContactMethodValue(this); } */
}
mixin(AttributeCalls!("PreferredContactMethodAttribute"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}