/***********************************************************************************************
*	Copyright: © 2017-2021 UI Manufaktur UG
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
*	Documentation [DE]: https://ui-manufaktur.com/docu/uim-core/overview
************************************************************************************************/
module uim.entities.attributes.dates.date;

@safe:
import uim.entities;

// Attribute class for managing Date values
class DOOPAttributeDate : DOOPAttribute {
  this() { super(); }
  this(DOOPAttributeDate attribute) { super(attribute); this.value(attribute.value); }
  this(Json newValue) { this(); this.value(newValue); }
  this(string newValue) { this(); this.value(newValue); }
  this(Date newValue) { this(); this.value(newValue); }

  // #region value
    Date _value;
    Date value() { return _value; }

    override void value(Json newValue) { 
      this.value(newValue.get!string); }
    unittest {
      version(test_uim_entities) {
        // TODO Add tests
        }}
        
    override void value(string newValue) { 
      this.value(Date.fromISOExtString(newValue)); }
    unittest {
      version(test_uim_entities) {
        // TODO Add tests
        }}

    void value(Date newValue) { 
      _value = newValue; }
    unittest {
      version(test_uim_entities) {
        // TODO Add tests
        }}

      override Json toJson() {
      return Json(value.toISOExtString);    
    }
    unittest {
      version(test_uim_entities) {
        // TODO Add tests
        }}
  // #endregion value

  override string toString() { 
    return value.toISOExtString; }
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeDate() { return new DOOPAttributeDate(); }
auto OOPAttributeDate(Json json) { return new DOOPAttributeDate(json); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}