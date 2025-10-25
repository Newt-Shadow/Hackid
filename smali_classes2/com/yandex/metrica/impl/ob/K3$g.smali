.class Lcom/yandex/metrica/impl/ob/K3$g;
.super Lcom/yandex/metrica/impl/ob/K3$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/K3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/e9;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/e9;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/K3$j;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/K3$g;->b:Lcom/yandex/metrica/impl/ob/e9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    const-string v1, "REFERRER_HANDLED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$g;->b:Lcom/yandex/metrica/impl/ob/e9;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/K3$j;->a()Lcom/yandex/metrica/impl/ob/L3;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->f()Lcom/yandex/metrica/impl/ob/c9;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/c9;->q()Lcom/yandex/metrica/impl/ob/c9;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
