import 'package:flutter/material.dart';
import 'package:payflow/shared/model/boleto_model.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:payflow/shared/widgets/boleto_tile/boleto_tile_widget.dart';

class BoletoListWidegt extends StatefulWidget {
  final BoletoListController controller;
  const BoletoListWidegt({Key? key, required this.controller})
      : super(key: key);

  @override
  _BoletoListWidegtState createState() => _BoletoListWidegtState();
}

class _BoletoListWidegtState extends State<BoletoListWidegt> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<BoletoModel>>(
      valueListenable: widget.controller.boletosNotifier,
      builder: (_, boletos, __) => Column(
        children: boletos.map((e) => BoletoTileWidget(data: e)).toList(),
      ),
    );
  }
}
