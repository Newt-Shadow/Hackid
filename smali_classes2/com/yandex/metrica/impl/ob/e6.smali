.class public Lcom/yandex/metrica/impl/ob/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/d6;


# instance fields
.field private final a:Ljava/lang/String;

.field protected final b:Lcom/yandex/metrica/impl/ob/c9;

.field private c:Lcom/yandex/metrica/impl/ob/Tl$a;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/c9;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/e6;->b:Lcom/yandex/metrica/impl/ob/c9;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/e6;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/Tl$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Tl$a;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/c9;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    new-instance p2, Lcom/yandex/metrica/impl/ob/Tl$a;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lcom/yandex/metrica/impl/ob/Tl$a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    move-object v0, p2

    .line 29
    :catchall_0
    :cond_0
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/e6;->c:Lcom/yandex/metrica/impl/ob/Tl$a;

    .line 30
    .line 31
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/e6;->c:Lcom/yandex/metrica/impl/ob/Tl$a;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public a(J)Lcom/yandex/metrica/impl/ob/e6;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_INIT_TIME"

    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/e6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Z)Lcom/yandex/metrica/impl/ob/e6;
    .locals 1

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/e6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Tl$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Tl$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/e6;->c:Lcom/yandex/metrica/impl/ob/Tl$a;

    .line 5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/e6;->b()V

    return-void
.end method

.method public b(J)Lcom/yandex/metrica/impl/ob/e6;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_LAST_EVENT_OFFSET"

    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/e6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/e6;->b:Lcom/yandex/metrica/impl/ob/c9;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/e6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/e6;->c:Lcom/yandex/metrica/impl/ob/Tl$a;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/c9;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c9;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/e6;->b:Lcom/yandex/metrica/impl/ob/c9;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    return-void
.end method

.method public c(J)Lcom/yandex/metrica/impl/ob/e6;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_COUNTER_ID"

    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/e6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public c()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/e6;->c:Lcom/yandex/metrica/impl/ob/Tl$a;

    const-string v1, "SESSION_INIT_TIME"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Tl$a;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Lcom/yandex/metrica/impl/ob/e6;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_ID"

    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/e6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public d()Ljava/lang/Long;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/e6;->c:Lcom/yandex/metrica/impl/ob/Tl$a;

    const-string v1, "SESSION_LAST_EVENT_OFFSET"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Tl$a;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public e(J)Lcom/yandex/metrica/impl/ob/e6;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_SLEEP_START"

    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/e6;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public e()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/e6;->c:Lcom/yandex/metrica/impl/ob/Tl$a;

    const-string v1, "SESSION_COUNTER_ID"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Tl$a;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/e6;->c:Lcom/yandex/metrica/impl/ob/Tl$a;

    .line 2
    .line 3
    const-string v1, "SESSION_ID"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Tl$a;->a(Ljava/lang/String;)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public g()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/e6;->c:Lcom/yandex/metrica/impl/ob/Tl$a;

    .line 2
    .line 3
    const-string v1, "SESSION_SLEEP_START"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Tl$a;->a(Ljava/lang/String;)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/e6;->c:Lcom/yandex/metrica/impl/ob/Tl$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/e6;->c:Lcom/yandex/metrica/impl/ob/Tl$a;

    .line 2
    .line 3
    const-string v1, "SESSION_IS_ALIVE_REPORT_NEEDED"

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return-object v0
.end method
