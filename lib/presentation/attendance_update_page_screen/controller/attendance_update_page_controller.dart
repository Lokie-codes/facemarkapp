import 'package:facemarkapp/core/app_export.dart';
import 'package:facemarkapp/presentation/attendance_update_page_screen/models/attendance_update_page_model.dart';
import 'package:facemarkapp/widgets/custom_bottom_bar.dart';

class AttendanceUpdatePageController extends GetxController {
  Rx<AttendanceUpdatePageModel> attendanceUpdatePageModelObj =
      AttendanceUpdatePageModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  SelectionPopupModel? selectedDropDownValue4;

  SelectionPopupModel? selectedDropDownValue5;

  SelectionPopupModel? selectedDropDownValue6;

  SelectionPopupModel? selectedDropDownValue7;

  SelectionPopupModel? selectedDropDownValue8;

  SelectionPopupModel? selectedDropDownValue9;

  SelectionPopupModel? selectedDropDownValue10;

  SelectionPopupModel? selectedDropDownValue11;

  SelectionPopupModel? selectedDropDownValue12;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    selectedDropDownValue2 = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList2.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList2.refresh();
  }

  onSelected3(dynamic value) {
    selectedDropDownValue3 = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList3.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList3.refresh();
  }

  onSelected4(dynamic value) {
    selectedDropDownValue4 = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList4.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList4.refresh();
  }

  onSelected5(dynamic value) {
    selectedDropDownValue5 = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList5.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList5.refresh();
  }

  onSelected6(dynamic value) {
    selectedDropDownValue6 = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList6.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList6.refresh();
  }

  onSelected7(dynamic value) {
    selectedDropDownValue7 = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList7.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList7.refresh();
  }

  onSelected8(dynamic value) {
    selectedDropDownValue8 = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList8.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList8.refresh();
  }

  onSelected9(dynamic value) {
    selectedDropDownValue9 = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList9.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList9.refresh();
  }

  onSelected10(dynamic value) {
    selectedDropDownValue10 = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList10.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList10.refresh();
  }

  onSelected11(dynamic value) {
    selectedDropDownValue11 = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList11.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList11.refresh();
  }

  onSelected12(dynamic value) {
    selectedDropDownValue12 = value as SelectionPopupModel;
    attendanceUpdatePageModelObj.value.dropdownItemList12.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    attendanceUpdatePageModelObj.value.dropdownItemList12.refresh();
  }
}
