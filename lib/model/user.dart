class BankAccount {
  String bankName;
  int acNumber;
  int ifscCode;

  BankAccount(
      {required this.bankName, required this.acNumber, required this.ifscCode});

  Map<String, dynamic> toJson() {
    return {
      "bankName": this.bankName,
      "acNumber": this.acNumber,
      "ifscCode": this.ifscCode,
    };
  }

  factory BankAccount.fromJson(Map<String, dynamic> json) {
    return BankAccount(
      bankName: json["bankName"],
      acNumber: int.parse(json["acNumber"]),
      ifscCode: int.parse(json["ifscCode"]),
    );
  }
}
