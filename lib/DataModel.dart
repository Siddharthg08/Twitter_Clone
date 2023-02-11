class DataModel {
  int? id;
  String? date;
  String? dateGmt;
  Guid? guid;
  String? modified;
  String? modifiedGmt;
  String? slug;
  String? status;
  String? type;
  String? link;
  Guid? title;
  Content? content;
  Content? excerpt;
  int? author;
  int? featuredMedia;
  String? commentStatus;
  String? pingStatus;
  bool? sticky;
  String? template;
  String? format;
  Meta? meta;
  List<int>? categories;
  List<int>? tags;
  String? jetpackFeaturedMediaUrl;
  Parsely? parsely;
  String? shortlink;
  ParselyMeta? parselyMeta;
  RapidData? rapidData;
  bool? premiumContent;
  int? premiumCutoffPercent;
  bool? featured;
  String? subtitle;
  String? editorialContentProvider;
  List<int>? authors;
  bool? hideFeaturedImage;
  String? canonicalUrl;
  PrimaryCategory? primaryCategory;
  Links? lLinks;

  DataModel(
      {this.id,
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
        this.jetpackFeaturedMediaUrl,
        this.parsely,
        this.shortlink,
        this.parselyMeta,
        this.rapidData,
        this.premiumContent,
        this.premiumCutoffPercent,
        this.featured,
        this.subtitle,
        this.editorialContentProvider,
        this.authors,
        this.hideFeaturedImage,
        this.canonicalUrl,
        this.primaryCategory,
        this.lLinks});

  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    dateGmt = json['date_gmt'];
    guid = json['guid'] != null ? new Guid.fromJson(json['guid']) : null;
    modified = json['modified'];
    modifiedGmt = json['modified_gmt'];
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    link = json['link'];
    title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
    content =
    json['content'] != null ? new Content.fromJson(json['content']) : null;
    excerpt =
    json['excerpt'] != null ? new Content.fromJson(json['excerpt']) : null;
    author = json['author'];
    featuredMedia = json['featured_media'];
    commentStatus = json['comment_status'];
    pingStatus = json['ping_status'];
    sticky = json['sticky'];
    template = json['template'];
    format = json['format'];
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    categories = json['categories'].cast<int>();
    tags = json['tags'].cast<int>();
    jetpackFeaturedMediaUrl = json['jetpack_featured_media_url'];
    parsely =
    json['parsely'] != null ? new Parsely.fromJson(json['parsely']) : null;
    shortlink = json['shortlink'];
    parselyMeta = json['parselyMeta'] != null
        ? new ParselyMeta.fromJson(json['parselyMeta'])
        : null;
    rapidData = json['rapidData'] != null
        ? new RapidData.fromJson(json['rapidData'])
        : null;
    premiumContent = json['premiumContent'];
    premiumCutoffPercent = json['premiumCutoffPercent'];
    featured = json['featured'];
    subtitle = json['subtitle'];
    editorialContentProvider = json['editorialContentProvider'];
    authors = json['authors'].cast<int>();
    hideFeaturedImage = json['hide_featured_image'];
    canonicalUrl = json['canonical_url'];
    primaryCategory = json['primary_category'] != null
        ? new PrimaryCategory.fromJson(json['primary_category'])
        : null;
    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['date_gmt'] = this.dateGmt;
    if (this.guid != null) {
      data['guid'] = this.guid!.toJson();
    }
    data['modified'] = this.modified;
    data['modified_gmt'] = this.modifiedGmt;
    data['slug'] = this.slug;
    data['status'] = this.status;
    data['type'] = this.type;
    data['link'] = this.link;
    if (this.title != null) {
      data['title'] = this.title!.toJson();
    }
    if (this.content != null) {
      data['content'] = this.content!.toJson();
    }
    if (this.excerpt != null) {
      data['excerpt'] = this.excerpt!.toJson();
    }
    data['author'] = this.author;
    data['featured_media'] = this.featuredMedia;
    data['comment_status'] = this.commentStatus;
    data['ping_status'] = this.pingStatus;
    data['sticky'] = this.sticky;
    data['template'] = this.template;
    data['format'] = this.format;
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    data['categories'] = this.categories;
    data['tags'] = this.tags;
    data['jetpack_featured_media_url'] = this.jetpackFeaturedMediaUrl;
    if (this.parsely != null) {
      data['parsely'] = this.parsely!.toJson();
    }
    data['shortlink'] = this.shortlink;
    if (this.parselyMeta != null) {
      data['parselyMeta'] = this.parselyMeta!.toJson();
    }
    if (this.rapidData != null) {
      data['rapidData'] = this.rapidData!.toJson();
    }
    data['premiumContent'] = this.premiumContent;
    data['premiumCutoffPercent'] = this.premiumCutoffPercent;
    data['featured'] = this.featured;
    data['subtitle'] = this.subtitle;
    data['editorialContentProvider'] = this.editorialContentProvider;
    data['authors'] = this.authors;
    data['hide_featured_image'] = this.hideFeaturedImage;
    data['canonical_url'] = this.canonicalUrl;
    if (this.primaryCategory != null) {
      data['primary_category'] = this.primaryCategory!.toJson();
    }
    if (this.lLinks != null) {
      data['_links'] = this.lLinks!.toJson();
    }
    return data;
  }
}

class Guid {
  String? rendered;

  Guid({this.rendered});

  Guid.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rendered'] = this.rendered;
    return data;
  }
}

class Content {
  String? rendered;
  bool? protected;

  Content({this.rendered, this.protected});

  Content.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
    protected = json['protected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rendered'] = this.rendered;
    data['protected'] = this.protected;
    return data;
  }
}

class Meta {
  String? outcome;
  String? status;
  int? crunchbaseTag;
  String? ampStatus;
  String? carmotUuid;

  Meta(
      {this.outcome,
        this.status,
        this.crunchbaseTag,
        this.ampStatus,
        this.carmotUuid});

  Meta.fromJson(Map<String, dynamic> json) {
    outcome = json['outcome'];
    status = json['status'];
    crunchbaseTag = json['crunchbase_tag'];
    ampStatus = json['amp_status'];
    carmotUuid = json['carmot_uuid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['outcome'] = this.outcome;
    data['status'] = this.status;
    data['crunchbase_tag'] = this.crunchbaseTag;
    data['amp_status'] = this.ampStatus;
    data['carmot_uuid'] = this.carmotUuid;
    return data;
  }
}

class Parsely {
  String? version;
  String? rendered;

  Parsely({this.version, this.rendered});

  Parsely.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['version'] = this.version;
    data['rendered'] = this.rendered;
    return data;
  }
}

class ParselyMeta {
  String? parselyTitle;
  String? parselyLink;
  String? parselyType;
  String? parselyPubDate;
  String? parselyImageUrl;
  List<String>? parselyAuthor;
  String? parselySection;
  String? parselyTags;
  String? parselyMetadata;

  ParselyMeta(
      {this.parselyTitle,
        this.parselyLink,
        this.parselyType,
        this.parselyPubDate,
        this.parselyImageUrl,
        this.parselyAuthor,
        this.parselySection,
        this.parselyTags,
        this.parselyMetadata});

  ParselyMeta.fromJson(Map<String, dynamic> json) {
    parselyTitle = json['parsely-title'];
    parselyLink = json['parsely-link'];
    parselyType = json['parsely-type'];
    parselyPubDate = json['parsely-pub-date'];
    parselyImageUrl = json['parsely-image-url'];
    parselyAuthor = json['parsely-author'].cast<String>();
    parselySection = json['parsely-section'];
    parselyTags = json['parsely-tags'];
    parselyMetadata = json['parsely-metadata'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['parsely-title'] = this.parselyTitle;
    data['parsely-link'] = this.parselyLink;
    data['parsely-type'] = this.parselyType;
    data['parsely-pub-date'] = this.parselyPubDate;
    data['parsely-image-url'] = this.parselyImageUrl;
    data['parsely-author'] = this.parselyAuthor;
    data['parsely-section'] = this.parselySection;
    data['parsely-tags'] = this.parselyTags;
    data['parsely-metadata'] = this.parselyMetadata;
    return data;
  }
}

class RapidData {
  String? pt;
  String? pct;

  RapidData({this.pt, this.pct});

  RapidData.fromJson(Map<String, dynamic> json) {
    pt = json['pt'];
    pct = json['pct'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pt'] = this.pt;
    data['pct'] = this.pct;
    return data;
  }
}

class PrimaryCategory {
  int? termId;
  String? name;
  String? slug;
  int? termGroup;
  int? termTaxonomyId;
  String? taxonomy;
  String? description;
  int? parent;
  int? count;
  String? filter;

  PrimaryCategory(
      {this.termId,
        this.name,
        this.slug,
        this.termGroup,
        this.termTaxonomyId,
        this.taxonomy,
        this.description,
        this.parent,
        this.count,
        this.filter});

  PrimaryCategory.fromJson(Map<String, dynamic> json) {
    termId = json['term_id'];
    name = json['name'];
    slug = json['slug'];
    termGroup = json['term_group'];
    termTaxonomyId = json['term_taxonomy_id'];
    taxonomy = json['taxonomy'];
    description = json['description'];
    parent = json['parent'];
    count = json['count'];
    filter = json['filter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['term_id'] = this.termId;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['term_group'] = this.termGroup;
    data['term_taxonomy_id'] = this.termTaxonomyId;
    data['taxonomy'] = this.taxonomy;
    data['description'] = this.description;
    data['parent'] = this.parent;
    data['count'] = this.count;
    data['filter'] = this.filter;
    return data;
  }
}

class Links {
  List<Self>? self;
  List<Collection>? collection;
  List<About>? about;
  List<Replies>? replies;
  List<VersionHistory>? versionHistory;
  List<PredecessorVersion>? predecessorVersion;
  List<Authors>? authors;
  List<HttpsTechcrunchComEdit>? httpsTechcrunchComEdit;
  List<Author>? author;
  List<WpFeaturedmedia>? wpFeaturedmedia;
  List<WpAttachment>? wpAttachment;
  List<WpTerm>? wpTerm;
  List<Curies>? curies;

  Links(
      {this.self,
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
        this.curies});

  Links.fromJson(Map<String, dynamic> json) {
    if (json['self'] != null) {
      self = <Self>[];
      json['self'].forEach((v) {
        self!.add(new Self.fromJson(v));
      });
    }
    if (json['collection'] != null) {
      collection = <Collection>[];
      json['collection'].forEach((v) {
        collection!.add(new Collection.fromJson(v));
      });
    }
    if (json['about'] != null) {
      about = <About>[];
      json['about'].forEach((v) {
        about!.add(new About.fromJson(v));
      });
    }
    if (json['replies'] != null) {
      replies = <Replies>[];
      json['replies'].forEach((v) {
        replies!.add(new Replies.fromJson(v));
      });
    }
    if (json['version-history'] != null) {
      versionHistory = <VersionHistory>[];
      json['version-history'].forEach((v) {
        versionHistory!.add(new VersionHistory.fromJson(v));
      });
    }
    if (json['predecessor-version'] != null) {
      predecessorVersion = <PredecessorVersion>[];
      json['predecessor-version'].forEach((v) {
        predecessorVersion!.add(new PredecessorVersion.fromJson(v));
      });
    }
    if (json['authors'] != null) {
      authors = <Authors>[];
      json['authors'].forEach((v) {
        authors!.add(new Authors.fromJson(v));
      });
    }
    if (json['https://techcrunch.com/edit'] != null) {
      httpsTechcrunchComEdit = <HttpsTechcrunchComEdit>[];
      json['https://techcrunch.com/edit'].forEach((v) {
        httpsTechcrunchComEdit!.add(new HttpsTechcrunchComEdit.fromJson(v));
      });
    }
    if (json['author'] != null) {
      author = <Author>[];
      json['author'].forEach((v) {
        author!.add(new Author.fromJson(v));
      });
    }
    if (json['wp:featuredmedia'] != null) {
      wpFeaturedmedia = <WpFeaturedmedia>[];
      json['wp:featuredmedia'].forEach((v) {
        wpFeaturedmedia!.add(new WpFeaturedmedia.fromJson(v));
      });
    }
    if (json['wp:attachment'] != null) {
      wpAttachment = <WpAttachment>[];
      json['wp:attachment'].forEach((v) {
        wpAttachment!.add(new WpAttachment.fromJson(v));
      });
    }
    if (json['wp:term'] != null) {
      wpTerm = <WpTerm>[];
      json['wp:term'].forEach((v) {
        wpTerm!.add(new WpTerm.fromJson(v));
      });
    }
    if (json['curies'] != null) {
      curies = <Curies>[];
      json['curies'].forEach((v) {
        curies!.add(new Curies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.self != null) {
      data['self'] = this.self!.map((v) => v.toJson()).toList();
    }
    if (this.collection != null) {
      data['collection'] = this.collection!.map((v) => v.toJson()).toList();
    }
    if (this.about != null) {
      data['about'] = this.about!.map((v) => v.toJson()).toList();
    }
    if (this.replies != null) {
      data['replies'] = this.replies!.map((v) => v.toJson()).toList();
    }
    if (this.versionHistory != null) {
      data['version-history'] =
          this.versionHistory!.map((v) => v.toJson()).toList();
    }
    if (this.predecessorVersion != null) {
      data['predecessor-version'] =
          this.predecessorVersion!.map((v) => v.toJson()).toList();
    }
    if (this.authors != null) {
      data['authors'] = this.authors!.map((v) => v.toJson()).toList();
    }
    if (this.httpsTechcrunchComEdit != null) {
      data['https://techcrunch.com/edit'] =
          this.httpsTechcrunchComEdit!.map((v) => v.toJson()).toList();
    }
    if (this.author != null) {
      data['author'] = this.author!.map((v) => v.toJson()).toList();
    }
    if (this.wpFeaturedmedia != null) {
      data['wp:featuredmedia'] =
          this.wpFeaturedmedia!.map((v) => v.toJson()).toList();
    }
    if (this.wpAttachment != null) {
      data['wp:attachment'] =
          this.wpAttachment!.map((v) => v.toJson()).toList();
    }
    if (this.wpTerm != null) {
      data['wp:term'] = this.wpTerm!.map((v) => v.toJson()).toList();
    }
    if (this.curies != null) {
      data['curies'] = this.curies!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Self {
  String? href;

  Self({this.href});

  Self.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    return data;
  }
}

class Replies {
  bool? embeddable;
  String? href;

  Replies({this.embeddable, this.href});

  Replies.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['embeddable'] = this.embeddable;
    data['href'] = this.href;
    return data;
  }
}

class VersionHistory {
  int? count;
  String? href;

  VersionHistory({this.count, this.href});

  VersionHistory.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['href'] = this.href;
    return data;
  }
}

class PredecessorVersion {
  int? id;
  String? href;

  PredecessorVersion({this.id, this.href});

  PredecessorVersion.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['href'] = this.href;
    return data;
  }
}

class WpTerm {
  String? taxonomy;
  bool? embeddable;
  String? href;

  WpTerm({this.taxonomy, this.embeddable, this.href});

  WpTerm.fromJson(Map<String, dynamic> json) {
    taxonomy = json['taxonomy'];
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['taxonomy'] = this.taxonomy;
    data['embeddable'] = this.embeddable;
    data['href'] = this.href;
    return data;
  }
}

class Curies {
  String? name;
  String? href;
  bool? templated;

  Curies({this.name, this.href, this.templated});

  Curies.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    href = json['href'];
    templated = json['templated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['href'] = this.href;
    data['templated'] = this.templated;
    return data;
  }
}
class Collection {
  String? href;

  Collection({this.href});

  Collection.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    return data;
  }
}
class About {
  String? href;

  About({this.href});

  About.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    return data;
  }
}
class Authors {
  bool? embeddable;
  String? href;

  Authors({this.embeddable, this.href});

  Authors.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['embeddable'] = this.embeddable;
    data['href'] = this.href;
    return data;
  }
}
class HttpsTechcrunchComEdit {
  String? href;

  HttpsTechcrunchComEdit({this.href});

  HttpsTechcrunchComEdit.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    return data;
  }
}
class Author {
  bool? embeddable;
  String? href;

  Author({this.embeddable, this.href});

  Author.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['embeddable'] = this.embeddable;
    data['href'] = this.href;
    return data;
  }
}
class WpFeaturedmedia {
  bool? embeddable;
  String? href;

  WpFeaturedmedia({this.embeddable, this.href});

  WpFeaturedmedia.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['embeddable'] = this.embeddable;
    data['href'] = this.href;
    return data;
  }
}
class WpAttachment {
  String? href;

  WpAttachment({this.href});

  WpAttachment.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    return data;
  }
}