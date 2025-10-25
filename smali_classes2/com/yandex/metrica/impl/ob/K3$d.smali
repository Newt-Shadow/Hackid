.class Lcom/yandex/metrica/impl/ob/K3$d;
.super Lcom/yandex/metrica/impl/ob/K3$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/K3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
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
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/K3$k;->d()Lcom/yandex/metrica/impl/ob/Id;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Id;->a()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/K3$j;->a()Lcom/yandex/metrica/impl/ob/L3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/yandex/metrica/impl/ob/U3;

    .line 6
    .line 7
    return v0
.end method
