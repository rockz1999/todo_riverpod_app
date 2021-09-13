import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../database/db.export.dart';
import '../../../utils/utils.dart';

class TodoContainer extends HookWidget {
  const TodoContainer(
      {Key? key,
      required this.model,
      this.onCompletedTapped,
      this.onDeleteTapped,
      this.onEditTapped})
      : super(key: key);
  final TODOModel model;
  final Function()? onCompletedTapped;
  final Function()? onDeleteTapped;
  final Function()? onEditTapped;
  @override
  Widget build(BuildContext context) {
    final completed = useState(model.completed);
    return Container(
      decoration: BoxDecoration(
        color: model.completed
            ? Colors.grey[200]
            : model.isOverdue
                ? Colors.red[100]
                : Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            model.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 3,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                model.date.formattedDate,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              InkWell(
                child: SvgPicture.asset(
                  'lib/assets/svgs/checkbox_${completed.value ? 'active' : 'unactive'}.svg',
                ),
                onTap: model.completed
                    ? null
                    : () {
                        model.toggleCompleted();
                        completed.value = !completed.value;
                        onCompletedTapped?.call();
                      },
              )
            ],
          )
        ],
      ),
    );
  }
}
