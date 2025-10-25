.class Lcom/yandex/metrica/impl/ob/K3$l;
.super Lcom/yandex/metrica/impl/ob/K3$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/K3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/a9;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/K3$j;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->o()Lcom/yandex/metrica/impl/ob/a9;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/K3$l;->b:Lcom/yandex/metrica/impl/ob/a9;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$l;->b:Lcom/yandex/metrica/impl/ob/a9;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    .line 5
    const-string v2, "first_event_description_key"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
