import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticketmodules/app/modules/home/model/task_model.dart';
import 'package:timeago/timeago.dart' as timeago;

class TaskEditPage extends StatefulWidget {
  TaskModel? task;
  late CommentModel? commentModel;

  TaskEditPage({Key? key, this.task, this.commentModel}) : super(key: key);

  @override
  _TaskEditPageState createState() => _TaskEditPageState();
}

class _TaskEditPageState extends State<TaskEditPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: PhysicalModel(
                  elevation: 2,
                  color: Colors.grey,
                  child: Container(
                    color: Colors.grey[100],
                    child: Row(
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(Icons.arrow_back)),
                            Text(
                              "Back",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        )),
                        Expanded(
                          child: Center(
                            child: Text(
                              "Task #${widget.task?.taskNumber}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                    onPressed: () {}, icon: Icon(Icons.edit)))),
                      ],
                    ),
                  ),
                )),
            Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: widget.task?.tagColor,
                              ),
                              child: Text(
                                "${widget.task?.tag}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Text(
                            "${timeago.format(widget.task!.datetime!)}",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          "${widget.task?.title}",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Of course, deeply understanding your users and their needs is the foundation"
                        "of any food product. But that also means understanding all types of users"
                        "and cases",
                        style: TextStyle(fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today_outlined),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text("Deadline: "),
                            ),
                            Text(
                              "${widget.task?.startDate} - ${widget.task?.endDate}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 32,
                      ),
                      Text(
                        "Attachment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Icon(Icons.image_outlined),
                            SizedBox(
                              width: 8,
                            ),
                            Text("screenshoot_Image.png"),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_horiz),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Icon(Icons.attach_file),
                            SizedBox(
                              width: 8,
                            ),
                            Text("file_issue.zip"),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_horiz),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 24,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Assigned to"),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 16,
                                  ),
                                ],
                              )
                            ],
                          )),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Reporter"),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 16,
                                  ),
                                ],
                              )
                            ],
                          )),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 24,
                      ),
                      Text(
                        "Comments",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      // SizedBox(
                      //   width: double.infinity,
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: [
                      //       Icon(
                      //         Icons.chat,
                      //         size: 32,
                      //         color: Colors.grey[300],
                      //       ),
                      //       SizedBox(
                      //         height: 8,
                      //       ),
                      //       Text(
                      //         "Leave the first comment",
                      //         style: TextStyle(
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.grey),
                      //       ),
                      //     ],
                      //   ),
                      // ),

                      // SizedBox(
                      //   height: 10,
                      // ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: commentModelItem.length,
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(4, 4, 8, 4),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'User Name :)',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  size: 14,
                                                  Icons.thumb_up,
                                                  color: Colors.blue,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(commentModelItem[index]
                                                    .like
                                                    .toString()),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  size: 14,
                                                  Icons.heart_broken,
                                                  color: Colors.red,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(commentModelItem[index]
                                                    .heart
                                                    .toString())
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2, 0, 0, 0),
                                          child: Text(
                                            commentModelItem[index]
                                                .comment
                                                .toString(),
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          }))
                    ],
                  ),
                ),
                flex: 20),
            Expanded(
                child: PhysicalModel(
                  color: Colors.grey,
                  elevation: 2,
                  child: Container(
                    color: Colors.grey[200],
                    padding: EdgeInsets.only(bottom: 8, left: 8, right: 8),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a comment...",
                              hintStyle: TextStyle(color: Colors.black54)),
                        )),
                        IconButton(
                            onPressed: () {
                              if (_textEditingController.text.length > 0) {
                                print(_textEditingController.text);
                              }
                            },
                            icon: Icon(Icons.send)),
                      ],
                    ),
                  ),
                ),
                flex: 2),
          ],
        ),
      ),
    );
  }
}
