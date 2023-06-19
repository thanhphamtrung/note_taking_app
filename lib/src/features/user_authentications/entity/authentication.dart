import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repositories/i_authentication_repository.dart';
import '../../../data/repositories/i_user_repository.dart';
import '../../../entity/authentication.dart';
  List<Object> get props => [id];

  static const empty = User('-');
}