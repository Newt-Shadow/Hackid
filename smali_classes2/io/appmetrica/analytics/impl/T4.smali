.class public final Lio/appmetrica/analytics/impl/T4;
.super Lio/appmetrica/analytics/impl/zf;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/S4;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/O4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/appmetrica/analytics/impl/zf;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/S4;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/S4;-><init>(Lio/appmetrica/analytics/impl/O4;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/T4;->a:Lio/appmetrica/analytics/impl/S4;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(I)Lio/appmetrica/analytics/impl/h9;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/impl/h9;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lio/appmetrica/analytics/impl/nb;->a(I)Lio/appmetrica/analytics/impl/nb;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/16 v1, 0xc

    .line 15
    .line 16
    if-eq p1, v1, :cond_2

    .line 17
    .line 18
    const/16 v1, 0xe

    .line 19
    .line 20
    if-eq p1, v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x22

    .line 23
    .line 24
    if-eq p1, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/T4;->a:Lio/appmetrica/analytics/impl/S4;

    .line 28
    .line 29
    iget-object p1, p1, Lio/appmetrica/analytics/impl/S4;->c:Lio/appmetrica/analytics/impl/Fn;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/T4;->a:Lio/appmetrica/analytics/impl/S4;

    .line 36
    .line 37
    iget-object p1, p1, Lio/appmetrica/analytics/impl/S4;->b:Lio/appmetrica/analytics/impl/yi;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object p1, p0, Lio/appmetrica/analytics/impl/T4;->a:Lio/appmetrica/analytics/impl/S4;

    .line 44
    .line 45
    iget-object p1, p1, Lio/appmetrica/analytics/impl/S4;->a:Lio/appmetrica/analytics/impl/sa;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :goto_0
    new-instance p1, Lio/appmetrica/analytics/impl/g9;

    .line 51
    .line 52
    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/g9;-><init>(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    return-object p1
.end method
