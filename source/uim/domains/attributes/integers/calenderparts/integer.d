module uim.domains.attributes.integers.calenderparts.integer;

@safe:
import uim.domains;

class DIntegerCalendarPart : DIntegerAttribute {
  mixin(AttributeThis!"IntegerCalendarPart");

/* means.calendar
means.calendar.day
 */  override void initialize() {
    super.initialize;

    this
      .name("integerCalendarPart")
      .registerPath("integerCalendarPart");
  }    
}
mixin(AttributeCalls!"IntegerCalendarPart");

version(test_uim_domains) {
  unittest {
    testAttribute(new DIntegerCalendarPart);
    testAttribute(IntegerCalendarPart);
  }
}