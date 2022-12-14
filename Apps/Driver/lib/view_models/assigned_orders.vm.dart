import 'dart:async';

import 'package:fuodz/constants/app_routes.dart';
import 'package:fuodz/models/order.dart';
import 'package:fuodz/requests/order.request.dart';
import 'package:fuodz/services/app.service.dart';
import 'package:fuodz/view_models/base.view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:velocity_x/velocity_x.dart';

class AssignedOrdersViewModel extends MyBaseViewModel {
  //
  OrderRequest orderRequest = OrderRequest();
  List<Order> orders = [];
  //
  int queryPage = 1;
  RefreshController refreshController = RefreshController();
  StreamSubscription refreshOrderStream;
  StreamSubscription addOrderToListStream;

  void initialise() async {
    //
    refreshOrderStream = AppService().refreshAssignedOrders.listen((refresh) {
      if (refresh) {
        fetchOrders();
      }
    });
    //add order to list of already shown assigned orders
    addOrderToListStream = AppService().addToAssignedOrders.listen((order) {
      if (order != null) {
        orders.insert(0, order);
      }
    });

    //
    await fetchOrders();
  }

  dispose() {
    super.dispose();

    if (refreshOrderStream != null) {
      refreshOrderStream.cancel();
    }
    if (addOrderToListStream != null) {
      addOrderToListStream.cancel();
    }
  }

  //
  fetchOrders({bool initialLoading = true}) async {
    if (initialLoading) {
      setBusy(true);
      refreshController.refreshCompleted();
      queryPage = 1;
    } else {
      queryPage++;
    }

    try {
      final mOrders = await orderRequest.getOrders(
        page: queryPage,
        type: "assigned",
      );
      if (!initialLoading) {
        orders.addAll(mOrders);
        refreshController.loadComplete();
      } else {
        orders = mOrders;
      }
      clearErrors();
    } catch (error) {
      print("Order Error ==> $error");
      setError(error);
    }

    setBusy(false);
  }

  //
  openPaymentPage(Order order) async {
    launchUrlString(order.paymentLink);
  }

  //
  openOrderDetails(Order order) async {
    final result =
        await AppService().navigatorKey.currentContext.navigator.pushNamed(
      AppRoutes.orderDetailsRoute,
      arguments: order,
    );

    //
    if (result != null && (result is Order || result is bool)) {
      fetchOrders();
    }
  }
}
