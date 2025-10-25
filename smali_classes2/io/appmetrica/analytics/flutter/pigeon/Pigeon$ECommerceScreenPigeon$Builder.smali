.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private categoriesPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private payload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->setName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;->categoriesPath:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->setCategoriesPath(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;->searchQuery:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->setSearchQuery(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;->payload:Ljava/util/Map;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->setPayload(Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public setCategoriesPath(Ljava/util/List;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;->categoriesPath:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPayload(Ljava/util/Map;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;->payload:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSearchQuery(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon$Builder;->searchQuery:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
