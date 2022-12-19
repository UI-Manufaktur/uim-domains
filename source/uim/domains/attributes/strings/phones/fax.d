module uim.domains.attributes.strings.phones.fax;

/* any <- char <- string <- phoneFax
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.service.phone.fax */

@safe:
import uim.domains;

class DFaxAttribute : DStringAttribute {
  mixin(AttributeThis!("FaxAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("fax")
      .registerPath("fax");
  }
}
mixin(AttributeCalls!("FaxAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}