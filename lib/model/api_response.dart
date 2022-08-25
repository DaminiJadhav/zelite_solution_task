// To parse this JSON data, do
//
//     final apiResponse = apiResponseFromJson(jsonString);

import 'dart:convert';

List<ApiResponse> apiResponseFromJson(String str) => List<ApiResponse>.from(json.decode(str).map((x) => ApiResponse.fromJson(x)));

String apiResponseToJson(List<ApiResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiResponse {
  ApiResponse({
    this.id,
    this.date,
    this.dateGmt,
    this.guid,
    this.modified,
    this.modifiedGmt,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.content,
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.commentStatus,
    this.pingStatus,
    this.sticky,
    this.template,
    this.format,
    this.meta,
    this.categories,
    this.tags,
    this.crunchbaseTag,
    this.tcStoriesTax,
    this.tcEcCategory,
    this.tcEvent,
    this.tcRegionsTax,
    this.jetpackFeaturedMediaUrl,
    this.parsely,
    this.shortlink,
    this.rapidData,
    this.premiumContent,
    this.premiumCutoffPercent,
    this.featured,
    this.subtitle,
    this.seoTitle,
    this.editorialContentProvider,
    this.seoDescription,
    this.tcCbMapping,
    this.associatedEvent,
    this.event,
    this.authors,
    this.hideFeaturedImage,
    this.canonicalUrl,
    this.links,
  });

  dynamic? id;
  DateTime ?date;
  DateTime ?dateGmt;
  Guid ?guid;
  DateTime? modified;
  DateTime ?modifiedGmt;
  String ?slug;
  String? status;
  String ?type;
  String? link;
  Guid ?title;
  Content ?content;
  Content ?excerpt;
  dynamic ?author;
  dynamic? featuredMedia;
  String? commentStatus;
  String ?pingStatus;
  dynamic? sticky;
  String? template;
  String ?format;
  ApiResponseMeta ?meta;
  List<dynamic> ?categories;
  List<dynamic>? tags;
  List<dynamic> ?crunchbaseTag;
  List<dynamic> ?tcStoriesTax;
  List<dynamic>? tcEcCategory;
  List<dynamic> ?tcEvent;
  List<dynamic>? tcRegionsTax;
  String? jetpackFeaturedMediaUrl;
  Parsely ?parsely;
  String? shortlink;
  RapidData? rapidData;
  dynamic ?premiumContent;
  dynamic? premiumCutoffPercent;
  dynamic ?featured;
  String? subtitle;
  String? seoTitle;
  String ?editorialContentProvider;
  String? seoDescription;
  List<dynamic> ?tcCbMapping;
  dynamic? associatedEvent;
  dynamic? event;
  List<dynamic> ?authors;
  dynamic ?hideFeaturedImage;
  String? canonicalUrl;
  Links ?links;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
    id: json["id"],
    date: DateTime.parse(json["date"]),
    dateGmt: DateTime.parse(json["date_gmt"]),
    guid: Guid.fromJson(json["guid"]),
    modified: DateTime.parse(json["modified"]),
    modifiedGmt: DateTime.parse(json["modified_gmt"]),
    slug: json["slug"],
    status: json["status"],
    type: json["type"],
    link: json["link"],
    title: Guid.fromJson(json["title"]),
    content: Content.fromJson(json["content"]),
    excerpt: Content.fromJson(json["excerpt"]),
    author: json["author"],
    featuredMedia: json["featured_media"],
    commentStatus: json["comment_status"],
    pingStatus: json["ping_status"],
    sticky: json["sticky"],
    template: json["template"],
    format: json["format"],
    meta: ApiResponseMeta.fromJson(json["meta"]),
    categories: List<dynamic>.from(json["categories"].map((x) => x)),
    tags: List<dynamic>.from(json["tags"].map((x) => x)),
    crunchbaseTag: List<dynamic>.from(json["crunchbase_tag"].map((x) => x)),
    tcStoriesTax: List<dynamic>.from(json["tc_stories_tax"].map((x) => x)),
    tcEcCategory: List<dynamic>.from(json["tc_ec_category"].map((x) => x)),
    tcEvent: List<dynamic>.from(json["tc_event"].map((x) => x)),
    tcRegionsTax: List<dynamic>.from(json["tc_regions_tax"].map((x) => x)),
    jetpackFeaturedMediaUrl: json["jetpack_featured_media_url"],
    parsely: Parsely.fromJson(json["parsely"]),
    shortlink: json["shortlink"],
    rapidData: RapidData.fromJson(json["rapidData"]),
    premiumContent: json["premiumContent"],
    premiumCutoffPercent: json["premiumCutoffPercent"],
    featured: json["featured"],
    subtitle: json["subtitle"],
    seoTitle: json["seoTitle"],
    editorialContentProvider: json["editorialContentProvider"],
    seoDescription: json["seoDescription"],
    tcCbMapping: List<dynamic>.from(json["tc_cb_mapping"].map((x) => x)),
    associatedEvent: json["associatedEvent"],
    event: json["event"],
    authors: List<dynamic>.from(json["authors"].map((x) => x)),
    hideFeaturedImage: json["hide_featured_image"],
    canonicalUrl: json["canonical_url"],
    links: Links.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date": date!.toIso8601String(),
    "date_gmt": dateGmt!.toIso8601String(),
    "guid": guid!.toJson(),
    "modified": modified!.toIso8601String(),
    "modified_gmt": modifiedGmt!.toIso8601String(),
    "slug": slug,
    "status": status,
    "type": type,
    "link": link,
    "title": title!.toJson(),
    "content": content!.toJson(),
    "excerpt": excerpt!.toJson(),
    "author": author,
    "featured_media": featuredMedia,
    "comment_status": commentStatus,
    "ping_status": pingStatus,
    "sticky": sticky,
    "template": template,
    "format": format,
    "meta": meta!.toJson(),
    "categories": List<dynamic>.from(categories!.map((x) => x)),
    "tags": List<dynamic>.from(tags!.map((x) => x)),
    "crunchbase_tag": List<dynamic>.from(crunchbaseTag!.map((x) => x)),
    "tc_stories_tax": List<dynamic>.from(tcStoriesTax!.map((x) => x)),
    "tc_ec_category": List<dynamic>.from(tcEcCategory!.map((x) => x)),
    "tc_event": List<dynamic>.from(tcEvent!.map((x) => x)),
    "tc_regions_tax": List<dynamic>.from(tcRegionsTax!.map((x) => x)),
    "jetpack_featured_media_url": jetpackFeaturedMediaUrl,
    "parsely": parsely!.toJson(),
    "shortlink": shortlink,
    "rapidData": rapidData!.toJson(),
    "premiumContent": premiumContent,
    "premiumCutoffPercent": premiumCutoffPercent,
    "featured": featured,
    "subtitle": subtitle,
    "seoTitle": seoTitle,
    "editorialContentProvider": editorialContentProvider,
    "seoDescription": seoDescription,
    "tc_cb_mapping": List<dynamic>.from(tcCbMapping!.map((x) => x)),
    "associatedEvent": associatedEvent,
    "event": event,
    "authors": List<dynamic>.from(authors!.map((x) => x)),
    "hide_featured_image": hideFeaturedImage,
    "canonical_url": canonicalUrl,
    "_links": links!.toJson(),
  };
}

class Content {
  Content({
    this.rendered,
    this.protected,
  });

  String ?rendered;
  dynamic ?protected;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    rendered: json["rendered"],
    protected: json["protected"],
  );

  Map<String, dynamic> toJson() => {
    "rendered": rendered,
    "protected": protected,
  };
}

class Guid {
  Guid({
    this.rendered,
  });

  String ?rendered;

  factory Guid.fromJson(Map<String, dynamic> json) => Guid(
    rendered: json["rendered"],
  );

  Map<String, dynamic> toJson() => {
    "rendered": rendered,
  };
}

class Links {
  Links({
    this.self,
    this.collection,
    this.about,
    this.replies,
    this.versionHistory,
    this.predecessorVersion,
    this.authors,
    this.httpsTechcrunchComEdit,
    this.author,
    this.wpFeaturedmedia,
    this.wpAttachment,
    this.wpTerm,
    this.curies,
  });

  List<About> ?self;
  List<About> ?collection;
  List<About>? about;
  List<ReplyElement>? replies;
  List<VersionHistory> ?versionHistory;
  List<PredecessorVersion>? predecessorVersion;
  List<ReplyElement>? authors;
  List<About> ?httpsTechcrunchComEdit;
  List<ReplyElement>? author;
  List<ReplyElement>? wpFeaturedmedia;
  List<About> ?wpAttachment;
  List<WpTerm>? wpTerm;
  List<Cury>? curies;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    self: List<About>.from(json["self"].map((x) => About.fromJson(x))),
    collection: List<About>.from(json["collection"].map((x) => About.fromJson(x))),
    about: List<About>.from(json["about"].map((x) => About.fromJson(x))),
    replies: List<ReplyElement>.from(json["replies"].map((x) => ReplyElement.fromJson(x))),
    versionHistory: List<VersionHistory>.from(json["version-history"].map((x) => VersionHistory.fromJson(x))),
    predecessorVersion: List<PredecessorVersion>.from(json["predecessor-version"].map((x) => PredecessorVersion.fromJson(x))),
    authors: List<ReplyElement>.from(json["authors"].map((x) => ReplyElement.fromJson(x))),
    httpsTechcrunchComEdit: List<About>.from(json["https://techcrunch.com/edit"].map((x) => About.fromJson(x))),
    author: List<ReplyElement>.from(json["author"].map((x) => ReplyElement.fromJson(x))),
    wpFeaturedmedia: List<ReplyElement>.from(json["wp:featuredmedia"].map((x) => ReplyElement.fromJson(x))),
    wpAttachment: List<About>.from(json["wp:attachment"].map((x) => About.fromJson(x))),
    wpTerm: List<WpTerm>.from(json["wp:term"].map((x) => WpTerm.fromJson(x))),
    curies: List<Cury>.from(json["curies"].map((x) => Cury.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": List<dynamic>.from(self!.map((x) => x.toJson())),
    "collection": List<dynamic>.from(collection!.map((x) => x.toJson())),
    "about": List<dynamic>.from(about!.map((x) => x.toJson())),
    "replies": List<dynamic>.from(replies!.map((x) => x.toJson())),
    "version-history": List<dynamic>.from(versionHistory!.map((x) => x.toJson())),
    "predecessor-version": List<dynamic>.from(predecessorVersion!.map((x) => x.toJson())),
    "authors": List<dynamic>.from(authors!.map((x) => x.toJson())),
    "https://techcrunch.com/edit": List<dynamic>.from(httpsTechcrunchComEdit!.map((x) => x.toJson())),
    "author": List<dynamic>.from(author!.map((x) => x.toJson())),
    "wp:featuredmedia": List<dynamic>.from(wpFeaturedmedia!.map((x) => x.toJson())),
    "wp:attachment": List<dynamic>.from(wpAttachment!.map((x) => x.toJson())),
    "wp:term": List<dynamic>.from(wpTerm!.map((x) => x.toJson())),
    "curies": List<dynamic>.from(curies!.map((x) => x.toJson())),
  };
}

class About {
  About({
    this.href,
  });

  String ?href;

  factory About.fromJson(Map<String, dynamic> json) => About(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

class ReplyElement {
  ReplyElement({
    this.embeddable,
    this.href,
  });

  dynamic ?embeddable;
  String ?href;

  factory ReplyElement.fromJson(Map<String, dynamic> json) => ReplyElement(
    embeddable: json["embeddable"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "embeddable": embeddable,
    "href": href,
  };
}

class Cury {
  Cury({
    this.name,
    this.href,
    this.templated,
  });

  String? name;
  String? href;
  dynamic ?templated;

  factory Cury.fromJson(Map<String, dynamic> json) => Cury(
    name: json["name"],
    href: json["href"],
    templated: json["templated"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "href": href,
    "templated": templated,
  };
}

class PredecessorVersion {
  PredecessorVersion({
    this.id,
    this.href,
  });

  dynamic ?id;
  String ?href;

  factory PredecessorVersion.fromJson(Map<String, dynamic> json) => PredecessorVersion(
    id: json["id"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "href": href,
  };
}

class VersionHistory {
  VersionHistory({
    this.count,
    this.href,
  });

  dynamic? count;
  String ?href;

  factory VersionHistory.fromJson(Map<String, dynamic> json) => VersionHistory(
    count: json["count"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "href": href,
  };
}

class WpTerm {
  WpTerm({
    this.taxonomy,
    this.embeddable,
    this.href,
  });

  String ?taxonomy;
  dynamic ?embeddable;
  String? href;

  factory WpTerm.fromJson(Map<String, dynamic> json) => WpTerm(
    taxonomy: json["taxonomy"],
    embeddable: json["embeddable"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "taxonomy": taxonomy,
    "embeddable": embeddable,
    "href": href,
  };
}

class ApiResponseMeta {
  ApiResponseMeta({
    this.outcome,
    this.status,
    this.crunchbaseTag,
    this.ampStatus,
    this.relegenceEntities,
    this.relegenceSubjects,
    this.carmotUuid,
  });

  String ?outcome;
  String ?status;
  dynamic? crunchbaseTag;
  String? ampStatus;
  List<dynamic> ?relegenceEntities;
  List<dynamic>? relegenceSubjects;
  String ?carmotUuid;

  factory ApiResponseMeta.fromJson(Map<String, dynamic> json) => ApiResponseMeta(
    outcome: json["outcome"],
    status: json["status"],
    crunchbaseTag: json["crunchbase_tag"],
    ampStatus: json["amp_status"],
    relegenceEntities: List<dynamic>.from(json["relegenceEntities"].map((x) => x)),
    relegenceSubjects: List<dynamic>.from(json["relegenceSubjects"].map((x) => x)),
    carmotUuid: json["carmot_uuid"],
  );

  Map<String, dynamic> toJson() => {
    "outcome": outcome,
    "status": status,
    "crunchbase_tag": crunchbaseTag,
    "amp_status": ampStatus,
    "relegenceEntities": List<dynamic>.from(relegenceEntities!.map((x) => x)),
    "relegenceSubjects": List<dynamic>.from(relegenceSubjects!.map((x) => x)),
    "carmot_uuid": carmotUuid,
  };
}

class Parsely {
  Parsely({
    this.version,
    this.meta,
    this.rendered,
  });

  String? version;
  ParselyMeta ?meta;
  String? rendered;

  factory Parsely.fromJson(Map<String, dynamic> json) => Parsely(
    version: json["version"],
    meta: ParselyMeta.fromJson(json["meta"]),
    rendered: json["rendered"],
  );

  Map<String, dynamic> toJson() => {
    "version": version,
    "meta": meta!.toJson(),
    "rendered": rendered,
  };
}

class ParselyMeta {
  ParselyMeta({
    this.context,
    this.type,
    this.mainEntityOfPage,
    this.headline,
    this.url,
    this.thumbnailUrl,
    this.image,
    this.dateCreated,
    this.datePublished,
    this.dateModified,
    this.articleSection,
    this.author,
    this.creator,
    this.publisher,
    this.keywords,
  });

  String ?context;
  String ?type;
  MainEntityOfPage ?mainEntityOfPage;
  String? headline;
  String? url;
  String ?thumbnailUrl;
  Images? image;
  DateTime ?dateCreated;
  DateTime? datePublished;
  DateTime ?dateModified;
  String ?articleSection;
  List<MetaAuthor>? author;
  List<String> ?creator;
  Publisher? publisher;
  List<String>? keywords;

  factory ParselyMeta.fromJson(Map<String, dynamic> json) => ParselyMeta(
    context: json["@context"],
    type: json["@type"],
    mainEntityOfPage: MainEntityOfPage.fromJson(json["mainEntityOfPage"]),
    headline: json["headline"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
    image: Images.fromJson(json["image"]),
    dateCreated: DateTime.parse(json["dateCreated"]),
    datePublished: DateTime.parse(json["datePublished"]),
    dateModified: DateTime.parse(json["dateModified"]),
    articleSection: json["articleSection"],
    author: List<MetaAuthor>.from(json["author"].map((x) => MetaAuthor.fromJson(x))),
    creator: List<String>.from(json["creator"].map((x) => x)),
    publisher: Publisher.fromJson(json["publisher"]),
    keywords: List<String>.from(json["keywords"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "@context": context,
    "@type": type,
    "mainEntityOfPage": mainEntityOfPage!.toJson(),
    "headline": headline,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
    "image": image!.toJson(),
    "dateCreated": dateCreated!.toIso8601String(),
    "datePublished": datePublished!.toIso8601String(),
    "dateModified": dateModified!.toIso8601String(),
    "articleSection": articleSection,
    "author": List<dynamic>.from(author!.map((x) => x.toJson())),
    "creator": List<dynamic>.from(creator!.map((x) => x)),
    "publisher": publisher!.toJson(),
    "keywords": List<dynamic>.from(keywords!.map((x) => x)),
  };
}

class MetaAuthor {
  MetaAuthor({
    this.type,
    this.name,
  });

  String ?type;
  String ?name;

  factory MetaAuthor.fromJson(Map<String, dynamic> json) => MetaAuthor(
    type: json["@type"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "@type": type,
    "name": name,
  };
}

class Images {
  Images({
    this.type,
    this.url,
  });

  String? type;
  String? url;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
    type: json["@type"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "@type": type,
    "url": url,
  };
}

class MainEntityOfPage {
  MainEntityOfPage({
    this.type,
    this.id,
  });

  String ?type;
  String ?id;

  factory MainEntityOfPage.fromJson(Map<String, dynamic> json) => MainEntityOfPage(
    type: json["@type"],
    id: json["@id"],
  );

  Map<String, dynamic> toJson() => {
    "@type": type,
    "@id": id,
  };
}

class Publisher {
  Publisher({
    this.type,
    this.name,
    this.logo,
  });

  String? type;
  String? name;
  Logo ?logo;

  factory Publisher.fromJson(Map<String, dynamic> json) => Publisher(
    type: json["@type"],
    name: json["name"],
    logo: Logo.fromJson(json["logo"]),
  );

  Map<String, dynamic> toJson() => {
    "@type": type,
    "name": name,
    "logo": logo!.toJson(),
  };
}

class Logo {
  Logo({
    this.type,
    this.url,
    this.width,
    this.height,
  });

  String ?type;
  String ?url;
  String ?width;
  String ?height;

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
    type: json["@type"],
    url: json["url"],
    width: json["width"],
    height: json["height"],
  );

  Map<String, dynamic> toJson() => {
    "@type": type,
    "url": url,
    "width": width,
    "height": height,
  };
}

class RapidData {
  RapidData({
    this.pt,
    this.pct,
  });

  String? pt;
  String ?pct;

  factory RapidData.fromJson(Map<String, dynamic> json) => RapidData(
    pt: json["pt"],
    pct: json["pct"],
  );

  Map<String, dynamic> toJson() => {
    "pt": pt,
    "pct": pct,
  };
}
