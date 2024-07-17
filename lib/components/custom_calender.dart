import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCalender extends StatefulWidget {
  /// [minimumDate] 表示する最小の日付
  /// [maximumDate] 表示する最大の日付
  /// [initialStartDate] 初期表示の選択開始日
  /// [initialEndDate] 初期表示の選択終了日
  const CustomCalender({
    super.key,
    this.initialStartDate,
    this.initialEndDate,
    this.startEndDateChange,
    this.minimumDate,
    this.maximumDate,
  });

  /// 表示する最小の日付
  final DateTime? minimumDate;

  /// 表示する最大の日付
  final DateTime? maximumDate;

  /// 初期表示の選択開始日
  final DateTime? initialStartDate;

  /// 初期表示の選択終了日
  final DateTime? initialEndDate;

  final void Function(DateTime?, DateTime?)? startEndDateChange;

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  /// カレンダーに表示する日付リスト
  final _dateList = <DateTime>[];

  /// 現在表示している月
  late DateTime _currentMonthDate;

  /// 現在選択している開始日
  DateTime? _startDate;

  /// 現在選択している終了日
  DateTime? _endDate;

  @override
  void initState() {
    _startDate = widget.initialStartDate;
    _endDate = widget.initialEndDate;
    _currentMonthDate = _startDate ?? DateTime.now();
    _setListOfDate(_currentMonthDate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: _arrowButton(
                  isRight: false,
                  onTap: _onBackMonth,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    DateFormat('MMMM, yyyy').format(_currentMonthDate),
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: _arrowButton(
                  isRight: true,
                  onTap: _onForwardMonth,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 8,
            left: 8,
            bottom: 8,
          ),
          child: Row(
            children: _weekDayNamesWidget(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: _daysNoWidget(),
          ),
        ),
      ],
    );
  }

  Widget _arrowButton({required bool isRight, void Function()? onTap}) {
    return SizedBox(
      height: 38,
      width: 38,
      child: IconButton.outlined(
        onPressed: onTap,
        padding: const EdgeInsets.all(7),
        style: IconButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
          side: BorderSide(
            color: Theme.of(context).colorScheme.outlineVariant,
          ),
        ),
        splashRadius: 24,
        icon: Icon(
          isRight ? Icons.keyboard_arrow_right : Icons.keyboard_arrow_left,
          color: Colors.grey,
        ),
      ),
    );
  }

  List<Widget> _weekDayNamesWidget() {
    final listUi = <Widget>[];
    for (var i = 0; i < DateTime.daysPerWeek; i++) {
      listUi.add(
        Expanded(
          child: Center(
            child: Text(
              DateFormat('EEE').format(_dateList[i]),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      );
    }
    return listUi;
  }

  List<Widget> _daysNoWidget() {
    final noList = <Widget>[];
    var count = 0;
    for (var i = 0; i < _dateList.length / DateTime.daysPerWeek; i++) {
      final oneWeek = <Widget>[];
      for (var j = 0; j < DateTime.daysPerWeek; j++) {
        oneWeek.add(_dateWidgetOfCalender(_dateList[count]));
        count++;
      }
      noList.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: oneWeek,
        ),
      );
    }
    return noList;
  }

  Widget _dateWidgetOfCalender(DateTime date) {
    final primaryColor = Theme.of(context).primaryColor;
    const circleRadius = Radius.circular(24);
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Container(
                margin: EdgeInsets.only(
                  top: 2,
                  bottom: 2,
                  left: _isStartDateRadius(date) ? 4 : 0,
                  right: _isEndDateRadius(date) ? 4 : 0,
                ),
                decoration: BoxDecoration(
                  color: _isRange(date) ? primaryColor.withOpacity(0.4) : null,
                  borderRadius: BorderRadius.only(
                    bottomLeft:
                        _isStartDateRadius(date) ? circleRadius : Radius.zero,
                    topLeft:
                        _isStartDateRadius(date) ? circleRadius : Radius.zero,
                    topRight:
                        _isEndDateRadius(date) ? circleRadius : Radius.zero,
                    bottomRight:
                        _isEndDateRadius(date) ? circleRadius : Radius.zero,
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(32),
                onTap: _canTap(date)
                    ? () {
                        _onDateSelected(date);
                      }
                    : null,
                child: Container(
                  margin: const EdgeInsets.all(2),
                  alignment: Alignment.center,
                  decoration: _isStartOrEndDate(date)
                      ? _startOrEndDateDecoration()
                      : null,
                  child: Text(
                    date.day.toString(),
                    style: TextStyle(
                      fontSize:
                          MediaQuery.of(context).size.width > 360 ? 18 : 16,
                      color: _isStartOrEndDate(date)
                          ? Colors.white
                          : _currentMonthDate.month == date.month &&
                                  _canTap(date)
                              ? Colors.black
                              : Colors.grey,
                      fontWeight: _isStartOrEndDate(date)
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            _todayCircleWidget(date),
          ],
        ),
      ),
    );
  }

  Widget _todayCircleWidget(DateTime date) {
    final primaryColor = Theme.of(context).primaryColor;
    return Positioned(
      bottom: 9,
      right: 0,
      left: 0,
      child: Container(
        height: 6,
        width: 6,
        decoration: BoxDecoration(
          color: _isToday(date)
              ? _isRange(date)
                  ? Colors.white
                  : primaryColor
              : Colors.transparent,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Decoration _startOrEndDateDecoration() {
    return BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(32),
      border: Border.all(
        color: Colors.white,
        width: 2,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.6),
          blurRadius: 4,
        ),
      ],
    );
  }

  void _onBackMonth() {
    setState(() {
      _currentMonthDate =
          _currentMonthDate.copyWith(month: _currentMonthDate.month - 1);
      _setListOfDate(_currentMonthDate);
    });
  }

  void _onForwardMonth() {
    setState(() {
      _currentMonthDate =
          _currentMonthDate.copyWith(month: _currentMonthDate.month + 1);
      _setListOfDate(_currentMonthDate);
    });
  }

  void _onDateSelected(DateTime date) {
    if (_startDate == null) {
      _startDate = date;
    } else if (_isSameDate(date, _startDate!) && _endDate != null) {
      _startDate = _endDate;
      _endDate = null;
    } else if (_isSameDate(date, _startDate!)) {
      _startDate = null;
    } else if (_endDate == null) {
      _endDate = date;
    } else if (_isSameDate(date, _endDate!)) {
      _endDate = null;
    } else if (date.isBefore(_startDate!)) {
      _startDate = date;
    } else {
      _endDate = date;
    }
    if (_startDate != null &&
        _endDate != null &&
        _startDate!.isAfter(_endDate!)) {
      final tmp = _startDate;
      _startDate = _endDate;
      _endDate = tmp;
    }
    setState(() {
      if (widget.startEndDateChange != null) {
        widget.startEndDateChange!(_startDate, _endDate);
      }
    });
  }

  void _setListOfDate(DateTime monthDate) {
    _dateList.clear();
    final fistDayOfCurrentMonth = monthDate.copyWith(day: 1);
    final numOfPreviousMonthDay =
        fistDayOfCurrentMonth.weekday % DateTime.daysPerWeek;
    for (var i = 0; i < numOfPreviousMonthDay; i++) {
      _dateList.add(
        fistDayOfCurrentMonth.subtract(
          Duration(
            days: numOfPreviousMonthDay - i,
          ),
        ),
      );
    }
    for (var i = 0; i < 7 * 5 - numOfPreviousMonthDay; i++) {
      _dateList.add(fistDayOfCurrentMonth.add(Duration(days: i)));
    }
  }

  bool _isStartDateRadius(DateTime date) {
    if (_startDate != null && _isSameDate(date, _startDate!)) {
      return true;
    }
    if (date.weekday == DateTime.sunday) {
      return true;
    }
    return false;
  }

  bool _isEndDateRadius(DateTime date) {
    if (_endDate != null && _isSameDate(date, _endDate!)) {
      return true;
    }
    if (date.weekday == DateTime.saturday) {
      return true;
    }
    return false;
  }

  bool _isRange(DateTime date) {
    if (_startDate == null || _endDate == null) {
      return false;
    }
    if ((_isSameDate(date, _startDate!) || date.isAfter(_startDate!)) &&
        (_isSameDate(date, _endDate!) || date.isBefore(_endDate!))) {
      return true;
    }
    return false;
  }

  bool _isStartOrEndDate(DateTime date) {
    return (_startDate != null && _isSameDate(date, _startDate!)) ||
        (_endDate != null && _isSameDate(date, _endDate!));
  }

  bool _isToday(DateTime date) {
    final now = DateTime.now();
    return _isSameDate(now, date);
  }

  bool _isSameDate(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  bool _canTap(DateTime date) {
    var canTap = true;
    final minDate = widget.minimumDate;
    final maxDate = widget.maximumDate;
    if (minDate != null &&
        date.isBefore(minDate.copyWith(day: minDate.day - 1))) {
      canTap = false;
    }
    if (maxDate != null &&
        date.isAfter(maxDate.copyWith(day: maxDate.day + 1))) {
      canTap = false;
    }
    return canTap;
  }
}
