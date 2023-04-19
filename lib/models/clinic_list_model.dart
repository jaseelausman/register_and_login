// To parse this JSON data, do
//
//     final clinicListModel = clinicListModelFromJson(jsonString);

import 'dart:convert';

List<ClinicListModel> clinicListModelFromJson(String str) => List<ClinicListModel>.from(json.decode(str).map((x) => ClinicListModel.fromJson(x)));

String clinicListModelToJson(List<ClinicListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ClinicListModel {
    ClinicListModel({
        required this.id,
        required this.clinicName,
        required this.clinicLocation,
        required this.clinicAddress,
        required this.registerNo,
        required this.aboutClinic,
        this.clinicService,
        required this.workingTime,
        required this.ownerId,
        required this.pincode,
        required this.appointmentType,
        required this.category,
        required this.statusId,
        required this.registrationFee,
        this.registrationValidity,
        required this.consultationFee,
        this.consultationValidity,
        required this.pageCount,
        required this.emailId,
        required this.neededInPatientApp,
        required this.mobile,
        required this.bankAccountNo,
        required this.ifscCode,
        required this.bankBranch,
        required this.bankName,
        this.logo,
        this.startingRegNo,
        required this.gstNumber,
        this.ownerName,
        this.doctorField,
        this.docRegNo,
        this.qualification,
        this.type,
        this.jobDescription,
        this.tag,
        this.doctorId,
        this.departmentId,
        this.schemeStatus,
        this.expairyDate,
        required this.peadiatric,
        this.facilityType,
        required this.consultationMode,
        required this.clinicprescriptionStatus,
        this.schemeName,
        this.schemeId,
        this.discountApplying,
        required this.eyeClinic,
        this.dictrict,
        this.thaluk,
        this.bookingPhoneNumber,
        this.fontSize,
        this.doctor,
    });

    int id;
    String clinicName;
    String clinicLocation;
    String clinicAddress;
    String registerNo;
    String aboutClinic;
    dynamic clinicService;
    String workingTime;
    int ownerId;
    String pincode;
    int appointmentType;
    String category;
    int statusId;
    double registrationFee;
    dynamic registrationValidity;
    double consultationFee;
    dynamic consultationValidity;
    int pageCount;
    String emailId;
    bool neededInPatientApp;
    String mobile;
    String bankAccountNo;
    String ifscCode;
    String bankBranch;
    String bankName;
    dynamic logo;
    dynamic startingRegNo;
    dynamic gstNumber;
    dynamic ownerName;
    dynamic doctorField;
    dynamic docRegNo;
    dynamic qualification;
    dynamic type;
    dynamic jobDescription;
    String? tag;
    dynamic doctorId;
    dynamic departmentId;
    dynamic schemeStatus;
    dynamic expairyDate;
    bool peadiatric;
    int? facilityType;
    int consultationMode;
    String clinicprescriptionStatus;
    dynamic schemeName;
    dynamic schemeId;
    int? discountApplying;
    bool eyeClinic;
    dynamic dictrict;
    dynamic thaluk;
    dynamic bookingPhoneNumber;
    dynamic fontSize;
    dynamic doctor;

    factory ClinicListModel.fromJson(Map<String, dynamic> json) => ClinicListModel(
        id: json["id"],
        clinicName: json["clinicName"],
        clinicLocation: json["clinicLocation"],
        clinicAddress: json["clinicAddress"],
        registerNo: json["registerNo"],
        aboutClinic: json["aboutClinic"],
        clinicService: json["clinicService"],
        workingTime: json["workingTime"],
        ownerId: json["ownerId"],
        pincode: json["pincode"],
        appointmentType: json["appointmentType"],
        category: json["category"],
        statusId: json["statusId"],
        registrationFee: json["registrationFee"],
        registrationValidity: json["registrationValidity"],
        consultationFee: json["consultationFee"],
        consultationValidity: json["consultationValidity"],
        pageCount: json["pageCount"],
        emailId: json["emailId"],
        neededInPatientApp: json["neededInPatientApp"],
        mobile: json["mobile"],
        bankAccountNo: json["bankAccountNo"],
        ifscCode: json["ifscCode"],
        bankBranch: json["bankBranch"],
        bankName: json["bankName"],
        logo: json["logo"],
        startingRegNo: json["startingRegNo"],
        gstNumber: json["gstNumber"],
        ownerName: json["ownerName"],
        doctorField: json["doctorField"],
        docRegNo: json["docRegNo"],
        qualification: json["qualification"],
        type: json["type"],
        jobDescription: json["jobDescription"],
        tag: json["tag"],
        doctorId: json["doctorId"],
        departmentId: json["departmentId"],
        schemeStatus: json["schemeStatus"],
        expairyDate: json["expairyDate"],
        peadiatric: json["peadiatric"],
        facilityType: json["facilityType"],
        consultationMode: json["consultationMode"],
        clinicprescriptionStatus: json["clinicprescriptionStatus"],
        schemeName: json["schemeName"],
        schemeId: json["schemeId"],
        discountApplying: json["discountApplying"],
        eyeClinic: json["eyeClinic"],
        dictrict: json["dictrict"],
        thaluk: json["thaluk"],
        bookingPhoneNumber: json["bookingPhoneNumber"],
        fontSize: json["fontSize"],
        doctor: json["doctor"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "clinicName": clinicName,
        "clinicLocation": clinicLocation,
        "clinicAddress": clinicAddress,
        "registerNo": registerNo,
        "aboutClinic": aboutClinic,
        "clinicService": clinicService,
        "workingTime": workingTime,
        "ownerId": ownerId,
        "pincode": pincode,
        "appointmentType": appointmentType,
        "category": category,
        "statusId": statusId,
        "registrationFee": registrationFee,
        "registrationValidity": registrationValidity,
        "consultationFee": consultationFee,
        "consultationValidity": consultationValidity,
        "pageCount": pageCount,
        "emailId": emailId,
        "neededInPatientApp": neededInPatientApp,
        "mobile": mobile,
        "bankAccountNo": bankAccountNo,
        "ifscCode": ifscCode,
        "bankBranch": bankBranch,
        "bankName": bankName,
        "logo": logo,
        "startingRegNo": startingRegNo,
        "gstNumber": gstNumberValues.reverse[gstNumber],
        "ownerName": ownerName,
        "doctorField": doctorField,
        "docRegNo": docRegNo,
        "qualification": qualification,
        "type": type,
        "jobDescription": jobDescription,
        "tag": tag,
        "doctorId": doctorId,
        "departmentId": departmentId,
        "schemeStatus": schemeStatus,
        "expairyDate": expairyDate,
        "peadiatric": peadiatric,
        "facilityType": facilityType,
        "consultationMode": consultationMode,
        "clinicprescriptionStatus": clinicprescriptionStatus,
        "schemeName": schemeName,
        "schemeId": schemeId,
        "discountApplying": discountApplying,
        "eyeClinic": eyeClinic,
        "dictrict": dictrict,
        "thaluk": thaluk,
        "bookingPhoneNumber": bookingPhoneNumber,
        "fontSize": fontSize,
        "doctor": doctor,
    };
}

enum GstNumber { EMPTY, THE_32_AABCU9603_R1_Z2 }

final gstNumberValues = EnumValues({
    "": GstNumber.EMPTY,
    "32AABCU9603R1Z2": GstNumber.THE_32_AABCU9603_R1_Z2
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
