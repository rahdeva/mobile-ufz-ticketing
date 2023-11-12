import 'package:flutter/material.dart';
import 'dart:developer';
import 'dart:io';
import 'package:get/get.dart';
import 'package:mobile_ufz_ticketing/feature/qr_view/qr_view_controller.dart';
import 'package:mobile_ufz_ticketing/resources/resources.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:sizer/sizer.dart';

class QrViewPage extends StatefulWidget {
  const QrViewPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewPageState();
}

class _QRViewPageState extends State<QrViewPage> {
  Barcode? result;
  QRViewController? qrController;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      qrController!.pauseCamera();
    }
    qrController!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QrViewController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Scan Ticket".tr,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: AppColors.black
              ),
            ),
            centerTitle: true,
            actions: [
              InkWell(
                onTap: () async {
                  await qrController?.toggleFlash();
                  if(controller.isFlashOn.value == true){
                    controller.isFlashOn.value = false;
                  } else{
                    controller.isFlashOn.value = true;
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Obx(
                    () => Icon(
                      controller.isFlashOn.value == true
                      ? Icons.flash_on_rounded
                      : Icons.flash_off_rounded
                    ),
                  ),
                ),
              )
            ],
          ),
          body: Stack(
            children: <Widget>[
              Expanded(
                flex: 5, 
                child: _buildQrView(
                  context,
                  controller
                )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100.w/2.25,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Text(
                        "Please align the ticket's QR code within the scanning area to ensure a successful scan.".tr,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: AppColors.white
                        ),
                        textAlign: TextAlign.center
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.gray500,
                          borderRadius: BorderRadius.circular(2)
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.info_outline,
                              color: AppColors.white,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Ticket Scan Code Instructruction",
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }

  Widget _buildQrView(BuildContext context, QrViewController controller) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 285.0
        : 450.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.white,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: scanArea
      ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController qrController) {
    setState(() {
      this.qrController = qrController;
    });
    // QrViewController controller = QrViewController();
    qrController.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        if(result?.code != null || result?.code == ""){
          // controller.inputQR(code: result!.code!);
        }
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    qrController?.dispose();
    super.dispose();
  }
}
