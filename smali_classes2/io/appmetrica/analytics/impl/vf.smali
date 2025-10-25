.class public final Lio/appmetrica/analytics/impl/vf;
.super Lio/appmetrica/analytics/impl/Ca;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ca;-><init>(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/T;)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/T;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUtf8BytesLength(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/lit8 p1, p1, 0xc

    .line 12
    .line 13
    :goto_0
    return p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/T;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/vf;->a(Lio/appmetrica/analytics/impl/T;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
