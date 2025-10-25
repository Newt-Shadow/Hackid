.class public Lcom/yandex/metrica/impl/ob/He;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Ge;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/pe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/pe;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/pe;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/He;-><init>(Lcom/yandex/metrica/impl/ob/pe;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/pe;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/He;->a:Lcom/yandex/metrica/impl/ob/pe;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/qe;Lcom/yandex/metrica/impl/ob/Lg;)[B
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Lg;->T()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/qe;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/qe;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "preloadInfo"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p1, Lcom/yandex/metrica/impl/ob/qe;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/He;->a:Lcom/yandex/metrica/impl/ob/pe;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/pe;->a(Lcom/yandex/metrica/impl/ob/qe;Lcom/yandex/metrica/impl/ob/Lg;)[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method
