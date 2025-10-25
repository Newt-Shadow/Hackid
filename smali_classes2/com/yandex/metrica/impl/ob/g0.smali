.class Lcom/yandex/metrica/impl/ob/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ak;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/i0;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/g0;->a:Lcom/yandex/metrica/impl/ob/i0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Zj;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Zj;->b()Lcom/yandex/metrica/impl/ob/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/g0;->a:Lcom/yandex/metrica/impl/ob/i0;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/i0;->a(Lcom/yandex/metrica/impl/ob/i0;)Landroid/content/ContentValues;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "cellular_connection_type"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g0;->a:Lcom/yandex/metrica/impl/ob/i0;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/i0;->a(Lcom/yandex/metrica/impl/ob/i0;)Landroid/content/ContentValues;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Zj;->a()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "call_state"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
