import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  //en,fr,es,de
  static var _t = Translations("en") +
      {
        "en": "Background service",
        "fr": "Service d'arrière-plan",
        "es": "Servicio en segundo plano",
        "de": "Hintergrunddienst",
        "pt": "Serviço de fundo",
        "ar": "خدمة الخلفية",
        "ko": "백그라운드 서비스",
        "my": "နောက်ခံဝန်ဆောင်မှု"
      } +
      {
        "en": "Background notification to keep app running",
        "fr":
            "Notification en arrière-plan pour que l'application continue de fonctionner",
        "es":
            "Notificación en segundo plano para mantener la aplicación en funcionamiento",
        "de": "Hintergrundbenachrichtigung, um die App am Laufen zu halten",
        "pt":
            "Notificação em segundo plano para manter o aplicativo em execução",
        "ar": "إشعار في الخلفية لمواصلة تشغيل التطبيق",
        "ko": "앱 실행을 유지하기 위한 백그라운드 알림",
        "my": "အက်ပ်ကို ဆက်လက်လည်ပတ်ရန် နောက်ခံသတိပေးချက်"
      } +
      {
        "en": "Background Permission Request",
        "fr": "Demande d'autorisation d'arrière-plan",
        "es": "Solicitud de permiso en segundo plano",
        "de": "Berechtigungsanfrage im Hintergrund",
        "pt": "Solicitação de permissão de fundo",
        "ar": "طلب إذن الخلفية",
        "ko": "백그라운드 권한 요청",
        "my": "နောက်ခံခွင့်ပြုချက်တောင်းဆိုခြင်း။"
      } +
      {
        "en":
            "requires your background permission to enable app receive new order notification even when app is in background",
        "fr":
            "nécessite votre autorisation d'arrière-plan pour permettre à l'application de recevoir une nouvelle notification de commande même lorsque l'application est en arrière-plan",
        "es":
            "requiere su permiso en segundo plano para permitir que la aplicación reciba una notificación de nuevo pedido incluso cuando la aplicación está en segundo plano",
        "de":
            "erfordert Ihre Hintergrundberechtigung, damit die App Benachrichtigungen über neue Bestellungen erhalten kann, auch wenn die App im Hintergrund ist",
        "pt":
            "requer sua permissão em segundo plano para permitir que o aplicativo receba uma notificação de novo pedido, mesmo quando o aplicativo está em segundo plano",
        "ar":
            "يتطلب إذنًا في الخلفية لتمكين التطبيق من تلقي إشعار بالطلب الجديد حتى عندما يكون التطبيق في الخلفية",
        "ko": "앱이 백그라운드에 있는 경우에도 앱이 새 주문 알림을 받을 수 있도록 하려면 백그라운드 권한이 필요합니다.",
        "my":
            "အက်ပ်သည် နောက်ခံတွင်ရှိနေသည့်တိုင် မှာယူမှုသတိပေးချက်အသစ်ကို လက်ခံရယူရန် အက်ပ်အားဖွင့်ရန် သင်၏နောက်ခံခွင့်ပြုချက် လိုအပ်သည်။"
      } +
      {
        "en": "Cancel",
        "fr": "Annuler",
        "es": "Cancelar",
        "de": "Stornieren",
        "pt": "Cancelar",
        "ar": "يلغي",
        "ko": "취소"
      } +
      {
        "en": "Next",
        "fr": "Prochain",
        "es": "Próximo",
        "de": "Nächste",
        "pt": "Próximo",
        "ar": "التالي",
        "ko": "다음"
      } +
      {
        "en": "Location Background service",
        "fr": "Service d'arrière-plan de localisation",
        "es": "Servicio de ubicación en segundo plano",
        "de": "Standort Hintergrunddienst",
        "pt": "Serviço de localização em segundo plano",
        "ar": "خدمة خلفية الموقع",
        "ko": "위치 백그라운드 서비스",
        "my": "တည်နေရာနောက်ခံဝန်ဆောင်မှု"
      } +
      {
        "en": "Location service is running when app is open/minimised",
        "fr":
            "Le service de localisation est en cours d'exécution lorsque l'application est ouverte/réduite",
        "es":
            "El servicio de ubicación se está ejecutando cuando la aplicación está abierta o minimizada",
        "de":
            "Der Ortungsdienst wird ausgeführt, wenn die App geöffnet/minimiert ist",
        "pt":
            "O serviço de localização está em execução quando o aplicativo está aberto/minimizado",
        "ar": "تعمل خدمة الموقع عندما يكون التطبيق مفتوحًا / مصغرًا",
        "ko": "앱이 열려 있거나 최소화되어 있을 때 위치 서비스가 실행 중입니다.",
        "my":
            "အက်ပ်ကိုဖွင့်/လျှော့ချသည့်အခါ တည်နေရာဝန်ဆောင်မှုကို လုပ်ဆောင်နေပါသည်။"
      };

  String get i18n => localize(this, _t);
  String fill(List<Object> params) => localizeFill(this, params);
}
