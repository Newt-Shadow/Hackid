.class Lcom/yandex/metrica/impl/ob/K3$f;
.super Lcom/yandex/metrica/impl/ob/K3$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/K3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/Id;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/K3$k;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/Id;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/K3$k;->d()Lcom/yandex/metrica/impl/ob/Id;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/K3$j;->a()Lcom/yandex/metrica/impl/ob/L3;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v1, v1, Lcom/yandex/metrica/impl/ob/U3;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Id;->b()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Id;->c()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method protected c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/K3$j;->a()Lcom/yandex/metrica/impl/ob/L3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->o()Lcom/yandex/metrica/impl/ob/a9;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/a9;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method
