module uim.domains.registries.attribute;

@safe:
import uim.domains;

/* class DOOPAttributeRegistry {
  this() {}

  protected DOOPAttribute[string] _attributes;
  DOOPAttribute entry(string path) {
    return _attributes.get(path, null); }
  version(test_uim_domains) {
    unittest {
      // TODO 
      }}

  DOOPAttribute opIndex(string path) {
    return _attributes.get(path, null); }
  version(test_uim_domains) {
    unittest {
      // TODO 
      }}
  
  O register(this O)(string name, DOOPAttribute newAttribute) {
    _attributes[name] = newAttribute;
    return cast(O)this;
  }

  O register(this O)(DOOPAttribute newAttribute, string name) {
    _attributes[name] = newAttribute;
    return cast(O)this; }

  string[] paths() {
    return _attributes.byKey.array; }

  DOOPAttribute remove(string path) { 
    auto selectedEntry = this.entry(path);
    if (selectedEntry) _attributes.remove(path);
    return selectedEntry; 
  }
  version(test_uim_domains) {
    unittest {
      // TODO 
      }}
} */
// auto OOPRegistry() { return new DOOPRegistry; }