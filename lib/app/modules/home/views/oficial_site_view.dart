import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OficialSiteView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OficialSiteView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OficialSiteView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
