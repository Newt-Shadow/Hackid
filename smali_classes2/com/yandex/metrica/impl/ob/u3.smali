.class public final Lcom/yandex/metrica/impl/ob/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/X;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/X<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "GlobalServiceLocator.getInstance()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->d()Lcom/yandex/metrica/impl/ob/I;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/yandex/metrica/impl/ob/v3$a;

    .line 17
    .line 18
    sget-object v2, Lcom/yandex/metrica/impl/ob/u0;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 19
    .line 20
    invoke-direct {v1, p1, v2}, Lcom/yandex/metrica/impl/ob/v3$a;-><init>(Ljava/util/Map;Lcom/yandex/metrica/impl/ob/u0;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/r0;->b(Lcom/yandex/metrica/impl/ob/v0;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method
