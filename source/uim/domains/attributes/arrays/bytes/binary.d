module  uim.domains.attributes.arrays.bytes.binary;

@safe:
import uim.domains;

class DBinaryAttribute : DAttribute {
  mixin(AttributeThis!("BinaryAttribute"));

  override void initialize() {
    super.initialize;


    /* Inheritance
    any <- byte <- binary
    Traits
    is.dataFormat.byte
    is.dataFormat.array */
    this
      .addDataFormats(["array"])
      .name("binary")
      .registerPath("binary");
  }
}
mixin(AttributeCalls!("BinaryAttribute"));

version(test_uim_domains) {
  unittest {
    testAttribute(new DBinaryAttribute);
    testAttribute(BinaryAttribute);
  }
}