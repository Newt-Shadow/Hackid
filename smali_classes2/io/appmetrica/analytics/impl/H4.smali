.class public final Lio/appmetrica/analytics/impl/H4;
.super Lio/appmetrica/analytics/impl/I4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/I4;-><init>(Lio/appmetrica/analytics/impl/ri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/nb;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/nb;",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Pg;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/H9;->h:Ljava/util/EnumSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I4;->a:Lio/appmetrica/analytics/impl/ri;

    .line 12
    .line 13
    iget-object v0, v0, Lio/appmetrica/analytics/impl/ri;->s:Lio/appmetrica/analytics/impl/od;

    .line 14
    .line 15
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object v0, Lio/appmetrica/analytics/impl/H9;->b:Ljava/util/EnumSet;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    xor-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lio/appmetrica/analytics/impl/I4;->a:Lio/appmetrica/analytics/impl/ri;

    .line 29
    .line 30
    iget-object p1, p1, Lio/appmetrica/analytics/impl/ri;->c:Lio/appmetrica/analytics/impl/qh;

    .line 31
    .line 32
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
