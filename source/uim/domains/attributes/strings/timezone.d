module uim.domains.attributes.strings.timezone;

/* any <- char <- string <- timezone
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.location.timezone */

@safe:
import uim.domains;

class DTimezoneAttribute : DStringAttribute {
  mixin(AttributeThis!("TimezoneAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("timezone")
      .registerPath("timezone");
  }
}
mixin(AttributeCalls!("TimezoneAttribute"));

version(test_uim_domains) {
  unittest {
  }  
}