import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MyhabitTile extends StatelessWidget {
  final bool isCompletedToday;
  final String text;
  final void Function(bool?)? onChanged;
  final void Function(BuildContext)? editHabit;
  final void Function(BuildContext)? deleteHabit;
  const MyhabitTile(
      {super.key,
      required this.isCompletedToday,
      required this.text,
      required this.onChanged,
      required this.editHabit,
      required this.deleteHabit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: editHabit,
              backgroundColor: Colors.grey.shade800,
              icon: Icons.settings,
              borderRadius: BorderRadius.circular(8),
            ),
            SlidableAction(
              onPressed: deleteHabit,
              backgroundColor: Colors.red,
              icon: Icons.delete,
              borderRadius: BorderRadius.circular(8),
            ),
          ],
        ),
        child: GestureDetector(
          onTap: () {
            if (onChanged != null) {
              onChanged!(!isCompletedToday);
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: isCompletedToday
                  ? Colors.green
                  : Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(12),
            child: ListTile(
              title: Text(text),
              leading: Checkbox(
                  activeColor: Colors.green,
                  value: isCompletedToday,
                  onChanged: onChanged),
            ),
          ),
        ),
      ),
    );
  }
}
