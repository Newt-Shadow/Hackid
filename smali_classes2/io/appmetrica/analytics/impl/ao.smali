.class public final Lio/appmetrica/analytics/impl/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Zn;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/L8;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/L8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/L8;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/ao;-><init>(Lio/appmetrica/analytics/impl/L8;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/L8;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ao;->a:Lio/appmetrica/analytics/impl/L8;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/W8;Lio/appmetrica/analytics/impl/lh;)[B
    .locals 2

    .line 1
    iget-object v0, p2, Lio/appmetrica/analytics/impl/lh;->l:Lio/appmetrica/analytics/impl/kh;

    .line 2
    .line 3
    check-cast v0, Lio/appmetrica/analytics/impl/o5;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/o5;->A()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p1, Lio/appmetrica/analytics/impl/W8;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 20
    .line 21
    iget-object v1, p1, Lio/appmetrica/analytics/impl/W8;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "preloadInfo"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p1, Lio/appmetrica/analytics/impl/W8;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    :catchall_0
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ao;->a:Lio/appmetrica/analytics/impl/L8;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/impl/L8;->a(Lio/appmetrica/analytics/impl/W8;Lio/appmetrica/analytics/impl/lh;)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method
