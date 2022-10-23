import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  //en,fr,es,de
  static var _t = Translations("en") +
      {
        "en": "Home",
        "fr": "Maison",
        "es": "Hogar",
        "de": "Zuhause",
        "pt": "Casa",
        "ar": "الصفحة الرئيسية",
        "ko": "집"
      } +
      {
        "en": "Orders",
        "fr": "Ordres",
        "es": "Pedidos",
        "de": "Aufträge",
        "pt": "Pedidos",
        "ar": "الطلب #٪ s",
        "ko": "명령"
      } +
      {
        "en": "Cart",
        "fr": "Chariot",
        "es": "Carro",
        "de": "Wagen",
        "pt": "Carrinho",
        "ar": "عربة التسوق",
        "ko": "카트"
      } +
      {
        "en": "More",
        "fr": "Suite",
        "es": "Más",
        "de": "Mehr",
        "pt": "Mais",
        "ar": "أكثر",
        "ko": "더"
      } +
      {
        "en": "Assigned",
        "fr": "Attribué",
        "es": "Asignado",
        "de": "Zugewiesen",
        "pt": "Atribuído",
        "ar": "مكلف",
        "ko": "할당 됨"
      } +
      {
        "en": "You are Offline",
        "fr": "Tu es hors ligne",
        "es": "Estas desconectado",
        "de": "Du bist offline",
        "pt": "Você está offline",
        "ar": "انت غير متصل",
        "ko": "너는 지금 접속이 안되있어"
      } +
      {
        "en": "You are Online",
        "fr": "Tu es en ligne",
        "es": "Estás en línea",
        "de": "Du bist online",
        "pt": "Você está online",
        "ar": "أنت متصل",
        "ko": "온라인 상태입니다"
      } +
      {
        "en": "Updated Successfully",
        "fr": "Mis à jour avec succés",
        "es": "Actualizado con éxito",
        "de": "Erfolgreich geupdated",
        "pt": "Atualizado com sucesso",
        "ar": "تم التحديث بنجاح",
        "ko": "성공적으로 업데이트 됨"
      } +
      {
        "en": "New Order Alert",
        "fr": "Nouvelle alerte de commande",
        "es": "Alerta de nuevo pedido",
        "de": "New Order Alert",
        "pt": "Alerta de novo pedido",
        "ar": "تنبيه طلب جديد",
        "ko": "새로운 주문 알림"
      } +
      {
        "en": "Pickup Location",
        "fr": "Lieu de ramassage",
        "es": "Lugar de recogida",
        "de": "Treffpunkt",
        "pt": "Local de coleta",
        "ar": "اختر موقعا",
        "ko": "짐을 싣는 곳"
      } +
      {
        "en": "Dropoff Location",
        "fr": "Point de chute",
        "es": "Punto de entrega",
        "de": "Rückgabestation",
        "pt": "Local de entrega",
        "ar": "موقع الإنزال",
        "ko": "반납 장소"
      } +
      {
        "en": "Delivery Fee",
        "fr": "Frais de livraison",
        "es": "Gastos de envío",
        "de": "Liefergebühr",
        "pt": "Taxa de entrega",
        "ar": "رسوم التوصيل",
        "ko": "배달비"
      } +
      {
        "en": "Package Type",
        "fr": "Type d'emballage",
        "es": "Tipo de paquete",
        "de": "Pakettyp",
        "pt": "Tipo de Pacote",
        "ar": "نوع الحزمة",
        "ko": "포장 종류"
      } +
      {
        "en": "Accept",
        "fr": "J'accepte",
        "es": "Aceptar",
        "de": "Akzeptieren",
        "pt": "Aceitar",
        "ar": "قبول",
        "ko": "동의하기"
      } +
      {
        "en": "Swipe to accept order",
        "fr": "Faites glisser pour accepter la commande",
        "es": "Desliza para aceptar el pedido",
        "de": "Wischen Sie, um die Bestellung anzunehmen",
        "pt": "Deslize para aceitar o pedido",
        "ar": "مرر لقبول الطلب",
        "ko": "주문을 수락하려면 스 와이프하세요."
      } +
      {
        "en": "Accepting Order",
        "fr": "Acceptation de la commande",
        "es": "Aceptando orden",
        "de": "Bestellung annehmen",
        "pt": "Aceitando pedido",
        "ar": "قبول الطلب",
        "ko": "주문 수락"
      } +
      {
        "en": "Waiting for new order",
        "fr": "En attente d'une nouvelle commande",
        "es": "Esperando nuevo pedido",
        "de": "Warte auf neue Bestellung",
        "pt": "Aguardando novo pedido",
        "ar": "في انتظار طلب جديد",
        "ko": "새로운 주문을 기다리는 중"
      } +
      {
        "en": "Order ignored by you",
        "fr": "Commande ignorée par vous",
        "es": "Orden ignorada por ti",
        "de": "Bestellung von dir ignoriert",
        "pt": "Pedido ignorado por você",
        "ar": "الأمر الذي تجاهله",
        "ko": "당신이 무시한 주문"
      } +
      {
        "en": "Accepting Order",
        "fr": "Acceptation de la commande",
        "es": "Aceptando orden",
        "de": "Bestellung annehmen",
        "pt": "Aceitando pedido",
        "ar": "قبول الطلب",
        "ko": "주문 수락"
      } +
      {
        "en": "Please wait...",
        "fr": "S'il vous plaît, attendez...",
        "es": "Espere por favor...",
        "de": "Warten Sie mal...",
        "pt": "Por favor, aguarde...",
        "ar": "أرجو الإنتظار...",
        "ko": "잠시만 기다려주세요 ..."
      } +
      {
        "en": "Order Assignment",
        "fr": "Affectation de commande",
        "es": "Asignación de pedidos",
        "de": "Auftragszuweisung",
        "pt": "Atribuição de pedido",
        "ar": "طلب التنازل",
        "ko": "주문 할당"
      } +
      {
        "en": "Order Assigned successfully",
        "fr": "Commande attribuée avec succès",
        "es": "Pedido asignado correctamente",
        "de": "Auftrag erfolgreich zugewiesen",
        "pt": "Pedido atribuído com sucesso",
        "ar": "تم تعيين الطلب بنجاح",
        "ko": "주문이 성공적으로 지정되었습니다."
      } +
      {
        "en": "Press back again to close",
        "fr": "Appuyez à nouveau pour fermer",
        "es": "Presione de nuevo para cerrar",
        "de": "Zum Schließen erneut drücken",
        "pt": "Pressione novamente para fechar",
        "ar": "اضغط مرة أخرى للإغلاق",
        "ko": "닫으려면 뒤로를 다시 누르세요.",
        "my": "ပိတ်ရန်နောက်သို့ပြန်နှိပ်ပါ"
      } +
      {
        "en": "Location Error",
        "fr": "Erreur de localisation",
        "es": "Error de ubicación",
        "de": "Standortfehler",
        "pt": "Erro de localização",
        "ar": "خطأ في الموقع",
        "ko": "위치 오류"
      } +
      {
        "en":
            "New Order Alert can not be shown as we couldn't determine your current location/city",
        "fr":
            "L'alerte de nouvelle commande ne peut pas être affichée car nous n'avons pas pu déterminer votre emplacement/ville actuel",
        "es":
            "No se puede mostrar la alerta de nuevo pedido porque no pudimos determinar su ubicación / ciudad actual",
        "de":
            "Benachrichtigung über neue Bestellungen kann nicht angezeigt werden, da wir Ihren aktuellen Standort/Ihre aktuelle Stadt nicht ermitteln konnten",
        "pt":
            "O alerta de novo pedido não pode ser exibido, pois não foi possível determinar sua localização / cidade atual",
        "ar":
            "لا يمكن عرض تنبيه الطلب الجديد لأننا لم نتمكن من تحديد موقعك / مدينتك الحالية",
        "ko": "현재 위치/도시를 확인할 수 없으므로 새 주문 알림을 표시할 수 없습니다."
      } +
      {
        "en":
            "You haven't move for a while now. You might have to move around/close to hotspot area to get orders",
        "fr":
            "Vous n'avez pas bougé depuis un moment maintenant. Vous devrez peut-être vous déplacer / vous rapprocher de la zone du hotspot pour obtenir des commandes",
        "es":
            "Hace tiempo que no te mueves. Es posible que deba moverse o acercarse al área del punto de acceso para recibir pedidos",
        "de":
            "Du hast dich jetzt schon eine Weile nicht mehr bewegt. Möglicherweise müssen Sie sich in der Nähe des Hotspot-Bereichs bewegen, um Bestellungen zu erhalten",
        "pt":
            "Você não se move por um tempo agora. Você pode ter que se deslocar/perto da área de hotspot para receber pedidos",
        "ar":
            "أنت لم تتحرك منذ فترة. قد تضطر إلى التحرك / بالقرب من منطقة النقاط الفعالة للحصول على الطلبات",
        "ko": "당신은 지금 한동안 움직이지 않았습니다. 주문을 받으려면 핫스팟 지역 주변을/가까이 이동해야 할 수도 있습니다.",
        "my":
            "မင်းမလှုပ်တာကြာပြီ။ အမှာစာများရယူရန် သင်သည် ဟော့စပေါ့ဧရိယာသို့ ရွှေ့ရန် လိုအပ်နိုင်သည်။"
      } +
      {
        "en": "Stationary Location",
        "fr": "Emplacement fixe",
        "es": "Ubicación estacionaria",
        "de": "Stationärer Standort",
        "pt": "Localização estacionária",
        "ar": "موقع ثابت",
        "ko": "고정 위치",
        "my": "စာရေးကိရိယာတည်နေရာ"
      } +
      {
        "en": "Don't remind me again",
        "fr": "Ne me rappelle plus",
        "es": "no me vuelvas a recordar",
        "de": "Erinnere mich nicht wieder",
        "pt": "Não me lembre novamente",
        "ar": "لا تذكرني مرة أخرى",
        "ko": "다시 생각나게 하지마",
        "my": "ငါ့ကို ထပ်ပြီးသတိမပေးပါနဲ့။"
      } +
      {
        "en": "Don't remind me again",
        "fr": "Ne me rappelle plus",
        "es": "no me vuelvas a recordar",
        "de": "Erinnere mich nicht wieder",
        "pt": "Não me lembre novamente",
        "ar": "لا تذكرني مرة أخرى",
        "ko": "다시 생각나게 하지마",
        "my": "ငါ့ကို ထပ်ပြီးသတိမပေးပါနဲ့။"
      } +
      {
        "en": "Total",
        "fr": "Le total",
        "es": "Total",
        "de": "Gesamt",
        "pt": "Total",
        "ar": "مجموع",
        "ko": "총",
        "my": "စုစုပေါင်း"
      };

  String get i18n => localize(this, _t);
  String fill(List<Object> params) => localizeFill(this, params);
}
