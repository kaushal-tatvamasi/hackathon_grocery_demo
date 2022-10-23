import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  //en,fr,es,de
  static var _t = Translations("en") +
      {
        "en": "Order Details",
        "fr": "détails de la commande",
        "es": "Detalles del pedido",
        "de": "Bestelldetails",
        "pt": "detalhes do pedido",
        "ar": "تفاصيل الطلب",
        "ko": "주문 정보"
      } +
      {
        "en": "Deliver To",
        "fr": "Livrer à",
        "es": "Entregar a",
        "de": "Liefern an",
        "pt": "Entregar para",
        "ar": "يسلم إلى",
        "ko": "배달"
      } +
      {
        "en": "Customer Order Pickup",
        "fr": "Ramassage de la commande client",
        "es": "Recogida de pedidos del cliente",
        "de": "Abholung von Kundenaufträgen",
        "pt": "Retirada de pedido do cliente",
        "ar": "استلام طلب العميل",
        "ko": "고객 주문 픽업"
      } +
      {
        "en": "Status",
        "fr": "Statut",
        "es": "Estado",
        "de": "Status",
        "pt": "Status",
        "ar": "حالة",
        "ko": "상태"
      } +
      {
        "en": "Payment Status",
        "fr": "Statut de paiement",
        "es": "Estado de pago",
        "de": "Zahlungsstatus",
        "pt": "Status do pagamento",
        "ar": "حالة السداد",
        "ko": "지불 상태"
      } +
      {
        "en": "Code",
        "fr": "Code",
        "es": "Código",
        "de": "Code",
        "pt": "Código",
        "ar": "رمز",
        "ko": "암호"
      } +
      {
        "en": "Products",
        "fr": "Des produits",
        "es": "Productos",
        "de": "Produkte",
        "pt": "Produtos",
        "ar": "منتجات",
        "ko": "제품"
      } +
      {
        "en": "Vendor",
        "fr": "Vendeur",
        "es": "Vendedor",
        "de": "Verkäufer",
        "pt": "Fornecedor",
        "ar": "بائع",
        "ko": "공급 업체"
      } +
      {
        "en": "Note",
        "fr": "Noter",
        "es": "Nota",
        "de": "Hinweis",
        "pt": "Observação",
        "ar": "ملحوظة",
        "ko": "노트"
      } +
      {
        "en": "Chat with vendor",
        "fr": "Discuter avec le fournisseur",
        "es": "Chatear con el proveedor",
        "de": "Chatten Sie mit dem Anbieter",
        "pt": "Converse com o fornecedor",
        "ar": "الدردشة مع البائع",
        "ko": "공급 업체와 채팅"
      } +
      {
        "en": "Customer",
        "fr": "Client",
        "es": "Cliente",
        "de": "Kunde",
        "pt": "Cliente",
        "ar": "عميل",
        "ko": "고객"
      } +
      {
        "en": "Chat with customer",
        "fr": "Discuter avec le client",
        "es": "Chatear con el cliente",
        "de": "Chatten Sie mit dem Kunden",
        "pt": "Converse com o cliente",
        "ar": "الدردشة مع العملاء",
        "ko": "고객과 채팅"
      } +
      {
        "en": "Chat with",
        "fr": "Parler avec",
        "es": "Chatear con",
        "de": "Plaudern mit",
        "pt": "Conversar com",
        "ar": "الدردشة مع",
        "ko": "채팅"
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
        "en": "Package Details",
        "fr": "Détails du package",
        "es": "Detalles del paquete",
        "de": "Paketdetails",
        "pt": "Detalhes de embalagem",
        "ar": "حزمة من التفاصيل",
        "ko": "패키지 세부 정보"
      } +
      {
        "en": "Width",
        "fr": "Largeur",
        "es": "Ancho",
        "de": "Breite",
        "pt": "Largura",
        "ar": "عرض",
        "ko": "폭"
      } +
      {
        "en": "Length",
        "fr": "Longueur",
        "es": "Largo",
        "de": "Länge",
        "pt": "Comprimento",
        "ar": "طول",
        "ko": "길이"
      } +
      {
        "en": "Height",
        "fr": "Hauteur",
        "es": "Altura",
        "de": "Höhe",
        "pt": "Altura",
        "ar": "ارتفاع",
        "ko": "신장"
      } +
      {
        "en": "Weight",
        "fr": "Poids",
        "es": "Peso",
        "de": "Gewicht",
        "pt": "Peso",
        "ar": "وزن",
        "ko": "무게"
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
        "en": "Recipient Name",
        "fr": "Nom du destinataire",
        "es": "Nombre del Recipiente",
        "de": "Name des Empfängers",
        "pt": "Nome do Destinatário",
        "ar": "اسم المستلم",
        "ko": "받는 사람 이름"
      } +
      {
        "en": "Recipient Phone",
        "fr": "Téléphone du destinataire",
        "es": "Teléfono del destinatario",
        "de": "Empfängertelefon",
        "pt": "Telefone Destinatário",
        "ar": "هاتف المستلم",
        "ko": "수신자 전화"
      } +
      {
        "en": "Rate The Vendor",
        "fr": "Évaluez le fournisseur",
        "es": "Califica al vendedor",
        "de": "Bewerten Sie den Anbieter",
        "pt": "Avalie o fornecedor",
        "ar": "قيم البائع",
        "ko": "공급 업체 평가"
      } +
      {
        "en": "Call vendor",
        "fr": "Appeler le vendeur",
        "es": "Llamar al proveedor",
        "de": "Rufen Sie den Anbieter an",
        "pt": "Ligue para o vendedor",
        "ar": "اتصل بالبائع",
        "ko": "공급 업체에 전화"
      } +
      {
        "en": "Swipe To Complete",
        "fr": "Glisser pour terminer",
        "es": "Deslizar para completar",
        "de": "Zum Abschluss wischen",
        "pt": "Deslize para completar",
        "ar": "انتقد لإكمال",
        "ko": "완료하려면 스 와이프"
      } +
      {
        "en": "Swipe To Start",
        "fr": "Faites glisser pour commencer",
        "es": "Deslizar para comenzar",
        "de": "Wischen Sie zum Starten",
        "pt": "Deslize para começar",
        "ar": "انتقد للبدء",
        "ko": "시작하려면 스 와이프"
      } +
      {
        "en": "Vendor Address",
        "fr": "Adresse du fournisseur",
        "es": "Dirección del vendedor",
        "de": "Lieferantenadresse",
        "pt": "Endereço do Vendedor",
        "ar": "عنوان البائع",
        "ko": "공급 업체 주소"
      } +
      {
        "en": "Long Press To Start",
        "fr": "Appuyez longuement pour commencer",
        "es": "Pulsación larga para empezar",
        "de": "Lang drücken, um zu starten",
        "pt": "Pressione longamente para começar",
        "ar": "اضغط لفترة طويلة لبدء",
        "ko": "시작하려면 길게 누르기"
      } +
      {
        "en": "Long Press To Complete",
        "fr": "Appui long pour terminer",
        "es": "Pulsación larga para completar",
        "de": "Zum Drücken lange drücken",
        "pt": "Pressione longamente para concluir",
        "ar": "اضغط لفترة طويلة للإكمال",
        "ko": "완료하려면 길게 누르세요."
      } +
      {
        "en": "Verification Code",
        "fr": "Code de vérification",
        "es": "Código de verificación",
        "de": "Verifizierungs-Schlüssel",
        "pt": "Código de verificação",
        "ar": "شيفرة التأكيد",
        "ko": "확인 코드"
      } +
      {
        "en": "Please enter verification code provided by the customer.",
        "fr": "Veuillez saisir le code de vérification fourni par le client.",
        "es": "Ingrese el código de verificación proporcionado por el cliente.",
        "de":
            "Bitte geben Sie den vom Kunden bereitgestellten Bestätigungscode ein.",
        "pt":
            "Por favor, insira o código de verificação fornecido pelo cliente.",
        "ar": "الرجاء إدخال رمز التحقق المقدم من قبل العميل.",
        "ko": "고객이 제공 한 인증 코드를 입력하십시오."
      } +
      {
        "en": "Verify",
        "fr": "Vérifier",
        "es": "Verificar",
        "de": "Überprüfen",
        "pt": "Verificar",
        "ar": "تحقق",
        "ko": "검증"
      } +
      {
        "en": "Verification Code",
        "fr": "Code de vérification",
        "es": "Código de verificación",
        "de": "Verifizierungs-Schlüssel",
        "pt": "Código de verificação",
        "ar": "شيفرة التأكيد",
        "ko": "확인 코드"
      } +
      {
        "en": "Scan Verification Code",
        "fr": "Scannez le code de vérification",
        "es": "Escanear código de verificación",
        "de": "Scan-Bestätigungscode",
        "pt": "Código de verificação de digitalização",
        "ar": "مسح رمز التحقق",
        "ko": "확인 코드 스캔"
      } +
      {
        "en": "Payment Method",
        "fr": "Mode de paiement",
        "es": "Método de pago",
        "de": "Zahlungsmethode",
        "pt": "Forma de pagamento",
        "ar": "طريقة الدفع او السداد",
        "ko": "결제 방법"
      } +
      {
        "en": "Stop",
        "fr": "Arrêter",
        "es": "Detener",
        "de": "Halt",
        "pt": "Pare",
        "ar": "قف",
        "ko": "중지"
      } +
      {
        "en": "Contact Info",
        "fr": "Informations de contact",
        "es": "Datos de contacto",
        "de": "Kontaktinformation",
        "pt": "Informação de contato",
        "ar": "معلومات الاتصال",
        "ko": "연락처 정보"
      } +
      {
        "en": "Topup Customer Wallet",
        "fr": "Recharger le portefeuille client",
        "es": "Recarga de cartera de cliente",
        "de": "Kunden-Wallet aufladen",
        "pt": "Carteira de cliente de recarga",
        "ar": "محفظة العملاء اشحن رصيدك",
        "ko": "충전 고객 지갑"
      } +
      {
        "en": "Pickup Address",
        "fr": "Adresse de retrait",
        "es": "Dirección de entrega",
        "de": "Abholadresse",
        "pt": "Endereço de retirada",
        "ar": "عنوان الاستلام",
        "ko": "픽업 주소"
      } +
      {
        "en": "Dropoff Address",
        "fr": "Adresse de dépôt",
        "es": "Dirección de entrega",
        "de": "Abgabeadresse",
        "pt": "Endereço de entrega",
        "ar": "عنوان الإنزال",
        "ko": "하차 주소"
      } +
      {
        "en": "Trip Details",
        "fr": "Détails du voyage",
        "es": "Detalles del viaje",
        "de": "Reisedetails",
        "pt": "Detalhes da viagem",
        "ar": "تفاصيل الرحلة",
        "ko": "여행 세부 정보",
        "my": "ခရီးစဉ်အသေးစိတ်"
      } +
      {
        "en": "completed",
        "fr": "complété",
        "es": "terminado",
        "de": "vollendet",
        "pt": "completado",
        "ar": "منجز",
        "ko": "완전한",
        "my": "ပြီးစီး"
      } +
      {
        "en": "scheduled",
        "fr": "programmé",
        "es": "programado",
        "de": "geplant",
        "pt": "agendado",
        "ar": "المقرر",
        "ko": "예정"
      } +
      {
        "en": "pending",
        "fr": "en attendant",
        "es": "pendiente",
        "de": "steht aus",
        "pt": "pendente",
        "ar": "ريثما",
        "ko": "보류 중"
      } +
      {
        "en": "preparing",
        "fr": "en train de préparer",
        "es": "preparando",
        "de": "vorbereiten",
        "pt": "preparando",
        "ar": "خطة",
        "ko": "준비"
      } +
      {
        "en": "ready",
        "fr": "prêt",
        "es": "Listo",
        "de": "bereit",
        "pt": "pronto",
        "ar": "جاهز",
        "ko": "준비된"
      } +
      {
        "en": "enroute",
        "fr": "en route",
        "es": "en camino",
        "de": "unterwegs",
        "pt": "a caminho",
        "ar": "في المسار",
        "ko": "도중에"
      } +
      {
        "en": "failed",
        "fr": "manqué",
        "es": "ha fallado",
        "de": "gescheitert",
        "pt": "fracassado",
        "ar": "باءت بالفشل",
        "ko": "실패한"
      } +
      {
        "en": "delivered",
        "fr": "livré",
        "es": "entregado",
        "de": "geliefert",
        "pt": "entregue",
        "ar": "تم التوصيل",
        "ko": "배달"
      } +
      {
        "en": "successful",
        "fr": "à succès",
        "es": "exitoso",
        "de": "erfolgreich",
        "pt": "bem sucedido",
        "ar": "ناجح",
        "ko": "성공한"
      } +
      {
        "en": "cancelled",
        "fr": "annulé",
        "es": "cancelado",
        "de": "abgesagt",
        "pt": "cancelado",
        "ar": "ألغيت",
        "ko": "취소 된"
      } +
      {
        "en": "scheduled",
        "fr": "programmé",
        "es": "programado",
        "de": "geplant",
        "pt": "agendado",
        "ar": "المقرر",
        "ko": "예정"
      } +
      {
        "en": "ready",
        "fr": "prêt",
        "es": "Listo",
        "de": "bereit",
        "pt": "pronto",
        "ar": "جاهز",
        "ko": "준비가 된",
        "my": "အဆင်သင့်"
      } +
      {
        "en": "Order Verification",
        "fr": "Vérification de la commande",
        "es": "Verificación de pedidos",
        "de": "Auftragsbestätigung",
        "pt": "Verificação de pedido",
        "ar": "التحقق من الطلب",
        "ko": "주문 확인",
        "my": "အမိန့်အတည်ပြုခြင်း။"
      } +
      {
        "en": "Customer signature",
        "fr": "Signature du client",
        "es": "Firma del cliente",
        "de": "Unterschrift des Kunden",
        "pt": "Assinatura do cliente",
        "ar": "توقيع العميل",
        "ko": "고객 서명",
        "my": "ဖောက်သည်လက်မှတ်"
      } +
      {
        "en": "Submit",
        "fr": "Soumettre",
        "es": "Enviar",
        "de": "einreichen",
        "pt": "Enviar",
        "ar": "يقدم",
        "ko": "제출하다",
        "my": "တင်ပြပါ။"
      } +
      {
        "en": "Long press to submit",
        "fr": "Appui long pour soumettre",
        "es": "Mantenga pulsado para enviar",
        "de": "Zum Senden lange drücken",
        "pt": "Pressione e segure para enviar",
        "ar": "اضغط مع الاستمرار للإرسال",
        "ko": "길게 눌러 제출",
        "my": "တင်သွင်းရန် ကြာကြာနှိပ်ပါ။"
      } +
      {
        "en": "Photo",
        "fr": "photo",
        "es": "Foto",
        "de": "Foto",
        "pt": "foto",
        "ar": "صورة فوتوغرافية",
        "ko": "사진"
      } +
      {
        "en": "Take a shot",
        "fr": "Prendre une photo",
        "es": "Toma un trago",
        "de": "Mach ein Bild",
        "pt": "Arrisque",
        "ar": "أخذ لقطة",
        "ko": "촬영"
      } +
      {
        "en": "Order completed successfully",
        "fr": "Commande terminée avec succès",
        "es": "Pedido completado con éxito",
        "de": "Bestellung erfolgreich abgeschlossen",
        "pt": "Pedido concluído com sucesso",
        "ar": "اكتمل الطلب بنجاح",
        "ko": "주문 완료",
        "my": "အော်ဒါ အောင်မြင်စွာ ပြီးပါပြီ။"
      } +
      {
        "en": "Order Payment",
        "fr": "Paiement de la commande",
        "es": "Orden de pago",
        "de": "Zahlung bestellen",
        "pt": "Ordem de pagamento",
        "ar": "دفع النظام",
        "ko": "주문 결제",
        "my": "အော်ဒါငွေပေးချေပါ။"
      } +
      {
        "en": "Payment method",
        "fr": "Mode de paiement",
        "es": "Método de pago",
        "de": "Zahlungsmethode",
        "pt": "Forma de pagamento",
        "ar": "طريقة الدفع او السداد",
        "ko": "지불 방법",
        "my": "ငွေပေးချေစနစ်"
      } +
      {
        "en": "Instruction",
        "fr": "Instruction",
        "es": "Instrucción",
        "de": "Anweisung",
        "pt": "Instrução",
        "ar": "تعليمات",
        "ko": "지침",
        "my": "ပို့ချသည်။"
      } +
      {
        "en":
            "Please confirm you have collected order amount from customer. Once you confirm order will be marked as completed/delivered",
        "fr":
            "Veuillez confirmer que vous avez collecté le montant de la commande auprès du client. Une fois la commande confirmée, elle sera marquée comme terminée/livrée",
        "es":
            "Confirme que ha cobrado el monto del pedido del cliente. Una vez que confirme el pedido, se marcará como completado/entregado",
        "de":
            "Bitte bestätigen Sie, dass Sie den Bestellbetrag vom Kunden eingezogen haben. Sobald Sie die Bestellung bestätigen, wird sie als abgeschlossen/geliefert markiert",
        "pt":
            "Por favor, confirme que você coletou o valor do pedido do cliente. Assim que você confirmar o pedido será marcado como concluído/entregue",
        "ar":
            "يرجى تأكيد أنك جمعت مبلغ الطلب من العميل. بمجرد تأكيد الطلب ، سيتم تمييزه على أنه مكتمل / تم تسليمه",
        "ko": "고객으로부터 주문 금액을 수령했는지 확인하십시오. 주문을 확인하면 완료/배송됨으로 표시됩니다.",
        "my":
            "ဝယ်ယူသူထံမှ မှာယူမှုပမာဏကို သင်စုဆောင်းထားကြောင်း အတည်ပြုပါ။ မှာယူမှုကို အတည်ပြုပြီးသည်နှင့် ပြီးစီး/ပေးပို့ခြင်းအဖြစ် အမှတ်အသားပြုပါမည်။"
      } +
      {
        "en": "Yes, Collected",
        "fr": "Oui, collecté",
        "es": "Sí, recogido",
        "de": "Ja, gesammelt",
        "pt": "Sim, coletado",
        "ar": "نعم ، مجمعة",
        "ko": "예, 수집됨",
        "my": "ဟုတ်ကဲ့ စုစည်းထားပါတယ်။"
      } +
      {
        "en": "Amount",
        "fr": "Quantité",
        "es": "Monto",
        "de": "Höhe",
        "pt": "Montante",
        "ar": "مقدار",
        "ko": "양",
        "my": "ပမာဏ"
      };

  String get i18n => localize(this, _t);
  String fill(List<Object> params) => localizeFill(this, params);
}
