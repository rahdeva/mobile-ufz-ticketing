import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class Validator {
  static FormFieldValidator<T> list<T>(List<FormFieldValidator<T>> validators) {
    return (valueCandidate) {
      for (var validator in validators) {
        final validatorResult = validator.call(valueCandidate);
        if (validatorResult != null) {
          return validatorResult;
        }
      }
      return null;
    };
  }

  static FormFieldValidator<T> required<T>() {
    return FormBuilderValidators.required(
      errorText: 'txt_validator_required'.tr
    );
  }

  static FormFieldValidator<String> email<T>() {
    return FormBuilderValidators.email(
      errorText: 'txt_validator_valid_email'.tr
    );
  }

  static FormFieldValidator<String> minLength<T>(int minLength) {
    return FormBuilderValidators.minLength(minLength);
  }

  static FormFieldValidator<String> password<T>() {
    return FormBuilderValidators.minLength(
      8, 
      errorText: 'txt_validator_password_length'.tr
    );
  }

  static FormFieldValidator<String> year<T>() {
    return FormBuilderValidators.equalLength(
      4, 
      errorText: 'txt_validator_valid_year'.tr
    );
  }

  static FormFieldValidator<String> min<T>(int min) {
    return FormBuilderValidators.min(
      min, 
      errorText: '${"txt_validator_greater_than_or_equal".tr} $min'
    );
  }

  static FormFieldValidator<String> max<T>(int max) {
    return FormBuilderValidators.max(
      max, 
      errorText: '${"txt_validator_less_than_or_equal".tr} $min'
    );
  }

  static FormFieldValidator<String> maxLength<T>(int maxLength) {
    return FormBuilderValidators.maxLength(maxLength);
  }

  static FormFieldValidator<String> numeric<T>() {
    return FormBuilderValidators.numeric(
      errorText: 'txt_validator_numbers_only'.tr
    );
  }

}
