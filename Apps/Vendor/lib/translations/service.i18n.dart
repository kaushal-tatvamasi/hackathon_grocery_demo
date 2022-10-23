import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  //en,fr,es,de
  static var _t = Translations("en") +
      {
        "en": "New Service",
        "fr": "Nouveau service",
        "es": "Nuevo servicio",
        "de": "Neuer Dienst",
        "pt": "Novo Serviço",
        "ar": "خدمة جديدة",
        "ko": "새로운 서비스"
      } +
      {
        "en": "Services",
        "fr": "Prestations de service",
        "es": "Servicios",
        "de": "Dienstleistungen",
        "pt": "Serviços",
        "ar": "خدمات",
        "ko": "서비스"
      } +
      {
        "en": "Off",
        "fr": "Désactivé",
        "es": "Apagado",
        "de": "aus",
        "pt": "Desligado",
        "ar": "اطفء",
        "ko": "끄다"
      } +
      {
        "en": "Edit",
        "fr": "Éditer",
        "es": "Editar",
        "de": "Bearbeiten",
        "pt": "Editar",
        "ar": "يحرر",
        "ko": "편집하다"
      } +
      {
        "en": "Delete",
        "fr": "Effacer",
        "es": "Borrar",
        "de": "Löschen",
        "pt": "Excluir",
        "ar": "حذف",
        "ko": "삭제"
      } +
      {
        "en": "Delete Service",
        "fr": "Supprimer le service",
        "es": "Eliminar servicio",
        "de": "Dienst löschen",
        "pt": "Excluir serviço",
        "ar": "حذف الخدمة",
        "ko": "서비스 삭제"
      } +
      {
        "en": "Are you sure you want to delete service?",
        "fr": "Voulez-vous vraiment supprimer le service ?",
        "es": "¿Estás seguro de que deseas eliminar el servicio?",
        "de": "Möchten Sie den Dienst wirklich löschen?",
        "pt": "Tem certeza que deseja excluir o serviço?",
        "ar": "هل أنت متأكد أنك تريد حذف الخدمة؟",
        "ko": "서비스를 삭제하시겠습니까?"
      } +
      {
        "en": "Edit Service",
        "fr": "Modifier le service",
        "es": "Editar servicio",
        "de": "Dienst bearbeiten",
        "pt": "Editar serviço",
        "ar": "تحرير الخدمة",
        "ko": "서비스 수정"
      } +
      {
        "en": "Name",
        "fr": "Nom",
        "es": "Nombre",
        "de": "Name",
        "pt": "Nome",
        "ar": "اسم",
        "ko": "이름"
      } +
      {
        "en": "Description",
        "fr": "La description",
        "es": "Descripción",
        "de": "Beschreibung",
        "pt": "Descrição",
        "ar": "وصف",
        "ko": "기술"
      } +
      {
        "en": "Price",
        "fr": "Prix",
        "es": "Precio",
        "de": "Preis",
        "pt": "Preço",
        "ar": "سعر",
        "ko": "가격"
      } +
      {
        "en": "Discount Price",
        "fr": "Prix bas",
        "es": "Precio de descuento",
        "de": "Reduzierter Preis",
        "pt": "Preço com desconto",
        "ar": "سعر الخصم",
        "ko": "할인 가격"
      } +
      {
        "en": "Active",
        "fr": "actif",
        "es": "Activo",
        "de": "Aktiv",
        "pt": "Ativo",
        "ar": "نشيط",
        "ko": "유효한"
      } +
      {
        "en": "Category",
        "fr": "Catégorie",
        "es": "Categoría",
        "de": "Kategorie",
        "pt": "Categoria",
        "ar": "فئة",
        "ko": "범주"
      } +
      {
        "en": "Per Hour",
        "fr": "Par heure",
        "es": "Por hora",
        "de": "Pro Stunde",
        "pt": "Por hora",
        "ar": "في الساعة",
        "ko": "시간당"
      } +
      {
        "en": "Save",
        "fr": "sauvegarder",
        "es": "Ahorrar",
        "de": "Speichern",
        "pt": "Salve ",
        "ar": "يحفظ",
        "ko": "구하다"
      } +
      {
        "en": "New Service",
        "fr": "Nouveau service",
        "es": "Nuevo servicio",
        "de": "Neuer Dienst",
        "pt": "Novo Serviço",
        "ar": "خدمة جديدة",
        "ko": "새로운 서비스"
      } +
      {
        "en": "Save",
        "fr": "sauvegarder",
        "es": "Ahorrar",
        "de": "Speichern",
        "pt": "Salve ",
        "ar": "يحفظ",
        "ko": "구하다"
      }+
      {
        "en": "Please select at least one photo for service",
        "fr": "Veuillez sélectionner au moins une photo pour le service",
        "es": "Seleccione al menos una foto para el servicio",
        "de": "Bitte wählen Sie mindestens ein Foto für den Service aus",
        "pt": "Selecione pelo menos uma foto para o serviço",
        "ar": "الرجاء تحديد صورة واحدة على الأقل للخدمة",
        "ko": "서비스할 사진을 하나 이상 선택하세요."
      };

  String get i18n => localize(this, _t);
  String fill(List<Object> params) => localizeFill(this, params);
}
