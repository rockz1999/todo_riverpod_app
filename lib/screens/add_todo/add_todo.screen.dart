export './add_todo.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/database/db.export.dart';
import 'package:todo_app/providers/all_providers.dart';
import 'package:todo_app/screens/add_todo/add_todo.state.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/widgets/appbars.dart';
import 'package:todo_app/widgets/widgets.export.dart';
part './add_todo.notifier.dart';

class AddTodoScreen extends HookWidget {
  AddTodoScreen({Key? key, this.editingModel}) : super(key: key);
  final TODOModel? editingModel;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final state = useProvider(addTodoProvider);
    final notifier = useProvider(addTodoProvider.notifier);
    final titleTED = useTextEditingController(text: editingModel?.title);

    final descriptionTED =
        useTextEditingController(text: editingModel?.description);
    final dateTED =
        useTextEditingController(text: editingModel?.date.formattedDate);
    return Scaffold(
      appBar: lightAppbar(
        back: true,
        title: 'Add Todo',
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Box(
            padding: 25,
            borderRadius: 12,
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: titleTED,
                    decoration: const InputDecoration(
                      labelText: 'Title',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: descriptionTED,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: dateTED,
                    readOnly: true,
                    decoration: const InputDecoration(
                      labelText: 'Date',
                      border: OutlineInputBorder(),
                    ),
                    onTap: () async {
                      final selectedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021, 4, 5),
                        lastDate: DateTime(DateTime.now().year + 10),
                      );
                      if (selectedDate != null) {
                        dateTED.text = selectedDate.formattedDate;
                      }
                    },
                  ),
                  GFCheckboxListTile(
                    onChanged: (val) {
                      notifier.toggleImportant(val);
                    },
                    value: state.important,
                    titleText: 'Important',
                    activeIcon:
                        SvgPicture.asset('lib/assets/svgs/checkbox_active.svg'),
                    inactiveIcon: SvgPicture.asset(
                        'lib/assets/svgs/checkbox_unactive.svg'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 164,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(0.0, 10.0),
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                      ),
                      child: GFButton(
                        size: GFSize.LARGE,
                        borderShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.blueGrey,
                        onPressed: state.isLoading
                            ? () {}
                            : () {
                                if (_formkey.currentState?.validate() ??
                                    false) {
                                  notifier.addTodo(TODOModel(
                                      title: titleTED.text,
                                      description: descriptionTED.text,
                                      date: dateTED.text.unformateDate));
                                  _formkey.currentState?.reset();
                                }
                              },
                        child: state.isLoading
                            ? const GFLoader(type: GFLoaderType.ios)
                            : Text(
                                editingModel != null ? 'Edit Todo' : 'Add Todo',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontFamily: 'BarlowBold',
                                ),
                              ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
