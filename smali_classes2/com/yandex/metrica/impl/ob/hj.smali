.class public Lcom/yandex/metrica/impl/ob/hj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/bj;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/b9;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/b9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hj;->a:Lcom/yandex/metrica/impl/ob/b9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hj;->a:Lcom/yandex/metrica/impl/ob/b9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/b9;->u()Lcom/yandex/metrica/impl/ob/W0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v2

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hj;->a:Lcom/yandex/metrica/impl/ob/b9;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/b9;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    move-object v0, v1

    .line 35
    :cond_1
    return-object v0
.end method
