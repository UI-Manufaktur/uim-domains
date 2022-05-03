module uim.entities.attributeclasses.strings.languagetags.languagetag;

@safe:
import uim.entities;

// means.reference.language.tag
class DLanguageTagAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("LanguageTagAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("languageTag")
      .registerPath("languagetag");
  }
}
mixin(AttributeClassCalls!("LanguageTagAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}