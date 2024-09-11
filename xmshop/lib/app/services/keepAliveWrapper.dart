import 'package:flutter/material.dart';
class Keepalivewrapper extends StatefulWidget {
  const Keepalivewrapper({super.key,required this.child,this.KeepAlive=true});
  final Widget child;
  final bool KeepAlive;
  @override
  State<Keepalivewrapper> createState() => _KeepalivewrapperState();
}

class _KeepalivewrapperState extends State<Keepalivewrapper>
with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
  @override
  bool get wantKeepAlive => widget.KeepAlive;
}

//缓存只适用于tabview和pageview