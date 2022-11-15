module uim.domains.attributes.codes.status;

@safe:
import uim.domains;

class DStatusCodeAttribute : DIntegerStringAttribute {
  mixin(AttributeThis!("StatusCodeAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("statusCode")
      .display("Status Reason")
      .lookups([
        0: "Active",  
        1: "Inactive"
      ])
      .isNullable(true)
      .registerPath("statuscode");
  }
}
mixin(AttributeCalls!("StatusCodeAttribute"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}