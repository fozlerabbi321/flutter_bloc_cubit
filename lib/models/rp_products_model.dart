class RpProductsModel {
  RpProductsModel({
      String? status, 
      Data? data,}){
    _status = status;
    _data = data;
}

  RpProductsModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _status;
  Data? _data;

  String? get status => _status;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      Products? products,}){
    _products = products;
}

  Data.fromJson(dynamic json) {
    _products = json['products'] != null ? Products.fromJson(json['products']) : null;
  }
  Products? _products;

  Products? get products => _products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_products != null) {
      map['products'] = _products?.toJson();
    }
    return map;
  }

}

class Products {
  Products({
      int? count, 
      String? next, 
      String? previous, 
      List<ProductList>? productList,}){
    _count = count;
    _next = next;
    _previous = previous;
    _productList = productList;
}

  Products.fromJson(dynamic json) {
    _count = json['count'];
    _next = json['next'];
    _previous = json['previous'];
    if (json['results'] != null) {
      _productList = [];
      json['results'].forEach((v) {
        _productList?.add(ProductList.fromJson(v));
      });
    }
  }
  int? _count;
  String? _next;
  String? _previous;
  List<ProductList>? _productList;

  int? get count => _count;
  String? get next => _next;
  String? get previous => _previous;
  List<ProductList>? get productList => _productList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = _count;
    map['next'] = _next;
    map['previous'] = _previous;
    if (_productList != null) {
      map['results'] = _productList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class ProductList {
  ProductList({
      int? id, 
      Brand? brand, 
      String? image, 
      Charge? charge, 
      List<Images>? images, 
      String? slug, 
      String? productName, 
      String? model, 
      String? commissionType, 
      String? quantity, 
      String? tag, 
      String? description, 
      String? note, 
      String? embaddedVideoLink, 
      int? maximumOrder, 
      int? stock, 
      bool? isBackOrder, 
      String? specification, 
      String? warranty, 
      bool? preOrder, 
      int? productReview, 
      bool? isSeller, 
      bool? isPhone, 
      bool? willShowEmi, 
      dynamic badge, 
      bool? isActive, 
      String? createdAt, 
      String? updatedAt, 
      dynamic language, 
      String? seller, 
      dynamic combo, 
      String? createdBy, 
      dynamic updatedBy,}){
    _id = id;
    _brand = brand;
    _image = image;
    _charge = charge;
    _images = images;
    _slug = slug;
    _productName = productName;
    _model = model;
    _commissionType = commissionType;
    _quantity = quantity;
    _tag = tag;
    _description = description;
    _note = note;
    _embaddedVideoLink = embaddedVideoLink;
    _maximumOrder = maximumOrder;
    _stock = stock;
    _isBackOrder = isBackOrder;
    _specification = specification;
    _warranty = warranty;
    _preOrder = preOrder;
    _productReview = productReview;
    _isSeller = isSeller;
    _isPhone = isPhone;
    _willShowEmi = willShowEmi;
    _badge = badge;
    _isActive = isActive;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _language = language;
    _seller = seller;
    _combo = combo;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
}

  ProductList.fromJson(dynamic json) {
    _id = json['id'];
    _brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    _image = json['image'];
    _charge = json['charge'] != null ? Charge.fromJson(json['charge']) : null;
    if (json['images'] != null) {
      _images = [];
      json['images'].forEach((v) {
        _images?.add(Images.fromJson(v));
      });
    }
    _slug = json['slug'];
    _productName = json['product_name'];
    _model = json['model'];
    _commissionType = json['commission_type'];
    _quantity = json['quantity'];
    _tag = json['tag'];
    _description = json['description'];
    _note = json['note'];
    _embaddedVideoLink = json['embadded_video_link'];
    _maximumOrder = json['maximum_order'];
    _stock = json['stock'];
    _isBackOrder = json['is_back_order'];
    _specification = json['specification'];
    _warranty = json['warranty'];
    _preOrder = json['pre_order'];
    _productReview = json['product_review'];
    _isSeller = json['is_seller'];
    _isPhone = json['is_phone'];
    _willShowEmi = json['will_show_emi'];
    _badge = json['badge'];
    _isActive = json['is_active'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _language = json['language'];
    _seller = json['seller'];
    _combo = json['combo'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
  }
  int? _id;
  Brand? _brand;
  String? _image;
  Charge? _charge;
  List<Images>? _images;
  String? _slug;
  String? _productName;
  String? _model;
  String? _commissionType;
  String? _quantity;
  String? _tag;
  String? _description;
  String? _note;
  String? _embaddedVideoLink;
  int? _maximumOrder;
  int? _stock;
  bool? _isBackOrder;
  String? _specification;
  String? _warranty;
  bool? _preOrder;
  int? _productReview;
  bool? _isSeller;
  bool? _isPhone;
  bool? _willShowEmi;
  dynamic _badge;
  bool? _isActive;
  String? _createdAt;
  String? _updatedAt;
  dynamic _language;
  String? _seller;
  dynamic _combo;
  String? _createdBy;
  dynamic _updatedBy;

  int? get id => _id;
  Brand? get brand => _brand;
  String? get image => _image;
  Charge? get charge => _charge;
  List<Images>? get images => _images;
  String? get slug => _slug;
  String? get productName => _productName;
  String? get model => _model;
  String? get commissionType => _commissionType;
  String? get quantity => _quantity;
  String? get tag => _tag;
  String? get description => _description;
  String? get note => _note;
  String? get embaddedVideoLink => _embaddedVideoLink;
  int? get maximumOrder => _maximumOrder;
  int? get stock => _stock;
  bool? get isBackOrder => _isBackOrder;
  String? get specification => _specification;
  String? get warranty => _warranty;
  bool? get preOrder => _preOrder;
  int? get productReview => _productReview;
  bool? get isSeller => _isSeller;
  bool? get isPhone => _isPhone;
  bool? get willShowEmi => _willShowEmi;
  dynamic get badge => _badge;
  bool? get isActive => _isActive;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get language => _language;
  String? get seller => _seller;
  dynamic get combo => _combo;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_brand != null) {
      map['brand'] = _brand?.toJson();
    }
    map['image'] = _image;
    if (_charge != null) {
      map['charge'] = _charge?.toJson();
    }
    if (_images != null) {
      map['images'] = _images?.map((v) => v.toJson()).toList();
    }
    map['slug'] = _slug;
    map['product_name'] = _productName;
    map['model'] = _model;
    map['commission_type'] = _commissionType;
    map['quantity'] = _quantity;
    map['tag'] = _tag;
    map['description'] = _description;
    map['note'] = _note;
    map['embadded_video_link'] = _embaddedVideoLink;
    map['maximum_order'] = _maximumOrder;
    map['stock'] = _stock;
    map['is_back_order'] = _isBackOrder;
    map['specification'] = _specification;
    map['warranty'] = _warranty;
    map['pre_order'] = _preOrder;
    map['product_review'] = _productReview;
    map['is_seller'] = _isSeller;
    map['is_phone'] = _isPhone;
    map['will_show_emi'] = _willShowEmi;
    map['badge'] = _badge;
    map['is_active'] = _isActive;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['language'] = _language;
    map['seller'] = _seller;
    map['combo'] = _combo;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    return map;
  }

}

class Images {
  Images({
      int? id, 
      String? image, 
      bool? isPrimary, 
      int? product,}){
    _id = id;
    _image = image;
    _isPrimary = isPrimary;
    _product = product;
}

  Images.fromJson(dynamic json) {
    _id = json['id'];
    _image = json['image'];
    _isPrimary = json['is_primary'];
    _product = json['product'];
  }
  int? _id;
  String? _image;
  bool? _isPrimary;
  int? _product;

  int? get id => _id;
  String? get image => _image;
  bool? get isPrimary => _isPrimary;
  int? get product => _product;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['image'] = _image;
    map['is_primary'] = _isPrimary;
    map['product'] = _product;
    return map;
  }

}

class Charge {
  Charge({
      String? bookingPrice,
      String? currentCharge,
      dynamic discountCharge, 
      String? sellingPrice,
      String? profit,
      bool? isEvent, 
      dynamic eventId, 
      bool? highlight, 
      dynamic highlightId, 
      bool? groupping, 
      dynamic grouppingId, 
      dynamic campaignSectionId, 
      bool? campaignSection, 
      dynamic message,}){
    _bookingPrice = bookingPrice;
    _currentCharge = currentCharge;
    _discountCharge = discountCharge;
    _sellingPrice = sellingPrice;
    _profit = profit;
    _isEvent = isEvent;
    _eventId = eventId;
    _highlight = highlight;
    _highlightId = highlightId;
    _groupping = groupping;
    _grouppingId = grouppingId;
    _campaignSectionId = campaignSectionId;
    _campaignSection = campaignSection;
    _message = message;
}

  Charge.fromJson(dynamic json) {
    _bookingPrice = json['booking_price'] != null ? json['booking_price'].toString() : '0';
    _currentCharge = json['current_charge'] != null ? json['current_charge'].toString() : '0';
    _discountCharge = json['discount_charge'];
    _sellingPrice = json['selling_price'] != null ? json['selling_price'].toString() : '0';
    _profit = json['profit'] != null ? json['profit'].toString() : '0';
    _isEvent = json['is_event'];
    _eventId = json['event_id'];
    _highlight = json['highlight'];
    _highlightId = json['highlight_id'];
    _groupping = json['groupping'];
    _grouppingId = json['groupping_id'];
    _campaignSectionId = json['campaign_section_id'];
    _campaignSection = json['campaign_section'];
    _message = json['message'];
  }
  String? _bookingPrice;
  String? _currentCharge;
  dynamic _discountCharge;
  String? _sellingPrice;
  String? _profit;
  bool? _isEvent;
  dynamic _eventId;
  bool? _highlight;
  dynamic _highlightId;
  bool? _groupping;
  dynamic _grouppingId;
  dynamic _campaignSectionId;
  bool? _campaignSection;
  dynamic _message;

  String? get bookingPrice => _bookingPrice;
  String? get currentCharge => _currentCharge;
  dynamic get discountCharge => _discountCharge;
  String? get sellingPrice => _sellingPrice;
  String? get profit => _profit;
  bool? get isEvent => _isEvent;
  dynamic get eventId => _eventId;
  bool? get highlight => _highlight;
  dynamic get highlightId => _highlightId;
  bool? get groupping => _groupping;
  dynamic get grouppingId => _grouppingId;
  dynamic get campaignSectionId => _campaignSectionId;
  bool? get campaignSection => _campaignSection;
  dynamic get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['booking_price'] = _bookingPrice;
    map['current_charge'] = _currentCharge;
    map['discount_charge'] = _discountCharge;
    map['selling_price'] = _sellingPrice;
    map['profit'] = _profit;
    map['is_event'] = _isEvent;
    map['event_id'] = _eventId;
    map['highlight'] = _highlight;
    map['highlight_id'] = _highlightId;
    map['groupping'] = _groupping;
    map['groupping_id'] = _grouppingId;
    map['campaign_section_id'] = _campaignSectionId;
    map['campaign_section'] = _campaignSection;
    map['message'] = _message;
    return map;
  }

}

class Brand {
  Brand({
      String? name, 
      String? image, 
      dynamic headerImage, 
      String? slug,}){
    _name = name;
    _image = image;
    _headerImage = headerImage;
    _slug = slug;
}

  Brand.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _headerImage = json['header_image'];
    _slug = json['slug'];
  }
  String? _name;
  String? _image;
  dynamic _headerImage;
  String? _slug;

  String? get name => _name;
  String? get image => _image;
  dynamic get headerImage => _headerImage;
  String? get slug => _slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['header_image'] = _headerImage;
    map['slug'] = _slug;
    return map;
  }

}