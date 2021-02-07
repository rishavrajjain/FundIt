import 'package:flutter/material.dart';

class Job {
  String workTitle;
  String workSubTitle;
  String workType;
  String moneyRaised;
  AssetImage companyLogo;
  String investors;
  String days;

  Job(
      {this.workTitle,
      this.workSubTitle,
      this.workType,
      this.moneyRaised,
      this.investors,
      this.days,
      this.companyLogo});
}
