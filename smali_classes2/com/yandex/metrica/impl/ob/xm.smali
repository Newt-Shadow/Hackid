.class public Lcom/yandex/metrica/impl/ob/xm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Cm;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/wm;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/vm;

    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/F0;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/vm;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/xm;-><init>(Lcom/yandex/metrica/impl/ob/vm;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/vm;)V
    .locals 3

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/wm;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/vm;->b()[B

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/vm;->a()[B

    move-result-object p1

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-direct {v0, v2, v1, p1}, Lcom/yandex/metrica/impl/ob/wm;-><init>(Ljava/lang/String;[B[B)V

    .line 4
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/xm;-><init>(Lcom/yandex/metrica/impl/ob/wm;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/wm;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/xm;->a:Lcom/yandex/metrica/impl/ob/wm;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/Bm;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->q()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "UTF-8"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/xm;->a:Lcom/yandex/metrica/impl/ob/wm;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/wm;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/Bm;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p1

    sget-object v0, Lcom/yandex/metrica/impl/ob/Em;->d:Lcom/yandex/metrica/impl/ob/Em;

    invoke-direct {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/Bm;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Em;)V

    return-object v1
.end method

.method public a([B)[B
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [B

    if-eqz p1, :cond_0

    .line 7
    array-length v2, p1

    if-lez v2, :cond_0

    .line 8
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 9
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/xm;->a:Lcom/yandex/metrica/impl/ob/wm;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    array-length v3, p1

    invoke-virtual {v2, p1, v0, v3}, Lcom/yandex/metrica/impl/ob/wm;->a([BII)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v1
.end method
