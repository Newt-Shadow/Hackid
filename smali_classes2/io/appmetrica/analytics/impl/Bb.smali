.class public final Lio/appmetrica/analytics/impl/Bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Yn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Bb;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Wn;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Wn;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lio/appmetrica/analytics/impl/Wn;

    const-string v1, "key is null"

    invoke-direct {p1, p0, v0, v1}, Lio/appmetrica/analytics/impl/Wn;-><init>(Lio/appmetrica/analytics/impl/Yn;ZLjava/lang/String;)V

    return-object p1

    :cond_0
    const-string v1, "appmetrica"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance p1, Lio/appmetrica/analytics/impl/Wn;

    const-string v1, "key starts with appmetrica"

    invoke-direct {p1, p0, v0, v1}, Lio/appmetrica/analytics/impl/Wn;-><init>(Lio/appmetrica/analytics/impl/Yn;ZLjava/lang/String;)V

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xc8

    if-le p1, v1, :cond_2

    .line 6
    new-instance p1, Lio/appmetrica/analytics/impl/Wn;

    const-string v1, "key length more then 200 characters"

    invoke-direct {p1, p0, v0, v1}, Lio/appmetrica/analytics/impl/Wn;-><init>(Lio/appmetrica/analytics/impl/Yn;ZLjava/lang/String;)V

    return-object p1

    .line 7
    :cond_2
    new-instance p1, Lio/appmetrica/analytics/impl/Wn;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p1, p0, v0, v1}, Lio/appmetrica/analytics/impl/Wn;-><init>(Lio/appmetrica/analytics/impl/Yn;ZLjava/lang/String;)V

    return-object p1
.end method
