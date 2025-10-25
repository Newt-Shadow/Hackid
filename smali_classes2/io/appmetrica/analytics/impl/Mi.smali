.class public final Lio/appmetrica/analytics/impl/Mi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Yn;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Xn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/Xn;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Xn;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Mi;->a:Lio/appmetrica/analytics/impl/Xn;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/Revenue;)Lio/appmetrica/analytics/impl/Wn;
    .locals 6

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mi;->a:Lio/appmetrica/analytics/impl/Xn;

    const/4 v1, 0x1

    new-array v2, v1, [Lio/appmetrica/analytics/impl/Wn;

    new-instance v3, Lio/appmetrica/analytics/impl/Of;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Of;-><init>()V

    iget-object p1, p1, Lio/appmetrica/analytics/Revenue;->quantity:Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Invalid quantity value "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Lio/appmetrica/analytics/impl/Wn;

    invoke-direct {v1, v3, v4, p1}, Lio/appmetrica/analytics/impl/Wn;-><init>(Lio/appmetrica/analytics/impl/Yn;ZLjava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance p1, Lio/appmetrica/analytics/impl/Wn;

    const-string v5, ""

    invoke-direct {p1, v3, v1, v5}, Lio/appmetrica/analytics/impl/Wn;-><init>(Lio/appmetrica/analytics/impl/Yn;ZLjava/lang/String;)V

    move-object v1, p1

    :goto_1
    aput-object v1, v2, v4

    .line 7
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Xn;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Wn;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/Revenue;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Mi;->a(Lio/appmetrica/analytics/Revenue;)Lio/appmetrica/analytics/impl/Wn;

    move-result-object p1

    return-object p1
.end method
