import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  //en,fr,es,de
  static var _t = Translations("en") +
      {
        "en": "Background Location Permission",
        "fr": "Autorisation de localisation en arrière-plan",
        "es": "Permiso de ubicación de fondo",
        "de": "Standortberechtigung im Hintergrund",
        "pt": "Permissão de localização em segundo plano",
        "ar": "إذن موقع الخلفية",
        "ko": "백그라운드 위치 권한",
        "my": "နောက်ခံတည်နေရာခွင့်ပြုချက်"
      } +
      {
        "en":
            "This app collects location data to enable location fetching at the time of your online status, even when the app is in background",
        "fr":
            "Cette application collecte des données de localisation pour activer la récupération de position au moment de votre statut en ligne, même lorsque l'application est en arrière-plan",
        "es":
            "Esta aplicación recopila datos de ubicación para permitir la búsqueda de ubicación en el momento de su estado en línea, incluso cuando la aplicación está en segundo plano.",
        "de":
            "Diese App sammelt Standortdaten, um das Abrufen des Standorts zum Zeitpunkt Ihres Online-Status zu ermöglichen, selbst wenn die App im Hintergrund läuft",
        "pt":
            "Este aplicativo coleta dados de localização para permitir a busca de localização no momento do seu status online, mesmo quando o aplicativo está em segundo plano",
        "ar":
            "يجمع هذا التطبيق بيانات الموقع لتمكين جلب الموقع في وقت حالة الاتصال بالإنترنت ، حتى عندما يكون التطبيق في الخلفية",
        "ko": "이 앱은 위치 데이터를 수집하여 앱이 백그라운드에 있을 때도 온라인 상태일 때 위치 가져오기를 가능하게 합니다.",
        "my":
            "အက်ပ်သည် နောက်ခံတွင် ရှိနေသည့်တိုင် သင့်အွန်လိုင်းအခြေအနေအချိန်၌ တည်နေရာရယူခြင်းကို ဖွင့်ရန်အတွက် ဤအက်ပ်သည် တည်နေရာဒေတာကို စုဆောင်းပါသည်။"
      } +
      {
        "en": "Location Permission",
        "fr": "Autorisation de localisation",
        "es": "Permiso de ubicación",
        "de": "Standorterlaubnis",
        "pt": "Permissão de localização",
        "ar": "إذن الموقع",
        "ko": "위치 권한",
        "my": "တည်နေရာခွင့်ပြုချက်"
      } +
      {
        "en":
            "This app requires your location permission to enable system search for assignable order within your location and also allow customer track your location when delivering their order",
        "fr":
            "Cette application nécessite votre autorisation de localisation pour activer la recherche du système pour la commande attribuable dans votre emplacement et également permettre au client de suivre votre emplacement lors de la livraison de sa commande",
        "es":
            "Esta aplicación requiere su permiso de ubicación para habilitar la búsqueda del sistema de pedidos asignables dentro de su ubicación y también permitir que el cliente rastree su ubicación al entregar su pedido",
        "de":
            "Diese App benötigt Ihre Standortberechtigung, um die Systemsuche nach zuweisbaren Bestellungen innerhalb Ihres Standorts zu aktivieren und es Kunden zu ermöglichen, Ihren Standort bei der Lieferung ihrer Bestellung zu verfolgen",
        "pt":
            "Este aplicativo requer sua permissão de localização para ativar a pesquisa do sistema para pedidos atribuíveis em sua localização e também permitir que o cliente rastreie sua localização ao entregar o pedido",
        "ar":
            "يتطلب هذا التطبيق إذن موقعك لتمكين البحث في النظام عن أمر قابل للتخصيص داخل موقعك وكذلك السماح للعملاء بتتبع موقعك عند تسليم طلباتهم",
        "ko":
            "이 앱은 귀하의 위치 내에서 할당 가능한 주문에 대한 시스템 검색을 활성화하고 고객이 주문을 배송할 때 귀하의 위치를 추적할 수 있도록 하려면 귀하의 위치 권한이 필요합니다.",
        "my":
            "ဤအက်ပ်သည် သင့်တည်နေရာအတွင်း သတ်မှတ်ပေးဆောင်နိုင်သော အမှာစာအတွက် စနစ်ရှာဖွေမှုကို ဖွင့်ရန်နှင့် ၎င်းတို့၏ အမှာစာပေးပို့သည့်အခါ သင့်တည်နေရာကို ဖောက်သည်အား ခြေရာခံရန် ဤအက်ပ်က လိုအပ်သည်"
      } +
      {
        "en": "Background Permission Request",
        "fr": "Demande d'autorisation d'arrière-plan",
        "es": "Solicitud de permiso de fondo",
        "de": "Hintergrund-Berechtigungsanfrage",
        "pt": "Solicitação de permissão em segundo plano",
        "ar": "طلب إذن الخلفية",
        "ko": "백그라운드 권한 요청",
        "my": "နောက်ခံခွင့်ပြုချက်တောင်းဆိုခြင်း။"
      } +
      {
        "en":
            "This app requires your background permission to enable app receive new order notification even when app is in background",
        "fr":
            "Cette application nécessite votre autorisation d'arrière-plan pour permettre à l'application de recevoir une notification de nouvelle commande même lorsque l'application est en arrière-plan",
        "es":
            "Esta aplicación requiere su permiso en segundo plano para permitir que la aplicación reciba una notificación de pedido nuevo incluso cuando la aplicación está en segundo plano",
        "de":
            "Diese App erfordert Ihre Hintergrundberechtigung, damit die App neue Bestellbenachrichtigungen erhält, auch wenn die App im Hintergrund läuft",
        "pt":
            "Este aplicativo requer sua permissão em segundo plano para permitir que o aplicativo receba uma notificação de novo pedido mesmo quando o aplicativo estiver em segundo plano",
        "ar":
            "يتطلب هذا التطبيق إذنًا في الخلفية لتمكين التطبيق من تلقي إشعار بالطلب الجديد حتى عندما يكون التطبيق في الخلفية",
        "ko": "이 앱은 앱이 백그라운드에 있을 때도 새 주문 알림을 받을 수 있도록 백그라운드 권한이 필요합니다.",
        "my":
            "အပလီကေးရှင်းသည် နောက်ခံတွင်ရှိနေသည့်တိုင် အက်ပ်အား မှာယူမှုသတိပေးချက်အသစ်ကို လက်ခံရရှိရန် ဤအက်ပ်အားဖွင့်ရန် သင့်နောက်ခံခွင့်ပြုချက် လိုအပ်ပါသည်။"
      } +
      {
        "en": "Next",
        "fr": "Suivant",
        "es": "próximo",
        "de": "Nächste",
        "pt": "Próximo",
        "ar": "التالي",
        "ko": "다음",
        "my": "နောက်တစ်ခု"
      } +
      {
        "en": "Cancel",
        "fr": "Annuler",
        "es": "Cancelar",
        "de": "Abbrechen",
        "pt": "Cancelar",
        "ar": "يلغي",
        "ko": "취소",
        "my": "မလုပ်တော့"
      };

  String get i18n => localize(this, _t);
  String fill(List<Object> params) => localizeFill(this, params);
}
