.class public final Lio/appmetrica/analytics/screenshot/impl/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/S;->a:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/screenshot/impl/k;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/S;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/appmetrica/analytics/screenshot/impl/P;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-boolean v3, p1, Lio/appmetrica/analytics/screenshot/impl/k;->a:Z

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    move-object v3, p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    move-object v3, v2

    .line 37
    :goto_1
    if-eqz v3, :cond_1

    .line 38
    .line 39
    iget-object v2, v3, Lio/appmetrica/analytics/screenshot/impl/k;->b:Lio/appmetrica/analytics/screenshot/impl/l;

    .line 40
    .line 41
    :cond_1
    invoke-interface {v1, v2}, Lio/appmetrica/analytics/screenshot/impl/P;->a(Lio/appmetrica/analytics/screenshot/impl/l;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method
