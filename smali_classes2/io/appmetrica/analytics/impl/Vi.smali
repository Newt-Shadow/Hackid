.class public final Lio/appmetrica/analytics/impl/Vi;
.super Lio/appmetrica/analytics/impl/Pg;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/rf;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->s()Lio/appmetrica/analytics/impl/rf;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/Vi;-><init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/rf;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/rf;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Pg;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Vi;->b:Lio/appmetrica/analytics/impl/rf;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/e6;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/e6;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "preloadInfo"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Vi;->b:Lio/appmetrica/analytics/impl/rf;

    .line 19
    .line 20
    invoke-static {p1}, Lio/appmetrica/analytics/impl/of;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/impl/of;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Y7;->b(Lio/appmetrica/analytics/impl/c8;)Z

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return p1
.end method
