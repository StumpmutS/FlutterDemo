class Device {
  Device(this.name, this.regulationNumber, this.definition, this.medicalSpecialty, this.medicalSpecialtyDescription);

  final String regulationNumber;
  final String name;
  final String definition;
  final String medicalSpecialty;
  final String medicalSpecialtyDescription;

  Device.fromJson(Map<String, dynamic> json):
        regulationNumber = json['regulation_number'] as String,
        name = json['device_name'] as String,
        definition = json['definition'] as String,
        medicalSpecialty = json['medical_specialty'] as String,
        medicalSpecialtyDescription = json['medical_specialty_description'] as String;
}